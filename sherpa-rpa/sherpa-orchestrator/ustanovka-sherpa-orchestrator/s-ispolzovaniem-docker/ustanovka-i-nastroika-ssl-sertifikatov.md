# Установка и настройка SSL сертификатов

Sherpa Orchestrator поддерживает HTTPS-соединения для обеспечения безопасной коммуникации. В этом руководстве описаны способы получения SSL-сертификатов для использования в системе.

### Рекомендации по получению сертификатов

**Важно:** Прежде чем получать сертификаты, обратитесь к администратору вашей внутренней сети или в центр сертификации вашей компании. Корпоративные сертификаты обычно предоставляются ИТ-отделом и обеспечивают лучшую интеграцию с существующей инфраструктурой безопасности.

Если корпоративные сертификаты недоступны, рассмотрите следующие варианты получения сертификатов для внешних доменов в следующих разделах.

### Получение корпоративных сертификатов

Если в вашей организации есть внутренний центр сертификации (CA), обратитесь к системному администратору для получения сертификатов. Сообщите ему домен для сертификатов и получите 2 файла: сертификат (`.crt`) и приватный ключ (`.key`). После получения установите их следующим образом:

```bash
# Создайте директорию для сертификатов
mkdir -p ./backend/config/certs/

# Скопируйте сертификаты (переименуйте файлы согласно полученным)
cp your_certificate.crt ./backend/config/certs/orchestrator.crt
cp your_private.key ./backend/config/certs/orchestrator.key
```

<details>

<summary>💡 Комментарии к получению корпоративных сертификатов</summary>

