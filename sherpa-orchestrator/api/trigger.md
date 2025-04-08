# Триггер

Позволяет управлять Триггерами. Пользователь может создавать новый Триггер, получить информацию о Триггере, обновить информацию о Триггере, а также удалить Триггер.

В верхней части страницы располагается таблица со всеми доступными статусами Триггеров:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfiBvX1gmkquipv-5kza_W9pD7NzWUuglmW8y4I8RSEhRCU9PtiijMrQjGP6omGRFC49gPsyTwiQhNGv8IM7p0mKhIRt64SDB0UHH2194K7Dg0YF9qif6kh98v_yH7ckb5P7j95?key=o0FHaGHt8wdv-FpDKfCXmTRa" alt=""><figcaption></figcaption></figure>

И таблица с типами Триггеров:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeAF8Fx_dQshijHZaU3q2z31IyA5Q7wPKoz4mIL-fXbWO1DAVvGLsf0RAFCgc4FzKFTAPrv9FYALID0tU_hje22wJuN1RG9KcLAUzwICYRo91zSGQqKWdfFK0HPNBI5yrf7iCmkEg?key=o0FHaGHt8wdv-FpDKfCXmTRa" alt=""><figcaption></figcaption></figure>

В нижней части располагаются вкладки с методами:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc66YGKqZRGrJhZYXVPT4GAnAbgPJ1v3mMq-nUL0BCqdvO1U7G_qzKIM88mQ3mfAij6OR_0HGO-mo2qBlUmem61xWD8FRrqSaYgu6rd_p7F4Tireu980bQqRw-ozMjaDUi0pnLXJQ?key=o0FHaGHt8wdv-FpDKfCXmTRa" alt=""><figcaption></figcaption></figure>

По клику на иконку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdLSwPtQVC_CWGdJC5sEIG5IjqYoWO9lCnhZ0CxghJ7fnAhGpOJAOU_9RG0IbhEXrTZ01b-i7_bQZY8w6XyFfuoFjSweEl4P5YaE-KaYeqgqS6Af9ZW46VoBYYf67s1cHfEzyzA_A?key=o0FHaGHt8wdv-FpDKfCXmTRa) справа от нужного метода, раскрывается соответствующая страница:

1\) Создание Триггера

* Эндпоинт: /api/schedule/create&#x20;
* Метод: POST;
* Авторизация: обязательна;
* Параметры:

Name: Название нового Триггера;

Description: Описание для нового Триггера;

Status: Статус для нового Триггера;

CronTab: Выражение Cron для нового Триггера. Только для ProcessingType = 2;

RobotType: Тип Роботов (0 - один Робот, 1 - группа Роботов);

RobotId: ID Робота для выполнения. Только для RobotType = 2;

RobotGroupId: ID Группы Роботов для выполнения. Только для RobotType = 1;

ProcessingType (обязательно): Тип обработки для нового Триггера (1 - непрерывный, 2 - по расписанию);

StartAt: Дата начала работы нового Триггера;

EndAt: Дата окончания работы нового Триггера;

MaxRuns: Макс. количество запусков для нового Триггера;

MaxRunningRobots: Максимальное количество одновременно работающих Роботов. Только для RobotType = 1;

CheckMissedTrigger: Включение механизма проверки пропущенных Триггеров для нового Триггера (1 - вкл., 0 - выкл.);

ProcessId (обязательно): ID Процесса для выполнения.

* Пример:

| Запрос                                                                                                                                 | Ответ                                                                   |
| -------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| <p>```json</p><p>   {</p><p>   "Name": "New Trigger",</p><p>   "Process": 5,</p><p>   "ProcessingType": 1,</p><p>   }</p><p>   ```</p> | <p>  [</p><p>   "guid": "554ab883-1f82-48e1-bb12-5049002e7d70",  ] </p> |

2\) Получение информации о Триггере по GUID

* Эндпоинт: /api/schedule/read/{guid}&#x20;
* Метод: GET;
* Авторизация: обязательна;
* Параметры:

Guid (обязательно): Guid Триггера.

* Пример:

| Запрос                                                  | Ответ                                                                                                                                                                                                                                                                         |
| ------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| /api/schedule/read/554ab883-1f82-48e1-bb12-5049002e7d70 | <p>```json</p><p>   {</p><p>   "id": "55",</p><p>   "guid": "554ab883-1f82-48e1-bb12-5049002e7d70",</p><p>   "name": "Test Trigger",</p><p>   "processing_type": 1,</p><p>   "robot_type": 2,</p><p>   "robot_id": 24,</p><p>   "process_id": 42,</p><p>   }</p><p>   ```</p> |

3\) Обновление информации о Триггере по GUID

* Эндпоинт: /api/schedule/update&#x20;
* Метод: PUT;
* Авторизация: обязательна;
* Параметры:

Guid (обязательно): Guid Триггера;

Name: Название обновленного Триггера;

Description: Описание для обновленного Триггера;

Status: Статус для обновленного Триггера;

CronTab: Выражение Cron для нового Триггера. Только для ProcessingType = 2;

RobotType: Тип Роботов (0 - один Робот, 1 - группа Роботов);

RobotId: ID Робота для выполнения. Только для RobotType = 2;

RobotGroupId: ID Группы Роботов для выполнения. Только для RobotType = 1;

ProcessingType (обязательно): Тип обработки для нового Триггера (1 - непрерывный, 2 - по расписанию);

StartAt: Дата начала работы нового Триггера;

EndAt: Дата окончания работы нового Триггера;

MaxRuns: Макс. количество запусков для нового Триггера;

MaxRunningRobots: Максимальное количество одновременно работающих Роботов. Только для RobotType = 1;

CheckMissedTrigger: Включение механизма проверки пропущенных Триггеров для нового Триггера (1 — вкл., 0 — выкл);

ProcessId: ID Процесса для выполнения.

* Пример:

| Запрос                                                                                                                                     | Ответ  |
| ------------------------------------------------------------------------------------------------------------------------------------------ | ------ |
| <p>```json</p><p>   {</p><p>   "Guid": "554ab883-1f82-48e1-bb12-5049002e7d70",<br>  "Name": "Updated Trigger",</p><p>   }</p><p>   ```</p> |   \[]  |

4\) Удаление Триггера по GUID

* Эндпоинт: /api/schedule/delete/{guid}&#x20;
* Метод: DELETE;
* Авторизация: обязательна;
* Параметры:

Guid (обязательно): Guid Триггера;

* Пример:

| Запрос                                                     | Ответ  |
| ---------------------------------------------------------- | ------ |
| /api/schedule/delete/554ab883-1f82-48e1-bb12-5049002e7d70  |   \[]  |
