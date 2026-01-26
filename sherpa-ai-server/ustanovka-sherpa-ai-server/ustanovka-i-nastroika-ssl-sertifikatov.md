# Установка и настройка SSL сертификатов

Sherpa AI Server поддерживает HTTPS-соединения для обеспечения безопасной коммуникации. В этом руководстве описаны способы получения SSL-сертификатов для использования в системе.

### Рекомендации по получению сертификатов

**Важно:** Прежде чем получать сертификаты, обратитесь к администратору вашей внутренней сети или в центр сертификации вашей компании. Корпоративные сертификаты обычно предоставляются ИТ-отделом и обеспечивают лучшую интеграцию с существующей инфраструктурой безопасности.

Если корпоративные сертификаты недоступны, рассмотрите следующие варианты получения сертификатов для внешних доменов в следующих разделах.

### Получение корпоративных сертификатов

Если в вашей организации есть внутренний центр сертификации (CA), обратитесь к системному администратору для получения сертификатов. Сообщите ему домен для сертификатов и получите 2 файла: сертификат (`.crt`) и приватный ключ (`.key`). После получения установите их следующим образом:

```bash
# Создайте директории для сертификатов
mkdir -p ./oais/backend/config/certs/
mkdir -p ./embed-server/certs/

# Для основного сервера (переименуйте файлы согласно полученным)
cp your_certificate.crt ./oais/backend/config/certs/aiserver.crt
cp your_private.key ./oais/backend/config/certs/aiserver.key
```

**Важно:** Установите правильные права доступа на сертификаты:

```bash
chmod 644 ./oais/backend/config/certs/*.crt ./embed-server/certs/*.crt
chmod 600 ./oais/backend/config/certs/*.key ./embed-server/certs/*.key
```

### Получение доверенных сертификатов через Let's Encrypt

Для получения бесплатных доверенных сертификатов от Let's Encrypt используйте Certbot на машине с доступом к интернету.

#### Установка Certbot

```bash
# На Ubuntu/Debian
sudo apt update
sudo apt install certbot

# На CentOS/RHEL
sudo yum install certbot

# На macOS (с Homebrew)
brew install certbot
```

#### Получение сертификата для домена

```bash
# Получите сертификат для вашего домена (замените yourdomain.com на ваш домен)
sudo certbot certonly --standalone -d yourdomain.com

# Или для wildcard сертификата (требуется DNS challenge)
sudo certbot certonly --manual --preferred-challenges=dns -d yourdomain.com -d *.yourdomain.com
```

**Что делает эта команда:**

* `certonly` - получает только сертификаты, без автоматической настройки веб-сервера
* `--standalone` - запускает временный веб-сервер для валидации
* `-d yourdomain.com` - указывает домен для сертификата

#### Расположение полученных сертификатов

После успешного получения сертификатов они будут находиться в директории `/etc/letsencrypt/live/yourdomain.com/`:

```bash
# Проверьте содержимое директории с сертификатами
sudo ls -la /etc/letsencrypt/live/yourdomain.com/

# Вывод должен содержать:
# cert.pem (сертификат)
# chain.pem (цепочка сертификатов)
# fullchain.pem (полная цепочка)
# privkey.pem (приватный ключ)
```

#### Перенос сертификатов на целевую машину

Скопируйте сертификаты на машину, где будет установлен Sherpa AI Server:

```bash
# Создайте директорию для сертификатов на целевой машине
mkdir -p ./oais/backend/config/certs/

# Скопируйте сертификаты (замените yourdomain.com на ваш домен)
sudo scp /etc/letsencrypt/live/yourdomain.com/fullchain.pem user@target-server:./oais/backend/config/certs/aiserver.crt
sudo scp /etc/letsencrypt/live/yourdomain.com/privkey.pem user@target-server:./oais/backend/config/certs/aiserver.key

# Для сервиса эмбеддингов
mkdir -p ./embed-server/certs/
sudo scp /etc/letsencrypt/live/yourdomain.com/fullchain.pem user@target-server:./embed-server/certs/embed.crt
sudo scp /etc/letsencrypt/live/yourdomain.com/privkey.pem user@target-server:./embed-server/certs/embed.key
```

**Важно:** Убедитесь, что файлы скопированы с правильными именами:

* Для основного сервера: `aiserver.crt` и `aiserver.key`
* Для сервиса эмбеддингов: `embed.crt` и `embed.key`

### Создание самоподписных сертификатов (для тестирования)

**ВНИМАНИЕ:** Самоподписные сертификаты не являются доверенными и будут вызывать предупреждения безопасности в браузерах. Используйте этот метод только для тестирования или в изолированных сетях!

#### Создание самоподписного сертификата с помощью OpenSSL

```bash
# Создайте директорию для сертификатов
mkdir -p ./oais/backend/config/certs/

# Сгенерируйте приватный ключ
openssl genrsa -out ./oais/backend/config/certs/aiserver.key 2048

# Создайте самоподписной сертификат
openssl req -new -x509 -key ./oais/backend/config/certs/aiserver.key -out ./oais/backend/config/certs/aiserver.crt -days 365 -subj "/C=RU/ST=State/L=City/O=Organization/CN=aiserver.sherparpa.ru"

# Для сервиса эмбеддингов
mkdir -p ./embed-server/certs/
openssl genrsa -out ./embed-server/certs/embed.key 2048
openssl req -new -x509 -key ./embed-server/certs/embed.key -out ./embed-server/certs/embed.crt -days 365 -subj "/C=RU/ST=State/L=City/O=Organization/CN=embed.sherparpa.ru"
```

**Параметры команды:**

* `genrsa -out keyfile.key 2048` - генерирует 2048-битный RSA ключ
* `req -new -x509` - создает самоподписной сертификат
* `-days 365` - срок действия сертификата (1 год)
* `-subj` - информация о субъекте сертификата

#### Проверка созданных сертификатов

```bash
# Проверьте информацию о сертификате
openssl x509 -in ./oais/backend/config/certs/aiserver.crt -text -noout

# Проверьте соответствие ключа и сертификата
openssl rsa -in ./oais/backend/config/certs/aiserver.key -check
```

### Установка правильных прав доступа

После копирования или создания сертификатов установите правильные права доступа:

```bash
# Для основного сервера
chmod 644 ./oais/backend/config/certs/*.crt
chmod 600 ./oais/backend/config/certs/*.key

# Для сервиса эмбеддингов
chmod 644 ./embed-server/certs/*.crt
chmod 600 ./embed-server/certs/*.key
```

**Требования к правам:**

* `.crt` файлы: 644 (чтение для всех, запись для владельца)
* `.key` файлы: 600 (чтение и запись только для владельца)

### Рекомендации по безопасности

1. **Всегда используйте доверенные сертификаты** для production-сред
2. **Регулярно обновляйте сертификаты** до истечения срока действия
3. **Храните приватные ключи в безопасном месте** с ограниченными правами доступа
4. **Мониторьте срок действия сертификатов** и настраивайте оповещения
5. **Используйте strong cipher suites** в конфигурации сервера

После получения и настройки сертификатов любым из описанных способов вернитесь к основному руководству по установке Sherpa AI Server.