**mkdir -p ./backend/config/certs/** - создает директорию для сертификатов

* `-p` - создает родительские директории при необходимости

**cp your\_certificate.crt ./backend/config/certs/orchestrator.crt** - копирует сертификат **cp your\_private.key ./backend/config/certs/orchestrator.key** - копирует приватный ключ

**chmod 644 ./backend/config/certs/\*.crt** - устанавливает права чтения для сертификатов **chmod 600 ./backend/config/certs/\*.key** - устанавливает права только для владельца на ключи

</details>

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

<details>

<summary>💡 Комментарии к установке Certbot</summary>

**Ubuntu/Debian:**

* `sudo apt update` - обновляет список пакетов
* `sudo apt install certbot` - устанавливает Certbot

**CentOS/RHEL:**

* `sudo yum install certbot` - устанавливает Certbot через yum

**macOS:**

* `brew install certbot` - устанавливает Certbot через Homebrew

</details>

#### Получение сертификата для домена

```bash
# Получите сертификат для вашего домена (замените yourdomain.com на ваш домен)
sudo certbot certonly --standalone -d yourdomain.com

# Или для wildcard сертификата (требуется DNS challenge)
sudo certbot certonly --manual --preferred-challenges=dns -d yourdomain.com -d *.yourdomain.com
```

<details>

<summary>💡 Комментарии к получению сертификата</summary>

**sudo certbot certonly --standalone -d yourdomain.com** - получает сертификат для домена

* `certonly` - получает только сертификаты, без настройки веб-сервера
* `--standalone` - запускает временный веб-сервер для HTTP-01 challenge
* `-d yourdomain.com` - указывает домен для сертификата

\*_sudo certbot certonly --manual --preferred-challenges=dns -d yourdomain.com -d .yourdomain.com_ - получает wildcard сертификат

* `--manual` - ручной режим (требует DNS-записи)
* `--preferred-challenges=dns` - использует DNS-01 challenge
* `-d *.yourdomain.com` - wildcard домен

</details>

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

<details>

<summary>💡 Комментарии к расположению сертификатов</summary>

**sudo ls -la /etc/letsencrypt/live/yourdomain.com/** - показывает содержимое директории с сертификатами

* `/etc/letsencrypt/live/` - стандартная директория Let's Encrypt
* `yourdomain.com/` - поддиректория для домена

**Файлы сертификатов:**

* `cert.pem` - сертификат домена
* `chain.pem` - цепочка промежуточных сертификатов
* `fullchain.pem` - полный сертификат с цепочкой
* `privkey.pem` - приватный ключ

</details>

#### Перенос сертификатов на целевую машину

Скопируйте сертификаты на машину, где будет установлен Sherpa Orchestrator:

```bash
# Создайте директорию для сертификатов на целевой машине
mkdir -p ./backend/config/certs/

# Скопируйте сертификаты (замените yourdomain.com на ваш домен)
sudo scp /etc/letsencrypt/live/yourdomain.com/fullchain.pem user@target-server:./backend/config/certs/orchestrator.crt
sudo scp /etc/letsencrypt/live/yourdomain.com/privkey.pem user@target-server:./backend/config/certs/orchestrator.key
```

<details>

<summary>💡 Комментарии к переносу сертификатов</summary>

**mkdir -p ./backend/config/certs/** - создает директорию для сертификатов

**sudo scp /etc/letsencrypt/live/yourdomain.com/fullchain.pem user@target-server:./backend/config/certs/orchestrator.crt** - копирует сертификат

* `scp` - secure copy
* `fullchain.pem` - полный сертификат с цепочкой
* Переименовывается в `orchestrator.crt`

**sudo scp /etc/letsencrypt/live/yourdomain.com/privkey.pem user@target-server:./backend/config/certs/orchestrator.key** - копирует приватный ключ

* `privkey.pem` - приватный ключ
* Переименовывается в `orchestrator.key`

</details>

### Создание самоподписных сертификатов (для тестирования)

**ВНИМАНИЕ:** Самоподписные сертификаты не являются доверенными и будут вызывать предупреждения безопасности в браузерах. Используйте этот метод только для тестирования или в изолированных сетях!

#### Создание самоподписного сертификата с помощью OpenSSL

```bash
# Создайте директорию для сертификатов
mkdir -p ./backend/config/certs/

# Сгенерируйте приватный ключ
openssl genrsa -out ./backend/config/certs/orchestrator.key 2048

# Создайте самоподписной сертификат
openssl req -new -x509 -key ./backend/config/certs/orchestrator.key -out ./backend/config/certs/orchestrator.crt -days 365 -subj "/C=RU/ST=State/L=City/O=Organization/CN=orchestrator.sherparpa.ru"
```

<details>

<summary>💡 Комментарии к созданию самоподписных сертификатов</summary>

**mkdir -p ./backend/config/certs/** - создает директорию для сертификатов

**openssl genrsa -out ./backend/config/certs/orchestrator.key 2048** - генерирует приватный ключ

* `genrsa` - генерация RSA ключа
* `-out file.key` - выходной файл
* `2048` - длина ключа в битах

**openssl req -new -x509 -key keyfile.key -out certfile.crt -days 365 -subj "/C=RU/..."** - создает самоподписной сертификат

* `req -new -x509` - создает новый самоподписной сертификат
* `-key keyfile.key` - использует указанный приватный ключ
* `-out certfile.crt` - выходной файл сертификата
* `-days 365` - срок действия (1 год)
* `-subj "/C=RU/ST=State/L=City/O=Organization/CN=domain.com"` - информация о субъекте

</details>

#### Проверка созданных сертификатов

```bash
# Проверьте информацию о сертификате
openssl x509 -in ./backend/config/certs/orchestrator.crt -text -noout

# Проверьте соответствие ключа и сертификата
openssl rsa -in ./backend/config/certs/orchestrator.key -check
```

<details>

<summary>💡 Комментарии к проверке сертификатов</summary>

**openssl x509 -in ./backend/config/certs/orchestrator.crt -text -noout** - показывает информацию о сертификате

* `x509` - команда для работы с X.509 сертификатами
* `-in file.crt` - входной файл сертификата
* `-text` - выводит текстовую информацию
* `-noout` - не выводит закодированный сертификат

**openssl rsa -in ./backend/config/certs/orchestrator.key -check** - проверяет приватный ключ

* `rsa` - команда для работы с RSA ключами
* `-in file.key` - входной файл ключа
* `-check` - проверяет корректность ключа

</details>

### Установка правильных прав доступа

После копирования или создания сертификатов установите правильные права доступа:

```bash
# Установите права на сертификаты
chmod 644 ./backend/config/certs/*.crt
chmod 600 ./backend/config/certs/*.key
```

<details>

<summary>💡 Комментарии к установке прав доступа</summary>

**chmod 644 ./backend/config/certs/\*.crt** - устанавливает права на сертификаты

* `644` - rw-r--r-- (чтение для всех, запись только для владельца)
* `*.crt` - все файлы сертификатов

**chmod 600 ./backend/config/certs/\*.key** - устанавливает права на приватные ключи

* `600` - rw------- (чтение и запись только для владельца)
* `*.key` - все файлы приватных ключей

**Требования к правам:**

* `.crt` файлы: 644 (чтение для всех, запись для владельца)
* `.key` файлы: 600 (чтение и запись только для владельца)

</details>

### Рекомендации по безопасности

1. **Всегда используйте доверенные сертификаты** для production-сред
2. **Регулярно обновляйте сертификаты** до истечения срока действия
3. **Храните приватные ключи в безопасном месте** с ограниченными правами доступа
4. **Мониторьте срок действия сертификатов** и настраивайте оповещения
5. **Используйте strong cipher suites** в конфигурации сервера

После получения и настройки сертификатов любым из описанных способов вернитесь к основному руководству по установке Sherpa Orchestrator.
