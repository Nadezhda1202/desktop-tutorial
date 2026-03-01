# Процесс установки Sherpa Orchestrator

### Распаковка клиентских файлов

На этом этапе вы распакуете архив с обновлением Sherpa Orchestrator и подготовите систему к установке.

#### Распаковка архива с обновлением

```bash
# Найдите и распакуйте архив обновления (автоматически выбирается самая свежая версия)
tar -xvzf "$(ls orchestrator_docker_update_*.tgz | sort -V | tail -n 1)"
```

<details>

<summary>💡 Комментарии к распаковке архива</summary>

**tar -xvzf "$(ls orchestrator\_docker\_update\_\*.tar.gz | sort -V | tail -n 1)"** - распаковывает архив с обновлением

* `tar -xvzf` - распаковывает архив с подробным выводом
* `ls orchestrator_docker_update_*.tar.gz` - находит все файлы архивов обновлений
* `sort -V` - сортирует версии естественно (1.0 < 1.1 < 1.10)
* `tail -n 1` - выбирает самый свежий файл

**Ожидаемый результат:** Будут распакованы необходимые файлы и директории для обновления системы.

</details>

**Ожидаемый результат:** Будут распакованы файлы обновления Sherpa Orchestrator.

#### Подготовка скриптов к выполнению

```bash
# Перейдите в директорию sh_scripts
cd sh_scripts/

# Сделайте все скрипты исполняемыми
chmod +x *.sh

# Вернитесь в корневую директорию проекта
cd ..
```

<details>

<summary>💡 Комментарии к подготовке скриптов</summary>

