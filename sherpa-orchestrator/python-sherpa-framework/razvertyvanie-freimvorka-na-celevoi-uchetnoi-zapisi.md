# Развертывание фреймворка на целевой учетной записи

* Установить python для всех пользователей, поставить галочку "Add python.exe to PATH" Галочки Customize Installation:
  * install python for all users
  * Associate files with Python (request the "py" launcher)
  * Create shortcuts for installed applications
  * Add Python to enviroment variables
  * Precompile standard library
*   Создать задачу в планировщике заданий Windows с любым именем Общее:

    * "Выполнить только для пользователей, вошедших в систему"

    Триггеры:

    * "При входе в систему" --> "Пользователь" (указать)
    * "При удаленном подключении" --> "Подключение с удаленного компьютера" --> "Пользователь" (указать)

    Действия:

    * "Запуск программы"
    * "Программа или сценарий" --> Полный путь до SherpaPython.exe
    * "Рабочая папка" --> Путь до папки в которой лежит SherpaPython.exe, обязательно без кавычек пример: D:\Sherpa\_RPA\PythonSherpa-framework\\
* Один раз вручную запустить SherpaPython.exe
* Логи фрейморка будут размещаться по пути С:\Users\User\AppData\Roaming\Sherpa RPA Python
* Файл настроек settings.txt будет размещаться по пути С:\Users\User\AppData\Roaming\Sherpa RPA Python&#x20;

Содержимое settings.txt

* << Введите guid робота >> - заменить на GUID робота
* << Введите host робота >> - ввести хост или IP оркестратора вместе с протоколом, например https://orchestrator2.sherparpa.ru
* << Введите статус logoff робота >> - одна цифра (0 - не производится автоматический logoff после окончания работ, 1 - производится автоматический logoff после окончания работ, в случае отсутствия третьей строки считается установленным значение 1)

***

```
                    RobotsOrcFramework
```

***

```
Обработка мягкой остановки внутри python-робота

import signal
import time
import sys

class TestProcess1():
    stop = False
    def __init__(self):
    # Перехват сигнала мягкой остановки от фреймворка
        signal.signal(signal.SIGBREAK, self.stop_process)

    # Обработка сигнала в виде переключения флага
    def stop_process(self, signal, frame):
        self.stop = True 

    def robot_work(self):
        for elem in range(10):
            time.sleep(1)
            # Если флаг в нужной позиции, прервать программу
            if self.stop:
	    sys.exit()

test = TestProcess1()
test.robot_work()
```

***

```
Получить и обработать аргументы от фреймворка внутри python-робота

# обработать аргументы командной строки
def process_cmd_arguments(argv):
    process_version_guid = argv[0]
    job_guid = argv[1]
    settings_path = argv[3]

process_cmd_arguments(sys.argv[1].split("|"))
```

***

```
Получить host и GUID робота внутри python-робота

# получить настройки
def get_settings():
    with open(settings_path, "r", encoding="utf-8") as file:
        settings = file.read()
    settings = [elem.replace("\n", "") for elem in settings.split("\n")]

    return settings[0], settings[1]

robot_GUID, host = get_settings()
```

***

```
Путь к python-скриптам роботов

В имени версии процесса в оркестраторе указать путь к python-скрипту,
относительно файла фреймворка (RobotsOrcFramework.py)

Формат
папка1\папка2\имя скрипта без расширения
```

***

```
                    Использование TaskOrchestratorAPI
```

***

```
from TaskOrcAPI import TaskOrchestratorAPI # папка OrchestratorAPI
TOA = TaskOrchestratorAPI(robot_guid, host, headers)
```

***

```
Добавление задачи в очередь

param_task можно не указывать, по умолчанию {"":""}
name можно не указывать, по умолчанию "NewTask"

queue_GUID = "f96b549d-bc58-48b9-ba78-463692c7680b"
param_task = {"param1": "1", "param2": "2", "param3": "3"}
name = 'New Task'

result = TOA.add_task(queue_GUID)

result['guid'] # d5fc7d6e-b609-4aaa-be35-e51fdacb5b5d
```

