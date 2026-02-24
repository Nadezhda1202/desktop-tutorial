# Получение SSL-сертификатов (локальная установка)

Sherpa Orchestrator поддерживает HTTPS-соединения для обеспечения безопасной коммуникации. В этом руководстве описаны способы получения SSL-сертификатов для использования в системе.

### Рекомендации по получению сертификатов

**Важно:** Прежде чем получать сертификаты, обратитесь к администратору вашей внутренней сети или в центр сертификации вашей компании. Корпоративные сертификаты обычно предоставляются ИТ-отделом и обеспечивают лучшую интеграцию с существующей инфраструктурой безопасности.

Если корпоративные сертификаты недоступны, рассмотрите следующие варианты получения сертификатов для внешних доменов в следующих разделах.

### Получение корпоративных сертификатов

Если в вашей организации есть внутренний центр сертификации (CA), обратитесь к системному администратору для получения сертификатов. Сообщите ему домен для сертификатов и получите 2 файла: сертификат (`.crt`) и приватный ключ (`.key`). После получения установите их следующим образом:

```bash
# Создайте директорию для сертификатов
sudo mkdir -p /opt/SherpaOrchestrator/backend/config/certs/

# Скопируйте сертификаты (переименуйте файлы согласно полученным)
sudo cp your_certificate.crt /opt/SherpaOrchestrator/backend/config/certs/orchestrator.crt
sudo cp your_private.key /opt/SherpaOrchestrator/backend/config/certs/orchestrator.key

# Установите правильные права доступа
sudo chmod 644 /opt/SherpaOrchestrator/backend/config/certs/orchestrator.crt
sudo chmod 600 /opt/SherpaOrchestrator/backend/config/certs/orchestrator.key
```

<details>

<summary>💡 Комментарии к получению корпоративных сертификатов</summary>

