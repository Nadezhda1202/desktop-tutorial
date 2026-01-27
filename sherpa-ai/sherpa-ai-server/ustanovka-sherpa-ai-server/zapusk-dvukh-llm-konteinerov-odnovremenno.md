# Запуск двух LLM контейнеров одновременно

В данном разделе описывается настройка для запуска двух языковых моделей одновременно на одном сервере с несколькими GPU.

### Когда это нужно

Запуск двух LLM контейнеров полезен когда:

* У вас есть несколько GPU и вы хотите использовать их для разных моделей
* Нужно запустить разные модели одновременно (например, одна для чата, другая для специализированных задач)
* Требуется распределить нагрузку между несколькими моделями

### Требования

* Сервер с минимум 2 GPU NVIDIA
* Каждая GPU должна иметь достаточно памяти для выбранной модели
* Docker и Docker Compose установлены
* NVIDIA Container Toolkit установлен

### Настройка

#### Шаг 1: Проверка доступных GPU

Убедитесь, что у вас есть минимум 2 GPU:

```bash
nvidia-smi
```

**Ожидаемый результат:** Вы должны увидеть минимум 2 GPU в списке.

#### Шаг 2: Раскомментирование второго LLM контейнера

Откройте файл `docker-compose.yml` и найдите закомментированный блок `aiserver-llm-server2` (примерно строки 103-142).

Раскомментируйте весь блок, убрав символы `#` в начале каждой строки:

```yaml
# Было:
# aiserver-llm-server2:
#   container_name: aiserver-llm-server2
#   image: aiserver-llm-server:latest
#   ...

# Стало:
aiserver-llm-server2:
  container_name: aiserver-llm-server2
  image: aiserver-llm-server:latest
  ...
```

#### Шаг 3: Настройка портов

Убедитесь, что порты не конфликтуют:

* **aiserver-llm-server** (первый контейнер): порт `3003:8000`
* **aiserver-llm-server2** (второй контейнер): порт должен быть другим, например `3006:8000` или `3007:8000`

В закомментированном блоке проверьте строку:

```yaml
ports:
  - 3006:8000  # или другой свободный порт
```

#### Шаг 4: Настройка GPU для каждого контейнера

Важно настроить, какая GPU будет использоваться каждым контейнером.

**Для первого контейнера (aiserver-llm-server)**

Обычно использует GPU 0 (по умолчанию). Проверьте переменные окружения в `.env` файле или в самом `docker-compose.yml`:

```yaml
environment:
  LLM_CUDA_VISIBLE_DEVICES: 0  # или не указывать, тогда будет использоваться GPU 0
```

**Для второго контейнера (aiserver-llm-server2)**

В раскомментированном блоке найдите строку:

```yaml
environment:
  LLM_CUDA_VISIBLE_DEVICES: 1  # Использует GPU 1
```

Убедитесь, что значение соответствует номеру второй GPU (обычно `1` для второй GPU).

#### Шаг 5: Настройка моделей

Убедитесь, что каждая модель настроена правильно:

**Первый контейнер (aiserver-llm-server)**

Использует настройки из `.env` файла или значения по умолчанию. Проверьте переменную:

```bash
LLM_COMPLETION_MODEL_NAME=/model-store/название-модели-1
```

**Второй контейнер (aiserver-llm-server2)**

В раскомментированном блоке найдите строку:

```yaml
environment:
  LLM_COMPLETION_MODEL_NAME: "/model-store/Qwen3-30B-A3B-AWQ"
```

Измените на нужную модель, если требуется другая.

#### Шаг 6: Проверка конфигурации

Перед запуском проверьте конфигурацию:

```bash
# Проверьте синтаксис docker-compose файла
docker compose -f docker-compose.yml config

# Проверьте что порты не заняты
netstat -tuln | grep -E '3003|3006'
```

#### Шаг 7: Запуск контейнеров

```bash
# Остановите текущие контейнеры (если запущены)
docker compose -f docker-compose.yml down

# Запустите все контейнеры включая второй LLM сервер
docker compose -f docker-compose.yml up -d

# Проверьте что оба контейнера запущены
docker compose -f docker-compose.yml ps | grep llm-server
```

**Ожидаемый результат:** Вы должны увидеть два контейнера:

* `aiserver-llm-server` (порт 3003)
* `aiserver-llm-server2` (порт 3006)

#### Шаг 8: Проверка работы

```bash
# Проверьте логи первого контейнера
docker logs aiserver-llm-server

# Проверьте логи второго контейнера
docker logs aiserver-llm-server2

# Проверьте использование GPU
nvidia-smi
```

**Ожидаемый результат:**

