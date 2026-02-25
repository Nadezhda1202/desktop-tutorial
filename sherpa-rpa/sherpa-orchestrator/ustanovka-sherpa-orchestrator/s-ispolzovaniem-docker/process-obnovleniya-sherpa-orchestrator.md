# Процесс обновления Sherpa Orchestrator

### 1. Скачивание файлов

Скачайте все последние файлы обновления Sherpa Orchestrator по ссылкам в подготовке

### 2. Перенос файлов на сервер

После скачивания перенесите все файлы на целевой Linux сервер любым удобным способом:

#### Через SCP/SFTP

```bash
# Скопируйте файлы на сервер
scp *.tar.gz user@target-server:/path/to/installation/directory/
```

<details>

<summary>💡 Комментарии к переносу через SCP/SFTP</summary>

\*_scp .tar.gz user@target-server:/path/to/installation/directory/_ - копирует файлы на удаленный сервер

* `scp` - secure copy (безопасное копирование)
* `*.tar.gz` - шаблон для выбора файлов обновления
* `user@target-server` - учетные данные для подключения
* `/path/to/installation/directory/` - путь назначения на сервере

</details>

#### Через SFTP клиент

Используйте любой SFTP клиент (FileZilla, WinSCP, Cyberduck) для копирования файлов на сервер.

#### Через сетевую папку

Если сервер доступен по SMB/CIFS, используйте проводник Windows или команду `copy`.

#### Проверка переноса

```bash
# Подключитесь к серверу
ssh user@target-server

# Перейдите в директорию с файлами (обычно это opt/SherpaOrchestrator)
cd /path/to/installation/directory

# Проверьте наличие всех файлов
ls -la *.tar.gz

# Проверьте размеры файлов
ls -lh *.tar.gz
```

<details>

<summary>💡 Комментарии к проверке переноса</summary>

**ssh user@target-server** - подключается к удаленному серверу по SSH

* `ssh` - secure shell
* `user@target-server` - учетные данные для подключения

**cd /path/to/installation/directory** - переходит в директорию с файлами

\*_ls -la .tar.gz_ - показывает подробную информацию о скачанных файлах

* `-l` - длинный формат
* `-a` - показывает скрытые файлы

\*_ls -lh .tar.gz_ - показывает размеры файлов в человеко-читаемом формате

* `-h` - human readable (Кб, Мб, Гб)

</details>

### 3. Остановка контейнеров

```bash
# Остановите все запущенные сервисы
docker compose down
```

<details>

<summary>💡 Комментарии к остановке контейнеров</summary>

**docker compose down** - останавливает все сервисы Docker Compose

* Останавливает и удаляет контейнеры, сети
* Сохраняет volumes и images

**Проверка остановки:** **docker ps -a | grep orchestrator** - проверяет статус контейнеров

* `docker ps -a` - показывает все контейнеры (включая остановленные)
* `| grep orchestrator` - фильтрует по имени orchestrator

</details>

### 4. Загрузка Docker образов

```bash
# Создайте бэкап файла .env (если он есть)
cp .env .env.backup

# Создайте бэкап конфигурации
cp -r ./backend/config ./backend/config_backup

# Если используются кастомные сертификаты, скопируйте их в безопасное место
cp -r ./backend/config/certs ./certs_backup

# Распакуйте файлы обновления
tar -xvzf "$(ls orchestrator_docker_update_*.tgz | sort -V | tail -n 1)"

# Скопируйте дефолтную конфигурацию nginx (если ее нет)
cp -r ./backend/config/default/nginx ./backend/config/nginx

# Сделайте скрипты исполняемыми
chmod +x sh_scripts/*.sh

# Если создавался бэкап сертификатов, восстановите их
cp -r ./certs_backup/* ./backend/config/certs/

# Загрузите все Docker-образы
sudo ./sh_scripts/load_all_docker_images.sh
```

<details>

<summary>💡 Комментарии к загрузке Docker образов</summary>

**Создание резервных копий:**

* `cp .env .env.backup` - бэкап файла конфигурации
* `cp -r ./backend/config ./backend/config_backup` - бэкап директории config
* `cp -r ./backend/config/certs ./certs_backup` - бэкап SSL сертификатов

**Распаковка и подготовка:**

* `tar -xvzf "$(ls orchestrator_docker_update_*.tgz | sort -V | tail -n 1)"` - распаковывает свежие файлы обновления
* `chmod +x sh_scripts/*.sh` - делает скрипты исполняемыми
* `cp -r ./certs_backup/* ./backend/config/certs/` - восстанавливает сертификаты

**sudo ./sh\_scripts/load\_all\_docker\_images.sh** - загружает все Docker-образы

**Проверка загрузки:** **docker images | grep orchestrator** - показывает загруженные образы orchestrator

</details>

### 5. Выбор конфигурации БД и проверка переменных окружения

```bash
# Обновите конфигурацию docker-compose в зависимости от используемой БД

# Для MySQL (рекомендуется)
cp build/docker/docker-compose-mysql.yml docker-compose.yml

# ИЛИ для PostgreSQL
cp build/docker/docker-compose-pg.yml docker-compose.yml
```

<details>

<summary>💡 Комментарии к выбору конфигурации БД</summary>

**cp build/docker/docker-compose-mysql.yml docker-compose.yml** - выбирает конфигурацию для MySQL\
**cp build/docker/docker-compose-pg.yml docker-compose.yml** - выбирает конфигурацию для PostgreSQL

* В рабочем каталоге должен быть итоговый файл `docker-compose.yml`
* Выберите только один вариант в зависимости от используемой базы данных

</details>

```bash
# Откройте файл .env для проверки
nano ./.env

# Проверьте наличие обязательных переменных
grep -E "(HOST_IP|MYSQL_ROOT_PASSWORD|POSTGRES_PASSWORD|NGINX_DOMAIN_NAME)" .env

# Проверьте корректность синтаксиса
cat .env | grep -v '^#' | grep '=' | wc -l
```

<details>

<summary>💡 Комментарии к проверке переменных окружения</summary>

**nano ./.env** - открывает файл конфигурации в редакторе

**grep -E "(HOST\_IP|MYSQL\_ROOT\_PASSWORD|POSTGRES\_PASSWORD|NGINX\_DOMAIN\_NAME)" .env** - проверяет наличие ключевых переменных

* `-E` - расширенные регулярные выражения
* Перечисляет обязательные переменные через |

**cat .env | grep -v '^#' | grep '=' | wc -l** - подсчитывает количество переменных

* `cat .env` - выводит содержимое файла
* `grep -v '^#'` - исключает комментарии
* `grep '='` - оставляет только строки с переменными
* `wc -l` - подсчитывает количество строк

</details>

### 6. Запуск контейнеров

```bash
# Запустите все сервисы
docker compose up -d
```

<details>

<summary>💡 Комментарии к запуску контейнеров</summary>

**docker compose up -d** - запускает все сервисы в фоновом режиме

* `-d` - detached mode (фоновый режим)

**Проверка запуска:**

* `docker compose ps` - показывает статус всех контейнеров
* `docker compose logs -f orchestrator` - показывает логи запуска в реальном времени

</details>

После успешного обновления система Sherpa Orchestrator готова к работе.
