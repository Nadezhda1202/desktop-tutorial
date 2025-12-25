# /api/task/create

Создание Задачи

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
