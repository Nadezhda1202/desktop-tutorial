# Запуск LLM сервера на отдельном сервере

В данном разделе описывается  настройка для запуска только LLM сервера на отдельном сервере, без остальных компонентов Sherpa AI Server.

### Когда это нужно

Запуск LLM сервера на отдельном сервере полезен когда:

* Нужно распределить нагрузку между серверами
* LLM сервер требует мощных GPU и его лучше вынести на отдельный сервер
* Требуется масштабирование - несколько LLM серверов для балансировки нагрузки
* Нужно изолировать LLM сервер от основного приложения

### Требования

* Сервер с GPU NVIDIA (CUDA 11.8+)
* Docker и Docker Compose установлены
* NVIDIA Container Toolkit установлен
* Модели LLM загружены в директорию `llm-server/models/`

### Настройка

#### Шаг 1: Подготовка сервера

Убедитесь, что на сервере установлены все необходимые компоненты

```bash
# Проверьте GPU
nvidia-smi

# Проверьте Docker
docker --version
docker compose version


```

#### Шаг 2: Подготовка файлов

Скопируйте на сервер следующие файлы и директории:

```bash
# Необходимые файлы:
# - docker-compose.yml (или docker-compose.main.yml)
# - .env файл с настройками
# - llm-server/models/ - директория с моделями
# - llm-server/templates/ - директория с шаблонами (если используется)
```

#### Шаг 3: Комментирование ненужных сервисов

Откройте файл `docker-compose.yml` и закомментируйте все сервисы кроме `aiserver-llm-server`.

**Пример: Закомментированные сервисы**

```yaml
services:

  # aiserver-pg:
  #   container_name: aiserver-pg
  #   image: aiserver-pg:latest
  #   ...

  # aiserver-embed:
  #   container_name: aiserver-embed
  #   ...

  # aiserver:
  #   container_name: aiserver
  #   ...

  # Единственный активный сервис:
  aiserver-llm-server:
    container_name: aiserver-llm-server
    image: aiserver-llm-server:latest
    restart: always
    env_file:
      - .env
    ports:
      - 3003:8000
    ipc: host
    deploy:
      resources:
        reservations:
          devices:
            - driver: nvidia
              count: all
              capabilities: [ gpu ]
    volumes:
      - "./llm-server/models:/model-store"
      - "./llm-server/templates:/model-templates"
    networks:
      - llm-net

  # aiserver-code_interpreter:
  #   ...

  # aiserver-whisper:
  #   ...

  # aiserver-bge_reranker:
  #   ...
```

#### Шаг 5: Настройка переменных окружения

Создайте или отредактируйте файл `.env` с настройками LLM сервера:

```bash
# Настройки LLM сервера
LLM_CUDA_VISIBLE_DEVICES=0
LLM_TENSOR_PARALLEL_SIZE=1
LLM_GPU_MEMORY_UTILIZATION=0.90
LLM_COMPLETION_MODEL_NAME=/model-store/meta-llama/Meta-Llama-3-8B-Instruct
LLM_DTYPE=auto
LLM_TRUST_REMOTE_CODE=false
LLM_QUANTIZATION=false
LLM_MAX_MODEL_LEN=8192
LLM_HOST=0.0.0.0
LLM_PORT=8000
LLM_MAX_NUM_BATCHED_TOKENS=16384
LLM_MAX_NUM_SEQS=16
LLM_ENABLE_TOOLS=true
LLM_TOOL_CALL_PARSER=llama3_json
LLM_EXCLUDE_TOOLS_WHEN_NONE=true
```

**Важно:**

* Убедитесь что путь к модели правильный: `LLM_COMPLETION_MODEL_NAME=/model-store/название-модели`

#### Шаг 6: Проверка конфигурации

Перед запуском проверьте конфигурацию:

```bash
# Проверьте синтаксис docker-compose файла
docker compose -f docker-compose.yml config

# Проверьте что порт свободен
netstat -tuln | grep 3003

# Проверьте наличие модели
ls -la llm-server/models/
```

#### Шаг 7: Запуск LLM сервера

```bash
# Запустите только LLM сервер
docker compose -f docker-compose.yml up -d aiserver-llm-server

# Или запустите все (но будут запущены только незакомментированные сервисы)
docker compose -f docker-compose.yml up -d

# Проверьте статус
docker compose -f docker-compose.yml ps
```

