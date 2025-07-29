# Алгоритм работы Python-фреймворка

Запускаемый с помощью Планировщика Windows скрипт Python-фреймворка должен следовать следующему алгоритму:

1. Выполнить HTTP POST запрос к скрипту `/api/robot/heartbeat` Оркестратора. Передать в параметрах:&#x20;
   1. GUID данного Робота (RobotGUID),&#x20;
   2. имя компьютера (Machine),&#x20;
   3. IP адрес машины (IP),&#x20;
   4. MAC адрес машины (MAC),&#x20;
   5. текущий статус Робота (Status),&#x20;
   6. GUID исполняемой в данный момент Работы (JobGUID),&#x20;
   7. название исполняемой в данный момент Работы (JobName),
   8. тип Работы (JobType, всегда должен иметь тип Orchestrated, значение 1).

Выходные данные (в формате JSON):&#x20;

* HeartbeatErrorCode,&#x20;
* ErrorText,&#x20;
* HasNewJob.

Скрипт может выдавать в ответе и другие параметры, которые не используются в контексте текущей Задачи.

Справочник статусов Роботов:

```
Status_Disconnected = 0; # робот отключен
Status_Unlicensed     = 1; # робот не лицензирован
Status_Ready        = 2; # робот не выполняет работы и готов к приему новых работ
Status_Working    = 3; # робот выполняет текущую работу
```

Справочник значений ErrorCode:

```
HeartbeatErrorCode_NoError = 0;  # нет ошибок
HeartbeatErrorCode_RobotNotFound = 101;  # робот с указанным GUID не найден
HeartbeatErrorCode_JobAborting = 10;   # оркестратор запросил жесткую остановку данного сценария (Abort)
HeartbeatErrorCode_JobStopping = 20;   # оркестратор запросил мягкую остановку данного сценария (Stop)
```

Справочник значений HasNewJob:

```
HasNewJob_NoJob = 0 # для данного робота отсутствуют новые работы
HasNewJob_JobFound = 1 # для данного робота есть новые работы, которые необходимо получить с помощью вызова ConsumeNextJob
```

При первом запуске скрипта необходимо передать значение `Status = 2` (Status\_Ready). Также при первом запуске, когда название и GUID выполняемой работы ещё неизвестны, данные поля могут оставаться пустыми.

Пример вызова:

```
import requests
import base64
import json

from requests.packages.urllib3.exceptions import InsecureRequestWarning
requests.packages.urllib3.disable_warnings(InsecureRequestWarning)
host = 'http://192.168.1.111:4500' #хост оркестратора
robot_guid = 'da8bc2f0-8065-4385-b867-405e66b8e151' #GUID робота
headers = {
    'Authorization': 'Basic ' + base64.b64encode(robot_guid.encode('utf-8')).decode('utf-8')
}
req = {
    'RobotGUID': robot_guid   #GUID робота
    'Machine': robot_machine   #Имя машины
    'IP': robot_ip   #IP адрес робота
    'MAC': robot_mac   #MAC адрес робота
    'Status': 2   #статус робота
    'JobGUID': ''  #GUID работы
    'JobName': ''   #название выполняемого скрипта, т.е. python_script_name далее по тексту
    'JobType': 1   #тип работы, всегда значение 1
}
r = requests.post(host + '/api/robot/heartbeat', data=req, headers=headers, verify=False)
heartbeat_results = json.loads(r.text)
print(heartbeat_results ['HeartbeatErrorCode'])
print(heartbeat_results ['ErrorText'])
print(heartbeat_results ['HasNewJob'])
```

2.  В случае если получен ответ `HasNewJob == 0`, завершить выполнение скрипта фреймворка и выйти из учетной записи Windows с помощью Log off. \
    \
    В случае, если получен ответ `HasNewJob == 1`, выполнить HTTP POST запрос к скрипту `/api/robot/consumeNextJob` Оркестратора.\
    \
    Входные данные:&#x20;

    1. GUID Робота (RobotGUID),&#x20;
    2. текущий статус Робота (Status).

    \
    Выходные данные (в формате JSON):&#x20;

    1. ConsumeJobErrorCode,&#x20;
    2. ErrorText,&#x20;
    3. Job,&#x20;
    4. ProcessVersion,&#x20;
    5. Task.

