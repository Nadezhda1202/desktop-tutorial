# Работа с очередями, задачами, ресурсами и логами

> Начиная с версии 1.27 все компоненты платформы поддерживают обращение к очередям, задачам, ресурсам и логам не только с помощью GUID, но и с помощью их имён (Name).

Ниже приведены примеры вызовов к ресурсам, задачам и логам Оркестратора. Данные запросы можно по необходимости выполнять из кода Python-робота.

```
import base64
import json
from requests.packages.urllib3.exceptions import InsecureRequestWarning
requests.packages.urllib3.disable_warnings(InsecureRequestWarning)
host = 'http://192.168.1.111:4500' #хост оркестратора
robot_guid = 'da8bc2f0-8065-4385-b867-405e66b8e151' #GUID робота
headers = {
    'Authorization': 'Basic ' + base64.b64encode(robot_guid.encode('utf-8')).decode('utf-8')
}

#Добавляем новую задачу в очередь задач '0cff3e77-78fc-405e-98c9-ef5076c0c883'
new_task = {
            'queue_guid': '0cff3e77-78fc-405e-98c9-ef5076c0c883',
            'name': 'Новая задача',
            'parameters': json.dumps({'query_id': '123', 'query_link': 'D:\CommonFolder\Packet123.zip', 'query_status': 'new', 'doc_type': 'ПТС', 'doc_status': 'new'})
}
r = requests.post(host + '/api/task/create', data=new_task, headers=headers, verify=False)

#Для контроля выводим результат запроса - GUID созданной задачи
added_task = json.loads(r.text)
print('GUID of added task: ', added_task [‘guid’])

#Получаем последнюю задачу в очереди (без фильтров)
r = requests.get(host + '/api/queue/lastTask/0cff3e77-78fc-405e-98c9-ef5076c0c883', headers=headers, verify=False)
print('api/queue/lastTask result', r)
print('    ', r.text)
new_task = json.loads(r.text)

#Справочник статусов задач
STATUS_NEW   = 0;    #Новая задача
STATUS_IN_PROGRESS  = 1;   #Задача в работе
STATUS_SUCCESS  = 2;    #Задача успешно завершена
STATUS_FAILED  = 3; #Задача провалена с Application Exception
STATUS_FAILED_BUSINESS  = 4; #Задача провалена с Business Exception
STATUS_POSTPONED   = 5;   #Задача отложена до указанного времени
STATUS_ABANDONED   = 6;  #Задача заброшена (не взята в обработку вовремя)

#Обновляем статус полученной ранее задачи
task_update = {
    'guid': new_task['guid'],
    'status': 1
}
r = requests.put(host + '/api/task/update', data=task_update, headers=headers, verify=False)
print('/api/task/update result', r.text)

#Получаем ресурс (asset)
r = requests.get(host + '/api/asset/read/533daa45-8c3e-42ff-a5ae-b5023715d929', headers=headers, verify=False)
print('/api/asset/read/ result', r.text)
asset = json.loads(r.text)

#Обновляем ресурс
asset_update = {
    'guid': asset['guid'],
    'name': 'new name'  #Название ресурса
    'text': 'new text'  #Текст, логин (для типа Credentials) или сериализованный календарь
    'password': 'new password'  #Новый пароль
}
r = requests.put(host + '/api/asset/update', data=asset_update, headers=headers, verify=False)
print('/api/asset/update/ result', r.text)

#Добавляем новую запись в лог
new_log = {
    'robot_guid': '9be0687d-4e00-4742-a53f-c9b622d076db',
    'process_version_guid': '4443fc75-4b55-41a2-bb61-9132b6e55d6b',
    'job_guid': '55056968-cb1b-4919-ad7b-9370c6e81e55'
    'level': 'Info'   #Допустимые значения 'Info', 'Critical', 'Error', 'Warning', 'Debug'
    'message': 'New message'
}
r = requests.post(host + '/api/log/create', data=new_log, headers=headers, verify=False)
```