**Ожидаемый результат:** Должен запуститься только контейнер `aiserver-llm-server`.

#### Шаг 8: Проверка работы

```bash
# Проверьте логи
docker logs aiserver-llm-server

# Проверьте использование GPU
nvidia-smi

# Проверьте доступность API (должен вернуть информацию о модели)
curl http://localhost:3003/v1/models
```

**Ожидаемый результат:**

* Контейнер должен успешно запуститься
* В логах не должно быть критических ошибок
* API должен отвечать на запросы
* GPU должна использоваться для загрузки модели

### Подключение с другого сервера

Если LLM сервер запущен на отдельном сервере, настройте подключение с основного сервера.

#### На основном сервере

В файле `.env` основного сервера укажите адрес LLM сервера:

```bash
# Адрес LLM сервера (замените на IP или домен вашего LLM сервера)
LLM_SERVER_URL=http://192.168.1.100:3003
# или
LLM_SERVER_URL=http://llm-server.example.com:3003
```

### Минимальная конфигурация docker-compose

Пример минимального `docker-compose.yml` только для LLM сервера:

```yaml
services:
  aiserver-llm-server:
    container_name: aiserver-llm-server
    image: aiserver-llm-server:latest
    restart: always
    env_file:
      - .env
    ports:
      - "3003:8000"
    ipc: host
    deploy:
      resources:
        reservations:
          devices:
            - driver: nvidia
              count: all
              capabilities: [ gpu ]
    volumes:
      - "./llm-server/models:/model-store"
      - "./llm-server/templates:/model-templates"
    networks:
      - llm-net

networks:
  llm-net:
    name: llm-net
    driver: bridge
```

Сохраните этот файл как `docker-compose.llm-only.yml` и используйте:

```bash
docker compose -f docker-compose.llm-only.yml up -d
```

### Возможные проблемы

#### Контейнер не запускается

**Проблема:** Контейнер падает сразу после запуска.

**Решение:**

1. Проверьте логи: `docker logs aiserver-llm-server`
2. Убедитесь что GPU доступна: `nvidia-smi`
3. Проверьте что модель существует: `ls -la llm-server/models/`
4. Проверьте права доступа к директории моделей

#### Модель не загружается

**Проблема:** Ошибки при загрузке модели.

**Решение:**

1. Проверьте путь к модели в `.env`: `LLM_COMPLETION_MODEL_NAME`
2. Убедитесь что модель загружена: `ls -la llm-server/models/`
3. Проверьте логи на ошибки загрузки: `docker logs aiserver-llm-server | grep -i error`

#### Недостаточно памяти GPU

**Проблема:** Модель не помещается в память GPU.

**Решение:**

* Уменьшите `LLM_GPU_MEMORY_UTILIZATION` в `.env`
* Используйте квантованную версию модели (установите `LLM_QUANTIZATION=true`)
* Используйте модель меньшего размера

#### Порт недоступен извне

**Проблема:** Не могу подключиться к LLM серверу с другого сервера.

**Решение:**

1. Проверьте firewall: `sudo ufw status`
2. Проверьте что порт проброшен: `docker port aiserver-llm-server`
3. Проверьте сетевые настройки Docker

### Мониторинг

Для мониторинга работы LLM сервера:

```bash
# Статус контейнера
docker ps | grep llm-server

# Использование ресурсов
docker stats aiserver-llm-server

# Использование GPU
watch -n 1 nvidia-smi

# Логи в реальном времени
docker logs -f aiserver-llm-server

# Проверка API
curl http://localhost:3003/health
curl http://localhost:3003/v1/models
```

### Оптимизация производительности

Для оптимизации производительности LLM сервера:

1.  **Настройка памяти GPU:**

    ```bash
    LLM_GPU_MEMORY_UTILIZATION=0.90  # Используйте максимум доступной памяти
    ```
2.  **Настройка батчинга:**

    ```bash
    LLM_MAX_NUM_BATCHED_TOKENS=16384
    LLM_MAX_NUM_SEQS=16
    ```
3.  **Использование квантования:**

    ```bash
    LLM_QUANTIZATION=true  # Для моделей с поддержкой квантования
    ```

После выполнения всех шагов у вас должен быть запущен только LLM сервер на отдельном сервере, который можно использовать с основного сервера или других приложений через API на порту 3003.
