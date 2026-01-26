# Sherpa AI Server

**Sherpa AI Server** – это веб-сервисное приложение, предназначенное для обучения, использования и дообучения больших языковых моделей (LLM) внутри закрытого контура корпораций. Sherpa AI Server объединяет в себе векторное хранилище документов, управление офлайн-моделями, поддержку разнообразных моделей искусственного интеллекта – с разным размером, с квантованием и без, их запуск на GPU или CPU, проектирование цепочек обработки данных, доступ через API, платформу роботизации и веб-интерфейс, и многое другое.

Sherpa AI Server – это Центр искусственного интеллекта, который содержит функционал:

·         большие языковые модели (LLM) в закрытом контуре;

·         веб-чат для сотрудников компании в стиле ChatGPT с историей и диалогами;

·         поддержка русского языка;

·         ответы на вопросы по собственным документам;

·         встроенное векторное хранилище документов;

·         API для любых приложений компании, совместимое с OpenAI;

·         интеграция с Sherpa RPA - работа с LLM из сценариев роботов;

·         безопасность, конфиденциальность, мониторинг, аудит;

·         многопользовательский и многопоточный режим;

·         выбор из более 300 доступных языковых моделей;

·         работа с CPU / GPU и самыми современными методами квантования и батчинга нейросетей;

·         возможность интеграции с любой отечественной RPA-платформой посредством API.

Sherpa AI Server обладает широким спектром возможностей и функциональности, которые позволяют применяться как:

·         чат-бот для поддержки клиентов;

·         чат-бот для поддержки внутренних пользователей;

·         чат-бот для ответов по содержимому корпоративных документов и баз знаний;

·         конструктор документов, генератор договоров, вакансий, отчётов, аналитических записок;

·         робот-юрист, робот-продавец, робот-кадровик, робот-интервьювер, \
робот-документовед и т.д.;

·         извлечение структурированных и неструктурированных данных из документов, в том числе, сканированных и их заведение в информационные системы;

·         генерация контент-планов, блог-постов, статей, обзоров, комментариев, пресс-релизов, дайджестов, email-писем, рассылок, презентаций и т.д.;

·         генерация кода, юнит-тестов, макросов, запросов, комментариев и документации к коду;

·         семантический анализ и анализ тональности комментариев и отзывов клиентов;

·         текстовый и голосовой BI (Business Intelligence) для корпоративных данных;

·         массовое копирование правок документов, отслеживание и поддержка изменений нормативной документации.

## Требования к серверу Sherpa AI Server

### Системные требования

* **ОС**: рекомендуется Ubuntu 20.04+, однако с другими дистрибутивами Linux как правило не возникает никаких проблем, совместимость была проверена с RedOS, AstraLinux, AltLinux, Debian
* **CPU**: x86\_64 с AVX2
* **RAM**: 16 ГБ минимум, 32 ГБ+ рекомендуется
* **Диск**: 100 ГБ+ свободного места
* **GPU**: NVIDIA с CUDA 11.8+ (рекомендуется)
* **Сеть**: Стабильное интернет-соединение
* **Доступ**: sudo права для установки

**Важно:**

* Установка занимает часы из-за скачивания моделей ИИ (10-50 ГБ)
* После установки интернет не требуется

### Подготовка сервера

#### Проверка ресурсов

Далее используется синтаксис Ubuntu, если команда не подходит, вам необходимо изменить синтаксис в зависимости от вашей ОС

```bash
# Проверьте системные ресурсы
df -h          # Дисковое пространство
free -h        # Оперативная память
nvidia-smi     # GPU (если установлена)
```

#### Установка базовых инструментов

```bash
# Обновите систему и установите инструменты
sudo apt update
sudo apt install -y ca-certificates curl tar
```

### Установка Docker (пропустить если установлено)

Sherpa AIServer работает в Docker-контейнерах.

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

#### Настройка и проверка

```bash
# Добавьте пользователя в группу docker (опционально)
sudo usermod -aG docker $USER

# Проверьте установку
docker --version
docker compose version
```

**Ожидаемый результат:** Docker успешно запускает тестовый контейнер.

### Установка GPU поддержки (NVIDIA + Toolkit) (пропустить если установлено)

Если на сервере есть NVIDIA GPU, установите драйверы и Container Toolkit:

#### Установка драйверов NVIDIA

```bash
# Очистите старые драйверы и установите новые
sudo apt purge 'nvidia-*'
sudo apt autoremove
sudo apt install -y nvidia-driver-580

# Перезагрузите сервер
sudo reboot
```

#### Проверка GPU

```bash
# После перезагрузки проверьте GPU
nvidia-smi
```

**Ожидаемый вывод:**

```
NVIDIA-SMI 580.xx.xx
Driver Version: 580.xx.xx
```

#### Установка NVIDIA Container Toolkit

```bash
# Добавьте репозиторий и установите toolkit
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | \
  sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit.gpg

curl -fsSL https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
  sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit.gpg] https://#g' | \
  sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

sudo apt update
sudo apt install -y nvidia-container-toolkit

# Настройте Docker для GPU
sudo nvidia-ctk runtime configure --runtime=docker
sudo systemctl restart docker
```