**sudo mkdir -p /opt/SherpaOrchestrator/backend/config/certs/** - создает директорию для сертификатов

* `-p` - создает родительские директории при необходимости

**sudo cp your\_certificate.crt /opt/SherpaOrchestrator/backend/config/certs/orchestrator.crt** - копирует сертификат **sudo cp your\_private.key /opt/SherpaOrchestrator/backend/config/certs/orchestrator.key** - копирует приватный ключ

**chmod 644** - устанавливает права чтения для сертификатов (владелец может писать, все могут читать) **chmod 600** - устанавливает права только для владельца на приватные ключи

</details>

### Получение доверенных сертификатов через Let's Encrypt

Для получения бесплатных доверенных сертификатов от Let's Encrypt используйте Certbot на машине с доступом к интернету.

#### Установка Certbot

```bash
# На Debian/Ubuntu
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

#### Перенос сертификатов на сервер Sherpa

Скопируйте сертификаты на сервер, где установлен Sherpa Orchestrator:

```bash
# Создайте директорию для сертификатов на сервере Sherpa
sudo mkdir -p /opt/SherpaOrchestrator/backend/config/certs/

# Скопируйте сертификаты (замените yourdomain.com на ваш домен)
sudo scp /etc/letsencrypt/live/yourdomain.com/fullchain.pem user@target-server:/opt/SherpaOrchestrator/backend/config/certs/orchestrator.crt
sudo scp /etc/letsencrypt/live/yourdomain.com/privkey.pem user@target-server:/opt/SherpaOrchestrator/backend/config/certs/orchestrator.key

# Установите правильные права доступа
sudo chmod 644 /opt/SherpaOrchestrator/backend/config/certs/orchestrator.crt
sudo chmod 600 /opt/SherpaOrchestrator/backend/config/certs/orchestrator.key
```

<details>

<summary>💡 Комментарии к переносу сертификатов</summary>

**sudo scp /etc/letsencrypt/live/yourdomain.com/fullchain.pem user@target-server:/opt/SherpaOrchestrator/backend/config/certs/orchestrator.crt** - копирует сертификат

* `scp` - secure copy
* `fullchain.pem` - полный сертификат с цепочкой
* Переименовывается в `orchestrator.crt`

**sudo scp /etc/letsencrypt/live/yourdomain.com/privkey.pem user@target-server:/opt/SherpaOrchestrator/backend/config/certs/orchestrator.key** - копирует приватный ключ

* `privkey.pem` - приватный ключ
* Переименовывается в `orchestrator.key`

</details>

### Создание самоподписных сертификатов (для тестирования)

**ВНИМАНИЕ:** Самоподписные сертификаты не являются доверенными и будут вызывать предупреждения безопасности в браузерах. Используйте этот метод только для тестирования или в изолированных сетях!

#### Создание самоподписного сертификата с помощью OpenSSL

```bash
# Создайте директорию для сертификатов
sudo mkdir -p /opt/SherpaOrchestrator/backend/config/certs/

# Сгенерируйте приватный ключ
sudo openssl genrsa -out /opt/SherpaOrchestrator/backend/config/certs/orchestrator.key 2048

# Создайте самоподписной сертификат
sudo openssl req -new -x509 -key /opt/SherpaOrchestrator/backend/config/certs/orchestrator.key -out /opt/SherpaOrchestrator/backend/config/certs/orchestrator.crt -days 365 -subj "/C=RU/ST=State/L=City/O=Organization/CN=orchestrator.yourdomain.com"

# Установите правильные права доступа
sudo chmod 644 /opt/SherpaOrchestrator/backend/config/certs/orchestrator.crt
sudo chmod 600 /opt/SherpaOrchestrator/backend/config/certs/orchestrator.key
```

<details>

<summary>💡 Комментарии к созданию самоподписных сертификатов</summary>

**sudo mkdir -p /opt/SherpaOrchestrator/backend/config/certs/** - создает директорию для сертификатов

**sudo openssl genrsa -out /opt/SherpaOrchestrator/backend/config/certs/orchestrator.key 2048** - генерирует приватный ключ

* `genrsa` - генерация RSA ключа
* `-out file.key` - выходной файл
* `2048` - длина ключа в битах

**sudo openssl req -new -x509 -key keyfile.key -out certfile.crt -days 365 -subj "/C=RU/..."** - создает самоподписной сертификат

* `req -new -x509` - создает новый самоподписной сертификат
* `-key keyfile.key` - использует указанный приватный ключ
* `-out certfile.crt` - выходной файл сертификата
* `-days 365` - срок действия (1 год)
* `-subj "/C=RU/ST=State/L=City/O=Organization/CN=domain.com"` - информация о субъекте

**chmod 644** и **chmod 600** - устанавливают правильные права доступа

</details>

#### Проверка созданных сертификатов

```bash
# Проверьте информацию о сертификате
sudo openssl x509 -in /opt/SherpaOrchestrator/backend/config/certs/orchestrator.crt -text -noout

# Проверьте соответствие ключа и сертификата
sudo openssl rsa -in /opt/SherpaOrchestrator/backend/config/certs/orchestrator.key -check

# Проверьте срок действия сертификата
sudo openssl x509 -in /opt/SherpaOrchestrator/backend/config/certs/orchestrator.crt -enddate -noout
```

<details>

<summary>💡 Комментарии к проверке сертификатов</summary>

**sudo openssl x509 -in /opt/SherpaOrchestrator/backend/config/certs/orchestrator.crt -text -noout** - показывает информацию о сертификате

* `x509` - команда для работы с X.509 сертификатами
* `-in file.crt` - входной файл сертификата
* `-text` - выводит текстовую информацию
* `-noout` - не выводит закодированный сертификат

**sudo openssl rsa -in /opt/SherpaOrchestrator/backend/config/certs/orchestrator.key -check** - проверяет приватный ключ

* `rsa` - команда для работы с RSA ключами
* `-in file.key` - входной файл ключа
* `-check` - проверяет корректность ключа

**sudo openssl x509 -in /opt/SherpaOrchestrator/backend/config/certs/orchestrator.crt -enddate -noout** - показывает дату окончания действия сертификата

</details>

### Настройка TLS для протокола LDAPS (опциональный пункт)

**Важно:** Если поддержка LDAPS не требуется, пропустите данный пункт.

Скопируйте сертификат rootCA с именем `ca-certificates.crt` в каталог `/opt/SherpaOrchestrator/backend/config/certs/`

### Настройка сертификатов для IMAP-сервера (опциональный пункт)

**Важно:** Если вы не планируете использование Триггеров с запуском по электронной почте или ваш почтовый сервер не требует сертификатов, пропустите данный пункт.

Скопируйте сертификаты для imap в папку `/opt/SherpaOrchestrator/backend/config/certs/imap_certs`

### Активация сертификатов

После установки сертификатов необходимо перезапустить Nginx:

```bash
# Проверьте синтаксис конфигурации
sudo nginx -t

# Перезапустите Nginx
sudo systemctl restart nginx

# Проверьте статус
sudo systemctl status nginx
```

### Проверка HTTPS соединения

```bash
# Проверьте HTTPS доступность
curl -I https://your-domain-or-ip

# Проверьте сертификат
openssl s_client -connect your-domain-or-ip:443 -servername your-domain-or-ip < /dev/null 2>/dev/null | openssl x509 -noout -dates
```

### Автоматическое обновление сертификатов Let's Encrypt

Для автоматического обновления сертификатов Let's Encrypt настройте cron:

```bash
# Откройте crontab
sudo crontab -e

# Добавьте задачу обновления (выполняется 2 раза в день в случайное время)
0 */12 * * * /usr/bin/certbot renew --quiet && systemctl reload nginx
```

<details>

<summary>💡 Комментарии к автоматическому обновлению</summary>

**certbot renew --quiet** - обновляет все сертификаты, срок действия которых истекает менее чем через 30 дней

* `--quiet` - suppresses output except for errors

**systemctl reload nginx** - перезагружает конфигурацию Nginx после обновления сертификатов

Задача выполняется 2 раза в сутки для обеспечения своевременного обновления.

</details>

### Рекомендации по безопасности

1. **Всегда используйте доверенные сертификаты** для production-сред
2. **Регулярно обновляйте сертификаты** до истечения срока действия
3. **Храните приватные ключи в безопасном месте** с ограниченными правами доступа
4. **Мониторьте срок действия сертификатов** и настраивайте оповещения
5. **Используйте strong cipher suites** в конфигурации сервера
6. **Настраивайте HSTS** (HTTP Strict Transport Security) для принудительного HTTPS

### Устранение неполадок

#### Проблема: "ssl certificate verification failed"

**Решение:**

* Проверьте корректность установки сертификатов
* Убедитесь в правильности прав доступа к файлам сертификатов
* Проверьте путь к сертификатам в конфигурации Nginx

#### Проблема: "chain incomplete" или "unable to get local issuer certificate"

**Решение:**

* Используйте `fullchain.pem` вместо `cert.pem` для сертификата
* Убедитесь, что файл цепочки сертификатов присутствует и корректен

#### Проблема: "ssl handshake failure"

**Решение:**

* Проверьте совместимость cipher suites
* Убедитесь, что приватный ключ соответствует сертификату
* Проверьте логи Nginx на наличие ошибок

После получения и настройки сертификатов любым из описанных способов система Sherpa Orchestrator будет доступна по HTTPS.
