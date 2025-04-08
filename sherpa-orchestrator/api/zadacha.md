# Задача

Позволяет управлять Задачами. Пользователь может создавать новую Задачу, получить информацию о Задаче, обновить информацию о Задаче, а также удалить Задачу.

В верхней части страницы располагается таблица со всеми доступными статусами Задач:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc1MUCckvXpVxNjvkhQhfVbPc0XWOfLp743gwczLtux6B9LuU1amMhxbFEEo-FgCAd_mfHKasCFbxOTljx9bFp9xEvROcbmoQ_Nd76q3VFPEtLDs8RD-8KCZkIH2LT-feFLws_-?key=o0FHaGHt8wdv-FpDKfCXmTRa" alt=""><figcaption></figcaption></figure>

В нижней части располагаются вкладки с методами:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXddWx_ZbT9YozbQPBHc_33FubScB1yOukfMSc0NjvPUoQE6Dq5mubBnDgnNE3zxfAl5h0kSIuAqoqQfoj9l6DHGy85foy4_LE9RJF0Du-IbmpaFHBz3y3WDoP_MLhExK_l51wJPgw?key=o0FHaGHt8wdv-FpDKfCXmTRa" alt=""><figcaption></figcaption></figure>

По клику на иконку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdLSwPtQVC_CWGdJC5sEIG5IjqYoWO9lCnhZ0CxghJ7fnAhGpOJAOU_9RG0IbhEXrTZ01b-i7_bQZY8w6XyFfuoFjSweEl4P5YaE-KaYeqgqS6Af9ZW46VoBYYf67s1cHfEzyzA_A?key=o0FHaGHt8wdv-FpDKfCXmTRa) справа от нужного метода, раскрывается соответствующая страница:

1\) Создание Задачи

* Эндпоинт: /api/task/create&#x20;
* Метод: POST;
* Авторизация: обязательна;
* Параметры:

Name (обязательно): Название новой Задачи;

QueueGuid (обязательно): GUID Очереди для добавления новой Задачи;

Description: Описание для новой Задачи;

Comment: Комментарий для новой Задачи;

Deadline: Крайний срок для новой Задачи;

Retries: Количество повторных попыток для новой Задачи;

Tags: Теги для новой Задачи, разделенные ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdIcUefyW11ns_VP24F0H_BqMA5881NJVZtlSwuRUlujF5LndDsBb1AaSgHjJWeTYl9-1bvrIE0vYohBzm0_bH8a5wdpJeNFTrmaLfCk7Ju2IUfk5W_3Lyyrl9eWEDno6xqZKcTbA?key=o0FHaGHt8wdv-FpDKfCXmTRa);

Parameters: Параметры новой Задачи.

* Пример:

| Запрос                                                                                                                                          | Ответ                                                          |
| ----------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| <p>```json</p><p>   {</p><p>   "Name": "Test Task",</p><p>   "QueueGuid": "16f94238-ede4343-435b-a001-1489b324342",</p><p>   }</p><p>   ```</p> | <p>[</p><p>"guid":"16f94238-ede9-435b-a001-1489b32e7dc2"] </p> |

2\) Получение Задачи по GUID или имени

* Эндпоинт: /api/task/read &#x20;
* Метод: GET;
* Авторизация: обязательна;
* Параметры:

Guid (обязательно): Guid или Название Задачи.

* Пример:

| Запрос              | Ответ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| /api/task/read/123  | <p>  [ </p><p>   "id":"45396",</p><p>   "guid":"20de46db-18af-4d51-9908-07e88dc0c61f",</p><p>   "queue_id":"6",</p><p>   "name":"123",</p><p>   "description":"",</p><p>   "status":"0",</p><p>   "job_id":null,</p><p>   "priority":"1",</p><p>   "created":"2023-08-25 14:45:50",</p><p>   "started":"2023-08-25 15:42:50",</p><p>   "postponed":null,</p><p>   "deadline":"2023-09-30 10:30:00",</p><p>   "updated":"2023-09-28 10:26:04",</p><p>   "comment":"test",</p><p>   "is_deleted":"0",</p><p>   "account_id":"1",</p><p>   "tags":"", "retries":"0",</p><p>   "parent_task":null,</p><p>   ] </p> |

3\) Получение детальной информации о конкретной Задаче из указанной Очереди по GUID или имени данной Очереди по указанным параметрам

* Эндпоинт: /api/task/filter/read/{guid}\[/{filters}]  &#x20;
* Метод: POST;
* Авторизация: обязательна;
* Параметры:

Name (обязательно): Guid или Название Задачи.

* Пример:

| Запрос                                                                              | Ответ  |
| ----------------------------------------------------------------------------------- | ------ |
| <p>  ```json</p><p>   {</p><p>   "Name": "Test Robot",</p><p>   } </p><p>   ```</p> |   \[]  |

