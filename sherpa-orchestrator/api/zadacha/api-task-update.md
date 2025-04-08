# /api/task/update

Обновление Задачи

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