* Оба контейнера должны успешно запуститься
* В `nvidia-smi` должны быть видны процессы на разных GPU
* Логи не должны содержать критических ошибок

### Настройка переменных окружения

Если нужно изменить настройки второго контейнера, отредактируйте блок `environment` в `docker-compose.yml`:

```yaml
aiserver-llm-server2:
  environment:
    LLM_COMPLETION_MODEL_NAME: "/model-store/ваша-модель"
    LLM_CUDA_VISIBLE_DEVICES: 1  # Номер GPU (0, 1, 2, и т.д.)
    LLM_TENSOR_PARALLEL_SIZE: "1"
    LLM_MAX_MODEL_LEN: "16000"
    LLM_GPU_MEMORY_UTILIZATION: "0.85"
    # ... другие настройки
```

### Возможные проблемы

#### Контейнер не запускается

**Проблема:** Второй контейнер не запускается или падает с ошибкой.

**Решение:**

1. Проверьте логи: `docker logs aiserver-llm-server2`
2. Убедитесь что GPU доступна: `nvidia-smi`
3. Проверьте что порт свободен: `netstat -tuln | grep 3006`
4. Проверьте что модель существует: `ls -la llm-server/models/`

#### Конфликт портов

**Проблема:** Ошибка "port is already allocated".

**Решение:**

* Измените порт второго контейнера на свободный (например, `3007:8000`)
* Или остановите сервис, занимающий порт

#### Недостаточно памяти GPU

**Проблема:** Модель не загружается, ошибки памяти.

**Решение:**

* Уменьшите `LLM_GPU_MEMORY_UTILIZATION` (например, до `0.7`)
* Используйте модели меньшего размера
* Освободите память на GPU, остановив другие процессы

#### Оба контейнера используют одну GPU

**Проблема:** Оба контейнера используют GPU 0 вместо разных GPU.

**Решение:**

* Убедитесь что `LLM_CUDA_VISIBLE_DEVICES` установлена правильно для каждого контейнера
* Проверьте что переменная не переопределяется в `.env` файле
* Перезапустите контейнеры после изменения настроек

### Пример полной конфигурации

Пример настройки двух контейнеров в `docker-compose.yml`:

```yaml
aiserver-llm-server:
  container_name: aiserver-llm-server
  image: aiserver-llm-server:latest
  restart: always
  env_file:
    - .env
  ports:
    - 3003:8000
  environment:
    LLM_CUDA_VISIBLE_DEVICES: 0  # GPU 0
  deploy:
    resources:
      reservations:
        devices:
          - driver: nvidia
            count: all
            capabilities: [ gpu ]
  volumes:
    - "./llm-server/models:/model-store"
  networks:
    - llm-net

aiserver-llm-server2:
  container_name: aiserver-llm-server2
  image: aiserver-llm-server:latest
  restart: always
  ports:
    - 3006:8000
  environment:
    LLM_COMPLETION_MODEL_NAME: "/model-store/Qwen3-30B-A3B-AWQ"
    LLM_CUDA_VISIBLE_DEVICES: 1  # GPU 1
    LLM_TENSOR_PARALLEL_SIZE: "1"
    LLM_MAX_MODEL_LEN: "16000"
    LLM_GPU_MEMORY_UTILIZATION: "0.85"
  deploy:
    resources:
      reservations:
        devices:
          - driver: nvidia
            count: all
            capabilities: [ gpu ]
  volumes:
    - "./llm-server/models:/model-store"
  networks:
    - llm-net
```

### Дополнительные настройки

#### Использование разных моделей

Вы можете запустить разные модели в каждом контейнере:

```yaml
# Первый контейнер - модель для чата
LLM_COMPLETION_MODEL_NAME: "/model-store/Llama-3-8B"

# Второй контейнер - модель для кода
LLM_COMPLETION_MODEL_NAME: "/model-store/Qwen3-30B-A3B-AWQ"
```

#### Настройка памяти

Если у вас GPU с разным объемом памяти, настройте использование памяти для каждого контейнера:

```yaml
# Для GPU с меньшей памятью
LLM_GPU_MEMORY_UTILIZATION: "0.7"

# Для GPU с большей памятью
LLM_GPU_MEMORY_UTILIZATION: "0.9"
```

### Мониторинг

Для мониторинга работы обоих контейнеров:

```bash
# Статус контейнеров
docker compose -f docker-compose.yml ps

# Использование ресурсов
docker stats aiserver-llm-server aiserver-llm-server2

# Использование GPU
watch -n 1 nvidia-smi
```

**Ожидаемый результат:** Оба контейнера должны работать стабильно, используя разные GPU.