4\) Получение списка Задач, связанных с GUID или именем Очереди

* Эндпоинт: /api/task/filter/list/{guid}\[/{filters}]  &#x20;
* Метод: POST;
* Авторизация: обязательна;
* Параметры:

Name (обязательно): Guid или Название Очереди.

* Пример:

| Запрос                                                                              | Ответ  |
| ----------------------------------------------------------------------------------- | ------ |
| <p>  ```json</p><p>   {</p><p>   "Name": "Test Robot",</p><p>   } </p><p>   ```</p> |   \[]  |

5\) Обновление Задачи

* Эндпоинт: /api/task/update&#x20;
* Метод: PUT;
* Авторизация: обязательна;
* Параметры:

Guid (обязательно): GUID или имя Задачи;

Name: Название обновленной Задачи;

QueueGuid: GUID Очереди для добавления новой Задачи;

Description: Описание для обновленной Задачи;

Comment: Комментарий для обновленной Задачи;

Deadline: Крайний срок для обновленной Задачи;

Retries: Количество повторных попыток для обновленной Задачи;

Tags: Теги для обновленной Задачи, разделенные ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdIcUefyW11ns_VP24F0H_BqMA5881NJVZtlSwuRUlujF5LndDsBb1AaSgHjJWeTYl9-1bvrIE0vYohBzm0_bH8a5wdpJeNFTrmaLfCk7Ju2IUfk5W_3Lyyrl9eWEDno6xqZKcTbA?key=o0FHaGHt8wdv-FpDKfCXmTRa);

Parameters: Параметры обновленной Задачи;

Status: Статус обновленной Задачи.

* Пример:

| Запрос                                                                                                                              | Ответ  |
| ----------------------------------------------------------------------------------------------------------------------------------- | ------ |
| <p>  ```json</p><p>   {</p><p>   "guid": "0cff3e77-78fc-405e-98c9-ef5076c0c883",</p><p>   "status": 1,</p><p>   } </p><p>   ```</p> |   \[]  |

6\) Удаление Задачи

* Эндпоинт: /api/task/delete&#x20;
* Метод: DELETE;
* Авторизация: обязательна;
* Параметры:

Guid (обязательно): GUID Задачи.

* Пример:

| Запрос                                                                 | Ответ                                         |
| ---------------------------------------------------------------------- | --------------------------------------------- |
| <p>/api/task/delete/0cff3e77-78fc-405e-98c9-ef5076c0c883 </p><p>  </p> | <p>  [</p><p>   "result": "1"</p><p>   ] </p> |

7\) Управление Тегами

* Эндпоинт: /api/task/addTag
* Метод: PUT;
* Авторизация: обязательна;
* Параметры:

TaskGuid (обязательно): GUID Задачи;

TagNames (обязательно): Теги для Задачи, разделенные ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdIcUefyW11ns_VP24F0H_BqMA5881NJVZtlSwuRUlujF5LndDsBb1AaSgHjJWeTYl9-1bvrIE0vYohBzm0_bH8a5wdpJeNFTrmaLfCk7Ju2IUfk5W_3Lyyrl9eWEDno6xqZKcTbA?key=o0FHaGHt8wdv-FpDKfCXmTRa).

* Пример:

| Запрос                                                                                                                                                  | Ответ  |
| ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ |
| <p>  ```json</p><p>   {</p><p>   "TaskGuid": "0cff3e77-78fc-405e-98c9-ef5076c0c883",</p><p>   "TagNames": "test;mytask;",</p><p>   } </p><p>   ``` </p> |   \[]  |

8\) Удаление Тегов из Задачи по GUID или имени

* Эндпоинт: /api/task/removeTag&#x20;
* Метод: DELETE;
* Авторизация: обязательна;
* Параметры:

TaskGuid (обязательно): GUID Задачи;

TagNames (обязательно): Теги для Задачи, разделенные ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdIcUefyW11ns_VP24F0H_BqMA5881NJVZtlSwuRUlujF5LndDsBb1AaSgHjJWeTYl9-1bvrIE0vYohBzm0_bH8a5wdpJeNFTrmaLfCk7Ju2IUfk5W_3Lyyrl9eWEDno6xqZKcTbA?key=o0FHaGHt8wdv-FpDKfCXmTRa).

* Пример:

| Запрос                                                                                                                                                  | Ответ  |
| ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ |
| <p>  ```json</p><p>   {</p><p>   "TaskGuid": "0cff3e77-78fc-405e-98c9-ef5076c0c883",</p><p>   "TagNames": "test;mytask;",</p><p>   } </p><p>   ``` </p> |   \[]  |
