# Пример вызова API на языке Python

```python
import requests
import base64
import json

from requests.packages.urllib3.exceptions import InsecureRequestWarning
requests.packages.urllib3.disable_warnings(InsecureRequestWarning)

host = 'https://orchestrator.sherparpa.ru'
api_key = '72d3b115-968e-4888-a8c4-c68c8ca37e7d'

headers = {
    'Authorization': 'Basic ' + base64.b64encode(api_key.encode('utf-8')).decode('utf-8')
}

new_task = {
    'queue_guid': '0cff3e77-78fc-405e-98c9-ef5076c0c883'
	'name': 'Новая задача',
	'parameters': json.dumps({'query_id': '123', 'query_link': 'D:\CommonFolder\Packet123.zip', 'query_status': 'new', 'doc_type': 'ПТС', 'doc_status': 'new'})
}

r = requests.post(host + '/api/task/create', data=new_task, headers=headers, verify=False)
print('/api/task/create result', r)
print('    ', r.text)

r = requests.get(host + '/api/queue/lastTask/0cff3e77-78fc-405e-98c9-ef5076c0c883', headers=headers, verify=False)
print('api/queue/lastTask result', r)
print('    ', r.text)
new_task = json.loads(r.text)

 # status = 1 - in progress
task_update = {
    'guid': new_task['guid'],
    'status': 1
}

r = requests.put(host + '/api/task/update', data=task_update, headers=headers, verify=False)
print('/api/task/update result', r.text)

print('last task after no tasks with status == 0')
r = requests.get(host + '/api/queue/lastTask/0cff3e77-78fc-405e-98c9-ef5076c0c883', headers=headers, verify=False)
print('api/queue/lastTask result', r)
print('    ', r.text)
new_task = json.loads(r.text)

r = requests.get(host + '/api/asset/read/533daa45-8c3e-42ff-a5ae-b5023715d929', headers=headers, verify=False)
print('/api/asset/read/ result', r.text)

asset = json.loads(r.text)

asset_update = {
    'guid': asset['guid'],
    'name': 'other name'
}

r = requests.put(host + '/api/asset/update', data=asset_update, headers=headers, verify=False)
print('/api/asset/update/ result', r.text)

new_log = {
    'robot_guid': '9be0687d-4e00-4742-a53f-c9b622d076db',
    'process_version_guid': '4443fc75-4b55-41a2-bb61-9132b6e55d6b',
    'job_guid': '55056968-cb1b-4919-ad7b-9370c6e81e55'
}

r = requests.post(host + '/api/log/create', data=new_log, headers=headers, verify=False)
```

