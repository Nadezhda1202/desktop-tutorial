# Работа

Позволяет управлять Работами. Пользователь может создавать новую Работу, получить информацию о Работе, обновить информацию о Работе, а также удалить Работу.

В верхней части страницы располагается таблица со всеми доступными статусами Работ:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd3cdTVSLULNfQmPA06GPkwQTkeWVseKIAN_iA11g12q9BgFmY04LzaUCTwNwJsH3J5u60ck9NtLx4_ZGhlWqPF07EzItoM5PBrtbyc0c2FCDAh_IycFJP6axHiA1XeDj4yQcOdGw?key=o0FHaGHt8wdv-FpDKfCXmTRa" alt=""><figcaption></figcaption></figure>

И таблица с Типами Работ:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcbgJpnVQakAfMRQUCurXsIM0sRuoeeWvMNft-HRS_MVC67oOKheob_KlV13gdjRmvatcxB3diz9JdZJ41aqepz_pwf9hYmDp--NpO1AkLvWtUoaOd3SlOnq56qKIXom-pAxgkUTw?key=o0FHaGHt8wdv-FpDKfCXmTRa" alt=""><figcaption></figcaption></figure>

В нижней части располагаются вкладки с методами:\


<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcoOLx4bIIfRVxf9iVEIHscbTRMHYFdI6AOoYmK02LAcrskxkoK-2A36HvdFup88L6eTUAVicK4OgZ7k4KJ1mdY1oIfgZXTc-ArGGRNbP6WOldqap8yxsVqke31vk0XOfEAnDiifw?key=o0FHaGHt8wdv-FpDKfCXmTRa" alt=""><figcaption></figcaption></figure>

По клику на иконку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdLSwPtQVC_CWGdJC5sEIG5IjqYoWO9lCnhZ0CxghJ7fnAhGpOJAOU_9RG0IbhEXrTZ01b-i7_bQZY8w6XyFfuoFjSweEl4P5YaE-KaYeqgqS6Af9ZW46VoBYYf67s1cHfEzyzA_A?key=o0FHaGHt8wdv-FpDKfCXmTRa) справа от нужного метода, раскрывается соответствующая страница:

1\) Создание Работы

* Эндпоинт: /api/job/create&#x20;
* Метод: POST;
* Авторизация: обязательна;
* Параметры:

Guid (обязательно): GUID Работы.

* Пример:

| Запрос                                              | Ответ                                                                                                                                                                                                                                                                                                      |
| --------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| /api/job/read/554ab883-1f82-48e1-bb12-5049002e7d70  | <p>  [</p><p>    "status": 1,</p><p>    "process_version_id": "55",</p><p>    "robot_id": 1,</p><p>    "account_id": 4,</p><p>    "schedule_id": 2,</p><p>    "stop_after": 2023-03-04 12:00:00,</p><p>    "created_at": 2023-03-03 12:48:06,</p><p>    "updated_at": 2023-03-03 13:24:26</p><p>    ] </p> |

&#x20;2\) Чтение Работы по GUID

* Эндпоинт: /api/job/read/{guid}&#x20;
* Метод: GET;
* Авторизация: обязательна;
* Параметры:

Guid (обязательный): GUID Версии Процесса для получения Процесса, для которого создается новая Версия.

* Пример:

| Запрос                                                         | Ответ                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| -------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| /api/processVersion/read/554ab883-1f82-48e1-bb12-5049002e7d70  | <p>```json</p><p>   {</p><p>   "id": "6",</p><p>   "guid": "554ab883-1f82-48e1-bb12-5049002e7d70",</p><p>   "process_id": "5",</p><p>   "name": "New Version",</p><p>   "description": "New Version for Process 5",</p><p>   "process_file_name": "new-file.robot",</p><p>   "created": "2023-06-29 14:51:30",</p><p>   "updated": "2023-06-29 14:51:30",</p><p>   "is_deleted": "0",</p><p>   "account_id": "5",</p><p>   }</p><p>   ```</p> |

3\) Обновление Работы

* Эндпоинт: /api/job/update&#x20;
* Метод: POST;
* Авторизация: обязательна;
* Параметры:

Guid: GUID Работы для обновления;

Status: Статус Работы для обновления.

* Пример:

| Запрос                                                                  | Ответ                |
| ----------------------------------------------------------------------- | -------------------- |
| <p>```json</p><p>   {</p><p>   "Status": 8,</p><p>   }</p><p>   ```</p> | <p>  []</p><p>  </p> |

4\) Удаление Работы по GUID

* Эндпоинт: /api/job/delete/{guid}&#x20;
* Метод: DELETE;
* Авторизация: обязательна;
* Параметры:

guid (обязательно): GUID Работы для удаления.

* Пример:

| Запрос                                                | Ответ                |
| ----------------------------------------------------- | -------------------- |
| /api/job/delete/554ab883-1f82-48e1-bb12-5049002e7d70  | <p>  []</p><p>  </p> |
