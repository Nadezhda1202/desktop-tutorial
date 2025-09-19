# API

Для интеграции с внешними системами (при необходимости), Sherpa AI Server предлагает набор инструментов для обмена данными через API.

Раздел "API" представляет собой справочник по доступным API-методам в формате Swagger. В данном разделе представлены следующие вкладки:

1. [Ключ](api.md#id-1.-klyuch-api-key)
2. [Хранилище](api.md#id-2.-khranilishe)
3. [Лог](api.md#id-3.-log)
4. [Учетные записи](api.md#id-4.-uchetnye-zapisi)
5. [ИИ Сервер](api.md#id-5.-ii-server)

## 1. Ключ (API Key)

В этом разделе пользователь может увидеть свой уникальный ключ доступа к API в поле Ключ. Также при изменении данного поля необходимо подтвердить действие нажатием одной из кнопок:

&#x20; ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcn2NquemwBIg2sr1a7Cuznn7UnutiFVKuMP0VatOn3eohYdHchb2P6ZzjbWKLiHXjo3iXEpizExtwWc1Re-FpbDNCHcL5xkgnXboe_Dx3j4-cIStBOhwqw1MXsisDQL7rw4WHlJQ?key=uiwU7hKhsXZnEihZUEsDW2IP)(Assignment) - Назначить новый ключ;

&#x20; ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXd_N-8js0FyzrxL41Nt98rMZiWVzywt4UQr7xGxXKbmMn3bKWuL3tO2yIHh1S9MwESFDIvkkaOi643AdHTBev51GLc-7lCpyDfblTMI5mHniU9sO1lYbhKVrdexjjxwskmGmqRIGQ?key=uiwU7hKhsXZnEihZUEsDW2IP) (Refresh) - Обновить текущий ключ.

Ниже расположено информационное поле "Authorization", которое используется для предоставления токена доступа, подтверждающего, что Пользователь имеет право на выполнение запрашиваемого действия.

Пример:

<figure><img src="../../.gitbook/assets/unnamed (1).png" alt=""><figcaption></figcaption></figure>

“Bearer” — тип токена,

“Y2Y5M2U3OGUtMDk1ZC00MGNjLTkwNWUtZTYyNjUwM\_\_\_\_\_\_\_” — сам токен, который сервер будет использовать для идентификации Пользователя.

Запросы к API осуществляются с обязательной передачей API Key, который хранится в настройках Учетной записи. Подробные примеры запросов приведены в разделе по каждому блоку отдельно.

Коды ответов:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcksX19BmAGA_M1-s6E21P5ntadj4BJO49TRqpomZmAH3FVRztISXbZhW50cFtBTzyI0Q2OcuKXa8qB0zc4Y71JAtpES-4AcjrI9SWOT-_famgB8kYwA-fQ7SF5pOr0u4bIcOGJ?key=uiwU7hKhsXZnEihZUEsDW2IP" alt=""><figcaption></figcaption></figure>

## 2. Хранилище

Позволяет управлять Хранилищем. Пользователь может создавать новые папки и файлы, получать информацию о папках и файлах, обновлять информацию о папках и файлах, а также удалять папки и файлы.

На данной странице располагаются вкладки с методами:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf0LPeW7G3-SrDQhTUUBUWBeHxCNJtfb__GDSkCCCu9oaR3Pr2NbsLtvFqJvAaqHrXMTyPsM8WI5qbEBby5ms3HxLbxpaHCmqNIHyz3ko_SHKJ1DMUoqc-2fbtQHj2a0OfqiTV9?key=uiwU7hKhsXZnEihZUEsDW2IP" alt=""><figcaption></figcaption></figure>

По клику на иконку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXc-aqpnIbv0y24wAoXIMcS0SCIZtQ3ttBrV8lnZw5ciOIhyT4H4tR1OZXqSS6N8wJHuZ8nMCTiE5YbwYDI5hPoxncZIRjH6WYi5-PZfmOretSWmz9BmrnZe1isbcMfKHhw95N5mFQ?key=uiwU7hKhsXZnEihZUEsDW2IP) справа от нужного метода, раскрывается соответствующая страница:

### 1. Создание новой папки

* Эндпоинт: /api/folders/create
* Метод: POST;
* Авторизация: обязательна;
* Параметры:
  * Name: Название новой папки;
  * Description: Описание для новой папки.
* Пример:

<table data-header-hidden><thead><tr><th width="289"></th><th></th></tr></thead><tbody><tr><td>Запрос</td><td>Ответ</td></tr><tr><td><p>```json</p><p>   {</p><p>   "Name": "New Folder 1",</p><p>   }</p><p>   ```</p></td><td><p>  [</p><p>   "guid": "16f94238-ede9-435b-a001-1489b32e7dc2",  </p><p>   ] </p></td></tr></tbody></table>

### 2. Получение информации о папке по GUID

* Эндпоинт: /api/folders/read/{guid}&#x20;
* Метод: GET;
* Авторизация: обязательна;
* Параметры:
  * Guid (обязательно): Guid новой папки.
* Пример:

| Запрос                                                  | Ответ                                                                                                                                                                                                                                                                                                                                                  |
| ------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| /api/folders/read/4dd6abf4-daa3-45d0-9347-6780c2b46b0c  | <p>```json</p><p>   {</p><p>   "id": 1,</p><p>   "guid": "4dd6abf4-daa3-45d0-9347-6780c2b46b0c",</p><p>   "name": "Test Folder 1",</p><p>   "description": "My new test Folder",</p><p>   "created": "2023-01-29 10:29:25",</p><p>   "updated": "2023-01-29 10:44:09",</p><p>   "is_deleted": 0,</p><p>   "account_id": 1,</p><p>   }</p><p>   ```</p> |

### &#x20;3. Получение списка папок, связанных с GUID

* Эндпоинт: /api/folders/list &#x20;
* Метод: GET;
* Авторизация: обязательна;
* Параметры: нет;
* Пример:

<table data-header-hidden><thead><tr><th width="246"></th><th></th></tr></thead><tbody><tr><td>Запрос</td><td>Ответ</td></tr><tr><td>/api/folders/list </td><td><p>```json</p><p>   [</p><p>      {</p><p>      "id": 1,</p><p>      "guid": "4dd6abf4-daa3-45d0-9347-6780c2b46b0c",</p><p>      "name": "Test Folder 1",</p><p>      "description": "My new test Folder",</p><p>      "created": "2023-01-29 10:29:25",</p><p>      "updated": "2023-01-29 10:44:09",</p><p>      "is_deleted": 0,</p><p>      "account_id": 1,</p><p>      },</p><p>      { </p><p>      "id": 2,</p><p>      "guid": "4dd6abf4-daa3-45d0-9347-6780c2b46a3c",</p><p>      "name": "Test Folder 2",</p><p>      "description": "My another new test Folder",</p><p>      "created": "2023-10-05 10:59:41",</p><p>      "updated": "2023-10-05 10:59:41",</p><p>      "is_deleted": 0,</p><p>      "account_id": 1,</p><p>      }</p><p>   ]</p><p>   ```</p></td></tr></tbody></table>

### &#x20;4. Обновление информации о папке по GUID

* Эндпоинт: /api/folders/update&#x20;
* Метод: PUT;
* Авторизация: обязательна;
* Параметры:
  * Guid (обязательно): Guid папки;
  * Name: Название нового папки;
  * Description: Описание для новой папки.
* Пример:

<table data-header-hidden><thead><tr><th width="300"></th><th></th></tr></thead><tbody><tr><td>Запрос</td><td>Ответ</td></tr><tr><td><p>```json</p><p>   {</p><p>   "Guid": "554ab883-1f82-48e1-bb12-5049002e7d70",</p><p>   "Name": "New Folder Name",</p><p>   }</p><p>   ```</p></td><td>  [] </td></tr></tbody></table>

### 5. Создание нового файла

* Эндпоинт: /api/files/create&#x20;
* Метод: POST;
* Авторизация: обязательна;
* Параметры:
  * name (обязательно): Имя файла;
  * name\_new (обязательно): Новое имя файла;
  * description (обязательно): Описание файла;
  * folder\_id (обязательно): GUID или путь к папке, в которую будет добавлен файл;
  * Metadata (обязательно): Метаданные файла;
  * file (обязательно): Файл в бинарном формате, либо в кодировках Base16 / Base32.
* Пример:

<table data-header-hidden><thead><tr><th width="320"></th><th></th></tr></thead><tbody><tr><td>Запрос</td><td>Ответ</td></tr><tr><td><p>```json</p><p>   {</p><p>   "name": "example.txt",</p><p>   "name_new": "example_new.txt",</p><p>   "description": "Описание файла",</p><p>   "folder_id": "123e4567-e89b-12d3-a456-426614174000",</p><p>   "Metadata": {},</p><p>   "file": "file_content",</p><p>   }</p><p>   ```</p></td><td>  [] </td></tr></tbody></table>

### &#x20;6. Получение информации о файле по GUID

* Эндпоинт: /api/files/read/{guid}&#x20;
* Метод: GET;
* Авторизация: обязательна;
* Параметры:
  * Name (обязательно): Название нового файла.
* Пример:

| Запрос                                                                            | Ответ  |
| --------------------------------------------------------------------------------- | ------ |
| <p>```json</p><p>   {</p><p>   "Name": "example.txt",</p><p>   }</p><p>   ```</p> |   \[]  |

### &#x20;7. Обновление информации о файле по GUID

* Эндпоинт: /api/files/update&#x20;
* Метод: PUT;
* Авторизация: обязательна;
* Параметры:
  * Name (обязательно): Название нового файла;
  * folder\_guid: ID папки, в которую необходимо добавить файл;
  * file: Файл в бинарном формате, либо в кодировках Base16 / Base32;
* Пример:

| Запрос                                                                            | Ответ  |
| --------------------------------------------------------------------------------- | ------ |
| <p>```json</p><p>   {</p><p>   "Name": "example.txt",</p><p>   }</p><p>   ```</p> |   \[]  |

### &#x20;8. Удаление файла/папки

* Эндпоинт: /api/files/delete&#x20;
* Метод: DELETE;
* Авторизация: обязательна;
* Параметры:
  * file\_folder\_guid (обязательно): GUID или путь к файлу или папке;
  * type\_processing (обязательно): Тип обработки. Возможные значения:\
    0 = Auto, 1 = File, 2 = Directory.
* Пример:

<table data-header-hidden><thead><tr><th width="361"></th><th></th></tr></thead><tbody><tr><td>Запрос</td><td>Ответ</td></tr><tr><td><p>```json</p><p>   {</p><p>   "file_folder_guid": "123e4567-e89b-12d3-a456-426614174000",</p><p>   "type_processing": 0,</p><p>   }</p><p>   ```</p></td><td>  [] </td></tr></tbody></table>

### 9. Загрузка файла

* Эндпоинт: /api/files/uploadfile
* Метод: POST;
* Авторизация: обязательна;
* Параметры:
  * file (обязательно): Файл для загрузки;
  * folder\_id: ID папки, в которую необходимо добавить файл;
  * metadata: Метаданные файла.
* Пример:

<table data-header-hidden><thead><tr><th width="334"></th><th></th></tr></thead><tbody><tr><td>Запрос</td><td>Ответ</td></tr><tr><td><p>```json</p><p>   [</p><p>   "file": "@/path/to/Document.pdf",</p><p>   "folder_id=4b5f2f2e-1c8a-4d3c-9b2a-b0f7d9a0a123",</p><p>   "metadata": </p><p>       {</p><p>        "source": "kb",</p><p>        "tags": ["policy","2025"]</p><p>       }<br>   ]</p><p>   ```</p></td><td><p>```json</p><p>   {</p><p>   "id": 123, </p><p>   "object": "file", </p><p>   "purpose": "assistants",</p><p>   "filename": "Document.pdf",</p><p>   "bytes": 1048576,</p><p>   "created_at": 1726742400,</p><p>   "status": "processed",</p><p>   "status_details": "Indexed",</p><p>   "tools_type": "retrieval" </p><p>   }<br>   ```</p></td></tr></tbody></table>

### 10. Скачивание файла по GUID

* Эндпоинт: /api/files/download/{guid}
* Метод: GET;
* Авторизация: обязательна;
* Параметры:
  * filename (обязательно): Имя файла.
* Пример:

| Запрос                                                                       | Ответ                                                                    |
| ---------------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| <p>```json</p><p>   {<br>   "filename": "example.txt",<br>   }<br>   ```</p> | <p>```json</p><p>   {</p><p>   "result": "0"</p><p>   }</p><p>   ```</p> |

## 3. Лог

Позволяет управлять Логами. Пользователь может создавать новый Лог, получить информацию о Логе, обновить информацию о Логе, а также удалить Лог.

В верхней части страницы располагается таблица со всеми уровнями Логирования:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdIIY5-xwiuQCZPPBjvj-3Ptj5o5rlrWeuY_Xnvik6zk3JU1Bfn6ScIQz-l1DzMary3DTuuSaeZW12uJJaKtz3hZkWKBcBtRy8-yrsYxj-N92mTAajC5s85H3FMCyjSR9u1KEt7wg?key=uiwU7hKhsXZnEihZUEsDW2IP" alt=""><figcaption></figcaption></figure>

В нижней части располагаются вкладки с методами:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdQda0ERXKGtO4Ko1am7Nokmvf3OP0VbCbk7Unz7A398-zDjJxv9NpnUvjlRV1RBh9K7VPsAe_87fpkjCf5O2CgK6E4_RREdydSLEMOgFrmPKdNFj9idlT_OmICro_Fo6soi-K4Xg?key=uiwU7hKhsXZnEihZUEsDW2IP" alt=""><figcaption></figcaption></figure>

По клику на иконку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXc-aqpnIbv0y24wAoXIMcS0SCIZtQ3ttBrV8lnZw5ciOIhyT4H4tR1OZXqSS6N8wJHuZ8nMCTiE5YbwYDI5hPoxncZIRjH6WYi5-PZfmOretSWmz9BmrnZe1isbcMfKHhw95N5mFQ?key=uiwU7hKhsXZnEihZUEsDW2IP) справа от нужного метода, раскрывается соответствующая страница:

### 1. Создание Лога

* Эндпоинт: /api/log/create&#x20;
* Метод: POST;
* Авторизация: обязательна;
* Параметры:
  * RobotGUID: GUID Робота;
  * ProcessVersionGUID: GUID версии Процесса;
  * JobGUID: GUID Работы;
  * Level: уровень Логирования;

Message (обязательно): текст Лога.

* Пример:

<table data-header-hidden><thead><tr><th width="365"></th><th></th></tr></thead><tbody><tr><td>Запрос</td><td>Ответ</td></tr><tr><td><p>```json</p><p>   {</p><p>   "RobotGUID": "16f94238-ede9-435b-a001-1489b32e7dc2",</p><p>   "ProcessVersionGUID": "c39713ea-d8b9-4669-976e-5ff39677dc64",</p><p>   "JobGUID": "70ce211b-3c9a-48f6-8e71-11088b41b825",</p><p>   "Level": 1,</p><p>   "Message": "no message",</p><p>   }</p><p>   ```</p></td><td>  [] </td></tr></tbody></table>

### &#x20;2. Получение информации о Логе по GUID

* Эндпоинт: /api/log/read/{guid}&#x20;
* Метод: GET;
* Авторизация: обязательна;
* Параметры:
  * Guid (обязательно): Guid Лога.
* Пример:

<table data-header-hidden><thead><tr><th width="288"></th><th></th></tr></thead><tbody><tr><td>Запрос</td><td>Ответ</td></tr><tr><td>/api/log/read/c39713ea-d8b9-4669-976e-5ff39677dc64 </td><td><p>```json</p><p>   {</p><p>   "id": "1",</p><p>   "guid": "16f94238-ede9-435b-a001-1489b32e7dc2",</p><p>   "robot_id": "16",</p><p>   "process_version_id": "39",</p><p>   "job_id": "70",</p><p>   "Level": 1,</p><p>   "Message": "no message",</p><p>   "created_at": "2023-09-17 15:39:06",</p><p>   "updated_at": "2023-09-17 16:39:06",</p><p>   }</p><p>   ```</p></td></tr></tbody></table>

### &#x20;3. Получение списка файлов, связанных с GUID

* Эндпоинт: /api/log/list
* Метод: POST;
* Авторизация: обязательна;
* Параметры: нет.
* Пример:

| Запрос        | Ответ  |
| ------------- | ------ |
| /api/log/list |   \[]  |

### 4. Удаление Логов, принадлежащих текущей учетной записи и созданных до выбранного времени

* Эндпоинт: /api/log/purge&#x20;
* Метод: DELETE;
* Авторизация: обязательна;
* Параметры:
  * Time (обязательно): временная метка в формате Unix (Unix timestamp);
* Пример:

| Запрос                                                                           | Ответ  |
| -------------------------------------------------------------------------------- | ------ |
| <p>```json</p><p>   {</p><p>   "Time": "1590481487",</p><p>   }</p><p>   ```</p> |   \[]  |

## 4. Учетные записи

Позволяет управлять Учетными записями. Пользователь может создавать новую Учетную запись, получить информацию об Учетной записи, обновить информацию об Учетной записи, а также удалить Учетную запись.

На данной странице располагаются вкладки с методами:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdDTSQXe5IoyrHUS52Td2gzmMKdi7mr_ku4yvJDZtzP7bGwr5mC2JBqSL9GtVGX1hC4Qwa42ksS6gTqYOhQznfWUTVOd2mO6uPYDIqBPmXB4ou9r4PCRcWiDtkI_Rldm-y_JYOX7w?key=uiwU7hKhsXZnEihZUEsDW2IP" alt=""><figcaption></figcaption></figure>

По клику на иконку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXc-aqpnIbv0y24wAoXIMcS0SCIZtQ3ttBrV8lnZw5ciOIhyT4H4tR1OZXqSS6N8wJHuZ8nMCTiE5YbwYDI5hPoxncZIRjH6WYi5-PZfmOretSWmz9BmrnZe1isbcMfKHhw95N5mFQ?key=uiwU7hKhsXZnEihZUEsDW2IP) справа от нужного метода, раскрывается соответствующая страница:

* Эндпоинт: /api/account/create&#x20;
* Метод: POST;
* Авторизация: обязательна;
* Параметры:
  * Login (обязательно) — Логин для новой Учетной записи;
  * Password (обязательно) — Пароль для новой Учетной записи;
  * FirstName — Имя для новой Учетной записи;
  * LastName — Фамилия для новой Учетной записи;
  * Email — E-mail для новой Учетной записи;
  * Phone — Телефон для новой Учетной записи;
  * Company — Компания для новой Учетной записи;
  * Department — Отдел для новой Учетной записи.
* Пример:

| Запрос                                                                                                                           | Ответ                                                |
| -------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------- |
| <p>```json</p><p>   {</p><p>   "Login": "New Test Account",</p><p>   "Password": "newPassword123",</p><p>    }</p><p>    ```</p> |   \["guid": "c39713ea-d8b9-4669-976e-5ff39677dc64"]  |

### 2. Получение информации об Учетной записи по GUID

* Эндпоинт: /api/account/read/{guid}&#x20;
* Метод: GET;
* Авторизация: обязательна;
* Параметры:
  * GUID (обязательно): GUID Учетной записи.
* Пример:

| Запрос                                                  | Ответ                                                                                                                                                                                                                                                                                         |
| ------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| /api/account/read/c39713ea-d8b9-4669-976e-5ff39677dc64  | <p>  ```json</p><p>     {</p><p>      "id": "5",</p><p>      "guid": "554ab883-1f82-48e1-bb12-5049002e7d70",</p><p>      "login": "new Account",</p><p>      "password": "123455678",</p><p>      "first name": "Vasya",</p><p>      "last name": "Ivanov",</p><p>      }</p><p>      ```</p> |

### 3. Обновление информации об Учетной записи по GUID

* Эндпоинт: /api/account/update&#x20;
* Метод: PUT;
* Авторизация: обязательна;
* Параметры:
  * Guid (обязательно) — GUID Учетной записи для обновления;
  * Login — Логин Учетной записи для обновления;
  * Password — Пароль Учетной записи для обновления;
  * FirstName — Имя в Аккаунте для обновления;
  * LastName — Фамилия Учетной записи для обновления;
  * Email — E-mail Учетной записи для обновления;
  * Phone — Телефон в Аккаунте для обновления;
  * Company — Компания Учетной записи для обновления;
  * Department — Отдел Учетной записи для обновления.
* Пример:

| Запрос                                                                                                                                        | Ответ  |
| --------------------------------------------------------------------------------------------------------------------------------------------- | ------ |
| <p>```json</p><p>   {</p><p>   "Guid": "554ab883-1f82-48e1-bb12-5049002e7d70", </p><p>   "Login": "Test Account",</p><p>   }</p><p>   ```</p> |   \[]  |

### 4. Удаление Учетной записи по GUID

* Эндпоинт: /api/account/delete/{guid}&#x20;
* Метод: DELETE;
* Авторизация: обязательна;
* Параметры:
  * Guid (обязательно): Guid Учетной записи;
* Пример:

| Запрос                                                    | Ответ  |
| --------------------------------------------------------- | ------ |
| /api/account/delete/554ab883-1f82-48e1-bb12-5049002e7d70  |   \[]  |

## 5. ИИ Сервер

Позволяет управлять нейросетями. Пользователь может принять JSON-объект и вернуть ответ от нейросети, получить информацию о текущей используемой модели, получить ответ от Ассистента или отправить сообщение в чат.

<figure><img src="../../.gitbook/assets/изображение (325).png" alt=""><figcaption></figcaption></figure>

По клику на иконку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXc-aqpnIbv0y24wAoXIMcS0SCIZtQ3ttBrV8lnZw5ciOIhyT4H4tR1OZXqSS6N8wJHuZ8nMCTiE5YbwYDI5hPoxncZIRjH6WYi5-PZfmOretSWmz9BmrnZe1isbcMfKHhw95N5mFQ?key=uiwU7hKhsXZnEihZUEsDW2IP) справа от нужного метода, раскрывается соответствующая страница:

### 1. Добавление текстовых чанков к существующему файлу

* Эндпоинт: /api/files/addchunk
* Метод: POST;
* Авторизация: обязательна;
* Параметры:
  * text\_chunk (обязательно): Текстовый чанк;
  * guid\_file (обязательно): GUID файла или путь к файлу;
  * metadata (обязательно): Метаданные чанка.
* Пример:

<table data-header-hidden><thead><tr><th width="357"></th><th></th></tr></thead><tbody><tr><td>Запрос</td><td>Ответ</td></tr><tr><td><p>```json</p><p>   {</p><p>   "text_chunk": "Текстовый чанк",</p><p>   "guid_file": "123e4567-e89b-12d3-a456-426614174000", </p><p>   "metadata": {},</p><p>   }</p><p>   ```</p></td><td><p></p><p>  [] </p></td></tr></tbody></table>

### &#x20;2. Нахождение эмбеддингов по заданному тексту

* Эндпоинт: /api/files/search
* Метод: GET;
* Авторизация: обязательна;
* Параметры:
  * text\_for\_search (обязательно): Текст для поиска;
  * n\_top (обязательно): Количество топовых результатов;
  * files\_ids (обязательно): JSON строка со списком GUID или путей к файлам;
  * folder\_ids (обязательно): JSON строка со списком GUID или путей к папкам;
  * enable\_subfolders (обязательно): Включение подпапок. Возможные значения: 0 = False, 1 = True.
* Пример:

<table data-header-hidden><thead><tr><th width="357"></th><th></th></tr></thead><tbody><tr><td>Запрос</td><td>Ответ</td></tr><tr><td><p>```json</p><p>   {</p><p>   "text_for_search": "пример текста",</p><p>   "n_top": 5,</p><p>   "files_ids": "[\"123e4567-e89b-12d3-a456-426614174000\", \"123e4567-e89b-12d3-a456-426614174001\"]",  </p><p>   "folder_ids": "[\"123e4567-e89b-12d3-a456-426614174002\", \"123e4567-e89b-12d3-a456-426614174003\"]",  </p><p>    "enable_subfolders": 1</p><p>    }</p><p>    ```</p></td><td>  [] </td></tr></tbody></table>

### 3. Получение ответа от нейросети

* Эндпоинт: /api/threads/message
* Метод: POST;
* Авторизация: обязательна;
* Параметры:
  * messages (обязательно): Массив объектов, каждый из которых представляет сообщение;
  * content: Текст сообщения;
  * role: Роль отправителя сообщения. Возможные значения: system, user;
  * name: Имя отправителя сообщения;
  * temperature: Число с плавающей точкой, определяющее степень случайности в ответах нейросети. Значение по умолчанию: 0.7;
  * model (обязательно): Строка, указывающая путь к модели, например, /model-store/meta-llama/Meta-Llama-3-8B-Instruct;
  * assistant\_id: Идентификатор ассистента;
  * thread\_id: Идентификатор чата;
  * info: Системная информация.
* Пример:

<table data-header-hidden><thead><tr><th width="364"></th><th></th></tr></thead><tbody><tr><td>Запрос</td><td>Ответ</td></tr><tr><td><p>```json</p><p>   {</p><p>   "messages": [</p><p>        {</p><p>        "content": "Привет, как дела?",</p><p>        "role": "user",</p><p>        "name": "Иван"</p><p>        },</p><p>        {</p><p>        "content": "Все хорошо, спасибо!",</p><p>        "role": "system",</p><p>        "name": "Система"</p><p>        }</p><p>    ]</p><p>   "model": "/model-store/meta-llama/Meta-Llama-3-8B-Instruct",</p><p>   "temperature": 0.7,</p><p>   "assistant_id": "123e4567-e89b-12d3-a456-426614174000",</p><p>   "thread_id": 200</p><p>    }</p><p>    ```</p></td><td>[]</td></tr></tbody></table>

### &#x20;4. Получение информации о текущей используемой модели

* Эндпоинт: /api/threads/models
* Метод: GET;
* Авторизация: обязательна;
* Параметры: нет.
* Пример:

<table data-header-hidden><thead><tr><th width="255"></th><th></th></tr></thead><tbody><tr><td>Запрос</td><td>Ответ</td></tr><tr><td>/api/threads/models</td><td><p>```json</p><p>      {</p><p>      "object": "list",</p><p>      "data": [</p><p>           {</p><p>           "id": "/model-store/meta-llama/Meta-Llama-3-8B-Instruct",    </p><p>           "object": "model",</p><p>           "created": 1735113788,</p><p>           "owned_by": "vllm",</p><p>           "root": "/model-store/meta-llama/Meta-Llama-3-8B-Instruct",</p><p>           "parent": null,</p><p>           "permission": [</p><p>                {</p><p>                "id": "modelperm-d7ddf889e9aa423b9949d1cdc551ff21",</p><p>                "object": "model_permission",</p><p>                "created": 1735113788,</p><p>                "allow_create_engine": false,</p><p>                "allow_sampling": true,</p><p>                "allow_logprobs": true,</p><p>                "allow_search_indices": false,</p><p>                "allow_view": true,</p><p>                "allow_fine_tuning": false,</p><p>                "organization": "*",</p><p>                "group": null,</p><p>                "is_blocking": false</p><p>                }</p><p>           ]</p><p>           }</p><p>      ]</p><p>      }</p><p>      ```</p></td></tr></tbody></table>

### 5. Получение сообщения от Ассистента

* Эндпоинт: /api/threads/getUpdates
* Метод: GET;
* Авторизация: обязательна;
* Параметры:
  * assistant\_id (обязательно): Идентификатор ассистента;
  * offset: Идентификатор сообщения, с которого необходимо получить список сообщений;
  * thread\_id: Идентификатор чата.
* Пример:

<table data-header-hidden><thead><tr><th width="249"></th><th></th></tr></thead><tbody><tr><td>Запрос</td><td>Ответ</td></tr><tr><td>/api/threads/getUpdates?assistant_id=123e4567-e89b-12d3-a456-426614174000&#x26;offset=0</td><td><p>```json</p><p>   {</p><p>   "error": "Licensing error: license is absent, expired, not activated or limits are reached"</p><p>    }</p><p>  </p><p>   или</p><p>  </p><p>   {</p><p>   "result": 1,</p><p>   "data": [</p><p>        {</p><p>        "id": "1195",</p><p>        "thread_id": "221",</p><p>        "created": "2024-09-11 09:08:48",</p><p>        "updated": "2024-09-11 09:08:48",</p><p>        "content": "{\"type\":\"text\",\"text\":{\"value\":\"привет\",\"annotations\":[]}}",</p><p>        "role": "user",</p><p>        "account_id": "1",</p><p>        "is_deleted": "0",</p><p>        "folder_id": "[]",</p><p>        "file_id": "[]",</p><p>        "update_id": null</p><p>        },</p><p>        {</p><p>        "id": "1196",</p><p>        "thread_id": "221",</p><p>        "created": "2024-09-11 09:08:49",</p><p>        "updated": "2024-09-11 09:08:49",</p><p>        "content": "{\"type\":\"text\",\"text\":{\"value\":\"Привет! Рад видеть вас! Как я могу помочь вам сегодня?\",\"annotations\":[]}}",</p><p>        "role": "assistant",</p><p>        "account_id": "1",</p><p>        "is_deleted": "0",</p><p>        "folder_id": null,</p><p>        "file_id": null,</p><p>        "update_id": null</p><p>        }</p><p>        ]</p><p>   }</p><p>   ```</p></td></tr></tbody></table>

### &#x20;6. Отправка сообщения в чат

* Эндпоинт: /api/threads/chat
* Метод: POST;
* Авторизация: обязательна;
* Параметры:
  * thread\_id (обязательно): Идентификатор чата;
  * role (обязательно): Роль отправителя сообщения (например, assistant);
  * content (обязательно): Текст сообщения;
  * assistant\_id: Идентификатор ассистента;
  * model\_id: Идентификатор группы моделей;
  * temperature: Число с плавающей точкой, определяющее степень случайности в ответах нейросети. Значение по умолчанию: 0.7;
  * prompt: Начальный контекст или инструкция для модели;
  * title: Заголовок чата;
  * file\_id: Список ID файлов, прикрепляемых к сообщению (JSON-массив);
  * folder\_id: Список ID папок (или объектов с id), прикрепляемых к сообщению (JSON-массив).
* Пример:

| Запрос                                                                                                                                                                                                                                | Ответ                                                                                                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <p> ```json</p><p>{<br>        "thread_id": 200,<br>        "role": "assistant",<br>        "content": "Привет! Как я могу помочь вам сегодня?",<br>        "file_id": [101, 102],<br>        "folder_id": [201, 202]<br>}<br>```</p> | <p>  ```json</p><p>     [</p><p>        "result": 1,<br>        "data": {<br>        "message_id": 1234,<br>        "file_id": [101, 102],<br>        "folder_id": [201, 202]<br>        }</p><p>     ]</p><p>     ```</p> |