***

```
Получаем задачу из очереди

status, можно не указывать, по умолчанию 0

queue_GUID = "f96b549d-bc58-48b9-ba78-463692c7680b"
status = 1

result = TOA.get_task(queue_GUID, status)
result_dict = json.loads(result.text)

result                       # <Response [200]> Код запроса

result_dict['id']            # 1171
result_dict['guid']          # d5fc7d6e-b609-4aaa-be35-e51fdacb5b5d
result_dict['name']          # NewTask
result_dict['status']        # 4
result_dict['created']       # 2022-10-28 06:19:19
result_dict['updated']       # 2022-10-28 09:45:45
result_dict['comment']       # комментарий
result_dict['priority']      # 1
result_dict['deadline']      # 2022-10-28 06:19:19
result_dict['postponed']     # 2022-10-28 09:45:45
result_dict['parameters']    # {"param": "value"}
result_dict['description']   # None
```

***

```
Обновляем статус полученной ранее задачи

Справочник статусов задач
STATUS_NEW              = 0;  # Новая задача
STATUS_IN_PROGRESS      = 1;  # Задача в работе
STATUS_SUCCESS          = 2;  # Задача успешно завершена
STATUS_FAILED           = 3;  # Задача провалена с Application Exception
STATUS_FAILED_BUSINESS  = 4;  # Задача провалена с Business Exception
STATUS_POSTPONED        = 5;  # Задача отложена до указанного времени
STATUS_ABANDONED        = 6;  # Задача заброшена (не взята в обработку вовремя)

status, можно не указывать, по умолчанию 0    

task_GUID = '4e9cb924-681a-4d1d-9420-e1dac677f3fa'
status = 5

result = TOA.update_task_status(task_GUID, status)
result # <Response [200]> Код запроса
```

***

```
Получаем ресурс (asset)

asset_GUID = "d042c0cf-4862-48e7-8d10-caf892ceec3f"

result = TOA.get_asset(asset_GUID)

result['id']                # 1171
result['guid']              # d5fc7d6e-b609-4aaa-be35-e51fdacb5b5d
result['name']              # Ресурс
result['text']              # 4
result['type']              # 1
result['created']           # 2022-10-28 06:19:19
result['updated']           # 2022-10-28 06:19:19
result['robot_id']          # None
result['password']          # 2022-10-28 06:19:19
result['is_deleted']        # 0
result['account_id']        # 27
result['robot_type']        # 3
result['description']       # ''
result['robot_group_id']    # None
```

***

```
Обновляем ресурс

name можно не указывать, по умолчанию NewName
если ресурс это реквизиты (credentials), указываем password, тогда text = username, иначе не указываем

asset_GUID = "d042c0cf-4862-48e7-8d10-caf892ceec3f"
text = 'Новый ресурс'
name = 'Ресурс'
password = '777'

result = TOA.asset_update(asset_GUID, text, name, password)
result # <Response [200]> Код запроса
```

***

```
Добавляем новую запись в лог

Допустимые значения для Level: 'Info', 'Critical', 'Error', 'Warning', 'Debug'

level можно не указывать, по умолчанию 'Info'
message можно не указывать, по умолчанию ''

robot_guid = sys.argv[1]
process_version_guid = 'f7952815-a238-4870-b678-943b0119d0f4'
job_guid = '922d3cc6-99ec-44c2-b0a0-62114c9d2908'
level, message = 'Info', 'сообщение'

result = TOA.add_new_log_entry(
    robot_guid, process_version_guid, job_guid
)
result_dict = json.loads(result.text)

result                  # <Response [200]> Код запроса
result_dict['guid']     # d5fc7d6e-b609-4aaa-be35-e51fdacb5b5d
```

***
