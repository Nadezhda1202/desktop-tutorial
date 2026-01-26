# Обновление Sherpa AI Server

### 1. Скачивание файлов

Скачайте все последние файлы по соответствующим ссылкам.

### 2. Перенос файлов на сервер

После скачивания перенесите все файлы на целевой Linux сервер любым удобным способом:

#### Через SCP/SFTP

```bash
# Скопируйте файлы на сервер
scp *.tar.gz *.tgz user@target-server:/path/to/installation/directory/
```

#### Через SFTP клиент

Используйте любой SFTP клиент (FileZilla, WinSCP, Cyberduck) для копирования файлов на сервер.

#### Через сетевую папку

Если сервер доступен по SMB/CIFS, используйте проводник Windows или команду `copy`.

#### Проверка переноса

```bash
# Подключитесь к серверу
ssh user@target-server

# Перейдите в директорию с файлами
cd /path/to/installation/directory

# Проверьте наличие всех файлов
ls -la *.tar.gz *.tgz

# Проверьте размеры файлов
ls -lh *.tar.gz *.tgz
```

### 3. Остановка контейнеров

```bash
# Остановите все запущенные сервисы
docker compose down
```

**Проверка остановки:**

```bash
# Проверьте, что контейнеры остановлены
docker ps -a | grep aiserver
```

### 4. Загрузка Docker образов

```bash
# Создайте бэкап файла .env
cp .env .env.backup
# Создайте бэкап config
cp ./oais/backend/config ./oais/backend/config_backup

# Если используются кастомные сертификаты, скопируйте их в безопасное место
cp -r ./oais/backend/config/certs ./certs_backup

# Распакуйте клиентские файлы
tar -xvzf "$(ls client_files_*.tgz | sort -V | tail -n 1)"

# Сделайте скрипты исполняемыми
chmod +x sh_scripts/*.sh

# Если создавался бэкап сертификатов, восстановите их
cp -r ./certs_backup/* ./oais/backend/config/certs/

# Загрузите все Docker-образы
sudo ./sh_scripts/load_all_docker_images.sh
```

**Проверка загрузки:**

```bash
# Проверьте загруженные образы
docker images | grep aiserver
```

### 5. Проверка переменных окружения

```bash
# Откройте файл .env для проверки
nano ./.env

# Проверьте наличие обязательных переменных
grep -E "(POSTGRES_PASSWORD|X_API_TOKEN|HOST_IP)" .env

# Проверьте корректность синтаксиса
cat .env | grep -v '^#' | grep '=' | wc -l
```

### 6. Запуск контейнеров

```bash
# Запустите базовые сервисы
docker compose up -d

# Или запустите с дополнительными сервисами
# docker compose --profile whisper up -d
# docker compose --profile reranker up -d
# docker compose --profile full up -d
```

**Проверка запуска:**

```bash
# Проверьте статус контейнеров
docker compose ps

# Проверьте логи запуска
docker compose logs -f aiserver
```

Sherpa AI Server готов к работе.
