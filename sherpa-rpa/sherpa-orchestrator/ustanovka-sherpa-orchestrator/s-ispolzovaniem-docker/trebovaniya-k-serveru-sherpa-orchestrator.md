# Требования к серверу Sherpa Orchestrator

### Системные требования

* **ОС**: рекомендуется Ubuntu 20.04+, однако с другими дистрибутивами Linux как правило не возникает никаких проблем.
* **CPU**: x86\_64, минимум 2 ядра
* **RAM**: 4 ГБ минимум, 8 ГБ+ рекомендуется
* **Диск**: 20 ГБ+ свободного места
* **Сеть**: Стабильное интернет-соединение
* **Доступ**: sudo права для установки

**Важно:**

* Установка занимает время из-за скачивания Docker-образов
* После установки интернет не требуется для работы

### Подготовка сервера

#### Проверка ресурсов

Далее используется синтаксис Ubuntu, если команда не подходит, вам необходимо изменить синтаксис в зависимости от вашей ОС

```bash
# Проверьте системные ресурсы
df -h          # Дисковое пространство
free -h        # Оперативная память
lscpu | grep -E "^CPU\(s\)|Model name"  # Информация о процессоре
```

<details>

<summary>💡 Комментарии к проверке ресурсов</summary>

**df -h** - показывает использование дискового пространства в человеко-читаемом формате **free -h** - показывает информацию об оперативной памяти **lscpu** - показывает информацию о процессоре

**Рекомендуемые минимальные значения:**

* Диск: минимум 20 ГБ свободного места
* RAM: минимум 4 ГБ
* CPU: минимум 2 ядра

</details>

#### Установка базовых инструментов

```bash
# Обновите систему и установите инструменты
sudo apt update
sudo apt install -y ca-certificates curl tar
```

<details>

<summary>💡 Комментарии к установке базовых инструментов</summary>

**sudo apt update** - обновляет список доступных пакетов из репозиториев **sudo apt install -y ca-certificates curl tar** - устанавливает необходимые инструменты:

* `ca-certificates` - корневые сертификаты для проверки SSL
* `curl` - инструмент для скачивания файлов
* `tar` - утилита для работы с архивами
* `-y` - автоматическое подтверждение установки

</details>

### Установка Docker (обязательно)

Sherpa Orchestrator работает исключительно в Docker-контейнерах.

#### Установка Docker CE

```bash
# Добавьте официальный GPG-ключ Docker
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Добавьте репозиторий Docker
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Установите Docker
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

<details>

<summary>💡 Комментарии к установке Docker</summary>

**Добавление GPG-ключа:**

* `sudo install -m 0755 -d /etc/apt/keyrings` - создает директорию для ключей с правильными правами
* `sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc` - скачивает GPG-ключ Docker
* `sudo chmod a+r /etc/apt/keyrings/docker.asc` - устанавливает права чтения для всех

**Добавление репозитория:**

* `echo "deb [...]` - добавляет официальный репозиторий Docker в список источников APT
* Использует переменные окружения для определения архитектуры и версии Ubuntu

**Установка пакетов:**

* `sudo apt update` - обновляет список пакетов после добавления нового репозитория
* `sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin` - устанавливает Docker и компоненты

</details>

#### Настройка и проверка

```bash
# Добавьте пользователя в группу docker (опционально)
sudo usermod -aG docker $USER

# Запустите и включите Docker
sudo systemctl start docker
sudo systemctl enable docker

# Проверьте установку
docker --version
docker compose version
```

<details>

<summary>💡 Комментарии к настройке Docker</summary>

**sudo usermod -aG docker $USER** - добавляет текущего пользователя в группу docker

* `-a` - append (добавляет к существующим группам)
* `-G docker` - добавляет в группу docker
* `$USER` - переменная с именем текущего пользователя

**sudo systemctl start docker** - запускает Docker daemon **sudo systemctl enable docker** - включает автозапуск Docker при загрузке системы

**docker --version** - показывает версию Docker **docker compose version** - показывает версию Docker Compose

**Ожидаемый результат:** Docker успешно запускает тестовый контейнер.

</details>

### Проверка портов

Sherpa Orchestrator использует следующие порты:

* **443** - HTTPS веб-интерфейс (обязательно)
* **5000** - API VNC прокси
* **6080-6100** - диапазон портов для VNC подключений

#### Проверка доступности портов

```bash
# Проверьте, заняты ли необходимые порты
sudo netstat -tlnp | grep -E ":443 |:5000 |:608[0-9] |:609[0-9] |:6100 " || echo "Порты свободны"
```

<details>

<summary>💡 Комментарии к проверке портов</summary>

**sudo netstat -tlnp** - показывает все прослушиваемые TCP порты и процессы

* `-t` - TCP порты
* `-l` - только прослушиваемые порты
* `-n` - числовой формат (без разрешения имен)
* `-p` - показывает PID и имя процесса

**Ожидаемый результат:**

* Если порты свободны, команда выведет "Порты свободны"
* Если порты заняты, будут показаны процессы, которые их используют

</details>

### Проверка конфигурации

#### Финальная проверка перед запуском

```bash
# Проверьте Docker
docker --version && docker compose version

# Проверьте переменные окружения
cat .env

# Проверьте доступность портов
sudo netstat -tlnp | grep -E ":443 |:5000 |:608[0-9] |:609[0-9] |:6100 " || echo "Все порты свободны"

# Проверьте дисковое пространство
df -h /var/lib/docker || echo "Docker storage driver не настроен"

echo "Если все проверки пройдены успешно, можно запускать Sherpa Orchestrator"
```

**Ожидаемый результат:** Все команды должны выполниться без ошибок, порты должны быть свободны.