\
Справочник значений ConsumeJobErrorCode:\
\
`ConsumeJobErrorCode = 0;  # нет ошибок`\
`ConsumeJobErrorCode = 101;  # робот с указанным GUID не найден`\
`ConsumeJobErrorCode = 102;  # новая работа не найдена`\
\
Пример вызова:\
\
`import requests`\
`import base64`\
`import json`\
\
`from requests.packages.urllib3.exceptions import InsecureRequestWarning`\
`requests.packages.urllib3.disable_warnings(InsecureRequestWarning)`\
\
`host = 'http://192.168.1.111:4500' #хост оркестратора`\
`robot_guid = 'da8bc2f0-8065-4385-b867-405e66b8e151' #GUID робота`\
\
`headers = {`\
&#x20;   `'Authorization': 'Basic ' + base64.b64encode(robot_guid.encode('utf-8')).decode('utf-8')`\
`}`\
\
`cnj = {`\
&#x20;   `'RobotGUID': robot_guid   #GUID робота`\
`}`\
\
`r = requests.post(host + '/api/robot/consumeNextJob', data=cnj, headers=headers, verify=False)`\
`consume_result = json.loads(r.text)`\
`print(consume_result['ConsumeJobErrorCode'])`\
`print(consume_result['ErrorText'])`\
`new_job = json.loads(consume_result['Job'])` \
`job_guid = new_job['GUID']`\
`process_version = json.loads(consume_result['ProcessVersion'])` \
`python_script_name = process_version['Name']   #Условимся, что имя скрипта робота, который необходимо запустить, передаётся в названии версии процесса`\
`task = json.loads(consume_result[' Task '])` \


2. В случае успешного получения новой Работы из Оркестратора выполнить HTTP PUT запрос к скрипту `/api/job/update` Оркестратора. Передать в параметрах GUID полученной Работы Робота (guid) и новый статус Работы `Status_In_Progress`.\
   \
   Справочник значений статусов Работ:\
   \
   `Status_Created  = 0;  #Работа создана`\
   `Status_Pending  = 1; #Работа ожидает, когда робот возьмет её в работу`\
   `Status_Aborting = 2; #Работа находится в стадии жесткой остановки (прерывания)`\
   `Status_Aborted  = 3; #Работа успешно прервана`\
   `Status_Success  = 4;  #Работа успешно завершена`\
   `Status_Failed   = 5;    #Работа неуспешно завершена`\
   `Status_Stopping = 6; #Работа находится в стадии остановки мягкой остановки`\
   `Status_Stopped  = 7; #Работа успешно остановлена после запроса мягкой остановки`\
   `Status_In_Progress = 8;  #Работа в данный момент выполняется`\
   \
   Пример вызова:\
   \
   `import requests`\
   `import base64`\
   `import json`\
   \
   `from requests.packages.urllib3.exceptions import InsecureRequestWarning`\
   `requests.packages.urllib3.disable_warnings(InsecureRequestWarning)`\
   `host = 'http://192.168.1.111:4500' #хост оркестратора`\
   `robot_guid = 'da8bc2f0-8065-4385-b867-405e66b8e151' #GUID робота`\
   \
   `headers = {`\
   &#x20;   `'Authorization': 'Basic ' + base64.b64encode(robot_guid.encode('utf-8')).decode('utf-8')`\
   `}`\
   \
   `job = {`\
   &#x20;   `'guid': job_guid, #GUID текущей работы`\
   &#x20;   `'status': 8  #новый статус работы`\
   `}`\
   \
   `r = requests.put(host + '/api/job/update', data=job, headers=headers, verify=False)`\
   `print(r.text)`\

3. Приступить к выполнению Python-скрипта Робота с именем, равным `python_script_name`. По возможности периодически повторять запросы к скрипту `/api/robot/heartbeat` с корректным значением `JobGUID` и `Status =  3 (Status_Working)`. \
   \
   Рекомендуется отправлять этот запрос не чаще раза в 10 секунд. В случае получения в ответ статуса `HeartbeatErrorCode == 10` необходимо немедленно прекратить (прервать) выполнение Python-скрипта Робота. \
   \
   В случае получения в ответ статуса `HeartbeatErrorCode == 20` необходимо выполнить корректное завершение Python-скрипта Робота.
4. После завершения Python-скрипта Робота выполнить HTTP PUT запрос к скрипту `/api/job/update` Оркестратора. Передать в параметрах GUID текущей Работы Робота (guid) и новый статус Работы в зависимости от результата её завершения согласно справочнику, приведенному выше.
5. Затем выполнить HTTP POST запрос к скрипту `/api/robot/heartbeat` Оркестратора со статусом `Status =  2 (Status_Ready)` и перейти к шагу 2 алгоритма фреймворка.