**cd sh\_scripts/** - переходит в директорию со скриптами установки

\*_chmod +x .sh_ - устанавливает права исполнения для всех shell-скриптов

* `chmod +x` - добавляет право исполнения
* `*.sh` - все файлы с расширением .sh

**cd ..** - возвращает в корневую директорию проекта

</details>

### Загрузка Docker-образов

```bash
# Запустите скрипт загрузки Docker-образов
sudo ./sh_scripts/load_all_docker_images.sh
```

<details>

<summary>💡 Комментарии к загрузке Docker-образов</summary>

**sudo ./sh\_scripts/load\_all\_docker\_images.sh** - запускает скрипт загрузки Docker-образов

**Что делает скрипт:**

1. Загружает все Docker-образы из скачанных .tar.gz файлов
2. Импортирует образы в локальный Docker registry
3. Проверяет успешность загрузки всех образов оркестратора

</details>

### Создание конфигурации системы

```bash
# Запустите скрипт создания настроек
sudo ./sh_scripts/create_config.sh
```

<details>

<summary>💡 Комментарии к созданию конфигурации</summary>

**sudo ./sh\_scripts/create\_config.sh** - запускает скрипт создания базовой конфигурации

**Что делает скрипт:**

1. Создает необходимые директории для конфигурации
2. Настраивает базовые параметры системы
3. Подготавливает структуру для дальнейшей настройки

</details>

### Копирование SSL-сертификатов

Для обеспечения безопасного HTTPS-соединения необходимо скопировать SSL-сертификаты:

```bash
# Создайте директорию для сертификатов (если не существует)
mkdir -p ./backend/config/certs/

# Переименуйте и скопируйте сертификат и ключ для вашего домена
# Замените пути на реальные пути к вашим сертификатам
cp /path/to/your/certificate.crt ./backend/config/certs/orchestrator.crt
cp /path/to/your/private.key ./backend/config/certs/orchestrator.key
```

<details>

<summary>💡 Комментарии к копированию SSL-сертификатов</summary>

**mkdir -p ./backend/config/certs/** - создает директорию для сертификатов

* `-p` - создает родительские директории если они не существуют

**cp /path/to/your/certificate.crt ./backend/config/certs/orchestrator.crt** - копирует и переименовывает сертификат **cp /path/to/your/private.key ./backend/config/certs/orchestrator.key** - копирует и переименовывает приватный ключ

**Требования к сертификатам:**

* Сертификат должен быть переименован в `orchestrator.crt`
* Приватный ключ должен быть переименован в `orchestrator.key`
* Имена файлов должны точно соответствовать указанным
* Формат сертификата: `.crt` или `.pem`
* Формат ключа: `.key`

</details>

**Важно:** Убедитесь что сертификаты имеют правильные права доступа:

```bash
# Установите правильные права на сертификаты
chmod 644 ./backend/config/certs/orchestrator.crt
chmod 600 ./backend/config/certs/orchestrator.key
```

**ВНИМАНИЕ**: Получить сертификаты необходимо у администратора сети либо в вашем корпоративном центре сертификации. В случае отсутствия данных сертификатов вы можете воспользоваться инструкциями по получению сертификатов Let's Encrypt или других центров сертификации.

### Настройка TLS для протокола LDAPS (опциональный пункт)

**Важно:** Если поддержка LDAPS не требуется, пропустите данный пункт.

Скопируйте сертификат rootCA с именем `ca-certificates.crt` в каталог `/opt/Sherpa Orchestrator/backend/config/certs/`

В файле `docker-compose.yml` раскомментируйте строку:

```yaml
- ./backend/config/certs/ca-certificates.crt:/etc/ssl/certs/ca-certificates.crt:ro
```

### Настройка сертификатов для IMAP-сервера (опциональный пункт)

**Важно:** Если вы не планируете использование Триггеров с запуском по электронной почте или ваш почтовый сервер не требует сертификатов, пропустите данный пункт.

Скопируйте сертификаты для imap в папку `/opt/Sherpa Orchestrator/backend/config/certs/imap_certs`

### Выбор конфигурации базы данных

Выберите подходящий файл docker-compose в зависимости от типа базы данных:

```bash
# Для MySQL (рекомендуется)
cp docker-compose-mysql.yml docker-compose.yml

# ИЛИ для PostgreSQL
cp docker-compose-pg.yml docker-compose.yml
```

<details>

<summary>💡 Комментарии к выбору конфигурации БД</summary>

**cp docker-compose-mysql.yml docker-compose.yml** - копирует конфигурацию для MySQL **cp docker-compose-pg.yml docker-compose.yml** - копирует конфигурацию для PostgreSQL

**Рекомендации:**

* MySQL рекомендуется для большинства случаев использования
* PostgreSQL подходит для специфических требований к базе данных
* Выберите один из вариантов и переименуйте файл в `docker-compose.yml`

</details>

### Настройка переменных окружения

Откройте файл `.env` и настройте основные параметры:

```bash
# Откройте файл .env в текстовом редакторе
nano .env
```

**Обязательно настройте следующие переменные:**

```bash
# IP-адрес сервера (измените на ваш реальный IP-адрес или домен)
HOST_IP=your_server_ip

# Доменное имя, которое будет использовать NGINX (обычно совпадает с вашим основным доменом)
NGINX_DOMAIN_NAME=your_domain_name

# Пароль для базы данных MySQL (если отличается от стандартного "mysql-password")
MYSQL_ROOT_PASSWORD=mysql-password

# Пароль для базы данных PostgreSQL (если отличается от стандартного "postgres-password")
POSTGRES_PASSWORD=postgres-password

# Настройки VNC
VNC_HOST=your_server_ip
VNC_PORT=5900
VNC_LOG_LEVEL=INFO
VNC_START_PORT=6080
VNC_MAX_PORTS=21
VNC_WEBSOCKIFY_WEB_ROOT=/opt/noVNC
```

<details>

<summary>💡 Комментарии к настройке переменных окружения</summary>

**nano .env** - открывает файл переменных окружения

* `.env` - файл с переменными окружения для Docker Compose

**HOST\_IP** - критически важный параметр

* Укажите реальный IP-адрес или доменное имя вашего сервера
* Это адрес, по которому будет доступна система извне
* Должен быть статическим IP или корректно настроенным доменом

**NGINX\_DOMAIN\_NAME** - доменное имя для веб-интерфейса

* Укажите домен, по которому пользователи будут открывать Sherpa Orchestrator (например, `orchestrator.example.com`)
* Обычно совпадает с доменом, указанным в SSL-сертификате

**MYSQL\_ROOT\_PASSWORD** - пароль для MySQL базы данных

* По умолчанию: mysql-password
* Измените на надежный пароль если необходимо

**POSTGRES\_PASSWORD** - пароль для PostgreSQL базы данных

* По умолчанию: postgres-password
* Измените на надежный пароль если необходимо

</details>

#### Настройка конфигурации базы данных

Откройте файл конфигурации и настройте параметры базы данных и почтового сервера:

```bash
# Откройте файл конфигурации
sudo nano backend/config/config.ini
```

**Настройте следующие параметры:**

```ini
# Настройки базы данных (для MySQL - по умолчанию)
database_engine=mysql
database_host=orchestrator-db
database_port=3306
database_user=root
database_password=mysql-password
database_dbname=orchestrator
database_dbname_archive=orchestrator_archive

# Настройки базы данных (для PostgreSQL - раскомментируйте если используете PostgreSQL)
;database_engine=pgsql
;database_host=orchestrator-pg
;database_port=5432
;database_user=postgres
;database_password=postgres-password

```

**Важно:** Если вы изменили пароли в файле `.env` (MYSQL\_ROOT\_PASSWORD или POSTGRES\_PASSWORD), убедитесь что соответствующие пароли в config.ini совпадают!

<details>

<summary>💡 Комментарии к настройке config.ini</summary>

**sudo nano backend/config/config.ini** - открывает файл конфигурации

* `sudo` - права администратора для редактирования
* `nano` - текстовый редактор
* `backend/config/config.ini` - путь к файлу конфигурации

**Параметры базы данных:**

* **database\_password** - пароль должен совпадать с MYSQL\_ROOT\_PASSWORD из .env файла
* **database\_engine** - выберите 'mysql' или 'pgsql' в зависимости от выбранного docker-compose файла
* **database\_host** - оставьте как есть (orchestrator-db или orchestrator-pg)
* **database\_port** - оставьте как есть (3306 для MySQL, 5432 для PostgreSQL)

**Важно:**

* Пароли базы данных должны точно совпадать с паролями в файле .env
* Если используете PostgreSQL - раскомментируйте соответствующие строки и закомментируйте MySQL
* Сохраните файл после внесения изменений (Ctrl+O, Enter, Ctrl+X)

</details>

### Запуск системы

После завершения всех подготовительных этапов можно запустить Sherpa Orchestrator.

```bash
# Запустите систему
sudo ./sh_scripts/run.sh
```

<details>

<summary>💡 Комментарии к запуску системы</summary>

**sudo ./sh\_scripts/run.sh** - запускает скрипт запуска системы

**Что делает скрипт:**

1. Проверяет наличие всех необходимых файлов и настроек
2. Запускает все сервисы оркестратора через Docker Compose
3. Настраивает сеть и volumes
4. Выполняет миграции базы данных при необходимости
5. Запускает сервисы в фоновом режиме

</details>

#### Проверка статуса запуска

```bash
# Проверьте статус всех запущенных контейнеров
docker compose ps

# Посмотрите логи системы
docker compose logs orchestrator

# Мониторинг логов в реальном времени
docker compose logs -f orchestrator
```

<details>

<summary>💡 Комментарии к проверке статуса</summary>

**docker compose ps** - показывает статус всех контейнеров

* Должны быть запущены: orchestrator, orchestrator-db, orchestrator-vnc-proxy

**docker compose logs orchestrator** - показывает логи основного сервиса

**docker compose logs -f orchestrator** - следит за логами в реальном времени

* `-f` - follow (следить за новыми сообщениями)

</details>

**Ожидаемый вывод после успешного запуска:**

```
NAME                    STATUS              PORTS
orchestrator            Up 2 minutes        0.0.0.0:443->443/tcp
orchestrator-db         Up 2 minutes        0.0.0.0:3306->3306/tcp
orchestrator-vnc-proxy  Up 2 minutes        0.0.0.0:5000->5000/tcp, 0.0.0.0:6080-6100->6080-6100/tcp
```

#### Проверка доступности системы

**Проверка веб-интерфейса:**

```bash
# Проверьте HTTPS доступность (замените на ваш домен/IP)
curl -I https://your-domain-or-ip

# Ожидаемый ответ: HTTP/2 200 или перенаправление
```

#### Управление системой

**Остановка системы:**

```bash
# Остановите все сервисы
docker compose down

# Остановите с удалением volumes (осторожно!)
docker compose down -v
```

**Перезапуск сервисов:**

```bash
# Перезапустите конкретный сервис
docker compose restart orchestrator

# Перезапустите все сервисы
docker compose restart
```

**Просмотр ресурсов:**

```bash
# Проверьте использование ресурсов контейнерами
docker stats
```

#### Возможные проблемы при запуске:

* **Контейнеры не запускаются**: Проверьте логи с `docker compose logs`
* **Проблемы с сетью**: Убедитесь что порты 443, 5000, 6080-6100 свободны
* **Ошибки подключения к БД**: Проверьте настройки в docker-compose.yml
* **Проблемы с доменом**: Убедитесь что HOST\_IP корректно настроен

После успешного запуска и тестирования системы установка Sherpa Orchestrator завершена. Система будет доступна по HTTPS на настроенном домене или IP-адресе.
