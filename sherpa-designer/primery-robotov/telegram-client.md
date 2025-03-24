# Telegram client

Рассмотрим пример робота, который демонстрирует работу с Телеграмом в качестве клиента.

**Важно!** _Данные о подключении к Телеграм можно найти по пути: c:\Users\User\AppData\Roaming\Sherpa RPA Data\Telegram\\_

Проект робота состоит из одной диаграммы и файла в формате .mp3. Если описывать пошагово, то данный робот работает следующим образом:

1. Создает подключение к Telegram.
2. Получает список контактов.
3. Выгружает список всех чатов.
4. Выгружает сообщения из группового чата.
5. Выгружает сообщения из чата с пользователем.
6. Отправляет сообщение, отправляет файл.
7. Получает сообщения. (если в сообщении есть файл, то сохраняет его, а если только текст, то выводит диалоговое окно с этим текстом).

**Диаграмма проекта** выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeTVSmAA0KSdneA0p4IwD4KhbHRC0X22LYlxiguELSkdY4qAMSC4fXoV8Pb6KPkiGExR8umYok_2XDSfqCVl6Y5w_XlqzxMfAuuG11OwvghKpck6uk8nXPJdvF5_Fi5dYflIl3m1A?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcconIwpTRdP46FW4rvRdg28gtH9a0J9goBNelhIcrZV7NJi3aWtoeJeJOAyVUzVpjIP7TDqIE3s33hJOyWl1fik1Wv8mv4UwuuysjCH7d1sk_Q0qrcKvEUUIqdg7L3jbTHc7ui1Q?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Клиент. Создать подключение”** позволяет создать подключение к Telegram в виде клинета. Для данного блока указаны следующие свойства:

* Имя сессии (имя сессии);
* Время ожидания (время ожидания ответа от сервера Telegram в секундах).

На выходе получено “Подключение” – переменная с объектом текущего подключения к Телеграм. В остальных блоках необходимо указывать именно эту переменную.

**Важно!** _Для сохранения авторизации необходимо задать уникальное имя сессии и впоследствии для подключения использовать его. При первом запуске откроется форма авторизации. Для авторизации необходимо будет ввести телефон, затем сервис отправит код, который придет в уже подключенный клиент Telegram (например на телефоне). Затем ввести этот код и нажать “Авторизоваться”._

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfEBZsUP-SV1SWUbHcDE-H-1eS6DrFiQB1AbVzKF-F9xrokYEjsoW__6v8JjZautTeswHc0OBcIN4RLz_LtW-GtNH3SnIpKJd7520_jxrpahSh0hNPNbJtuwMZYqTdXb6L9lDqJ?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

3. **Блок “Клиент. Список контактов”** возвращается список контактов. Для данного блока указано одно свойство “Подключение” (объект подключения клиента. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Клиент. Создать подключение" из группы Telegram, который ранее использовался для подключения клиента Telegram). На выходе  получено свойство “Контакты” (таблица данных, содержащая список контактов. Таблица содержит следующие колонки: Id, Username, FirstName, LastName, Phone)

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcFmpytElc8Xy4c6aZA8WYcTNhUVQuXkY40AMS9LGhq2MPBgNlaIlHIK4WmWtbupps65C3AURVM_uFHjtF_AG9A3iLBYcpbmDPGe-UXmabGcQZYqewA4lg7Fo1lBgTaWerAA5w9?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

4. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., выводит переменную $Contacts в лог.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdTm9JP5hlelaZkmrQ7vnBEMwFWkyIVyosu8c3FYRFzJvGsKKNfwmszkFm4NZM6dxra4zgB3Qf4djuodwU8qQNHgbxBbEkJjGi5E_4pU_BRPEzcP-WYvw3nHANaqLmdsweLVU3rWg?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

5. **Блок “Клиент. Выгрузить сообщения”** позволяет выгрузить сообщения из чата.&#x20;

**Примечание:** _выгрузка сообщений происходит с последнего, т.е. снизу вверх._&#x20;

Для данного блока указаны следующие свойства:

* Подключение (объект подключения клиента. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Клиент. Создать подключение" из группы Telegram, который ранее использовался для подключения клиента Telegram);
* Назначение (объект назначения. Данная строка может содержать следующие значения: Id чата, название чата, Id пользователя, комбинацию "FirstName LastName" пользователя, значение Username пользователя, телефон пользователя);
* Смещение (идентификатор сообщения, с которого начинается выгрузка. По умолчанию установлено значение 0, что обозначает загрузку сообщений с самого последнего);
* Количество (ограничение на количество выгружаемых сообщений за один раз).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe9-CNn93huf-1vZ7rLAFMHMO2lC649PY2vTt3_6x9nBzVM1JgQevcKnIEWM4mLOFjG6d0NEoyLpL-3ik_2oHn3GGo63WJI1Za8ouJxDAVfWr9tup96rYfyAyVUe4cNgXwy7iNr?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

6. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., выводит переменную $Chats в лог.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfQQo3GkoKwgmDd9S5hKt8lAiMlLmcp_RzFLrNaYRdnOjtuYp0t7cA3561AtCZzHnQ54blT1YuY3C6QoGJuAiel0of3IZfRCOMljyf6SgTAZ6A9-gDQiMrWDeneN8CYwvVlPRBeYA?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

7. **Блок “Клиент. Выгрузить сообщения”** позволяет выгрузить сообщения из чата. Для данного блока указаны следующие свойства:

* Подключение (объект подключения клиента. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Клиент. Создать подключение" из группы Telegram, который ранее использовался для подключения клиента Telegram);
* Назначение (объект назначения. Данная строка может содержать следующие значения: Id чата, название чата, Id пользователя, комбинацию "FirstName LastName" пользователя, значение Username пользователя, телефон пользователя);
* Смещение (идентификатор сообщения, с которого начинается выгрузка. По умолчанию установлено значение 0, что обозначает загрузку сообщений с самого последнего);
* Количество (ограничение на количество выгружаемых сообщений за один раз).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcQj6Lv06tw9iLK88FHkpy5LOeRb-L8Uj8Od1eTZwarIX0BIbuBNENnPPx-4n4pd1sAQ7HZUuq6mQblRdjNH-zXmatKJ7u8rhRd5HDuwIU7iFiTV0iLBunWAMGREPdL-at1_m1A?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

8. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., выводит переменную $Messages в лог.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfg579KjTDrDMS0N_oUMbEsfF94CZHqwUddvyuKNhj18E9Jrz2EvsR9maNpTgalDh7d1_IaTDsvvJVOfIdp9vjKoCSib5nQBGBDWLSiu9c3J6_B8MdI_jbD7fZmktT7DdVmiuAd?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

9. **Блок “Клиент. Отправить сообщение”** позволяет отправить текстовое сообщение. Для данного блока указаны следующие свойства:

* Подключение (объект подключения клиента. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Клиент. Создать подключение" из группы Telegram, который ранее использовался для подключения клиента Telegram);
* Назначение (объект назначения. Данная строка может содержать следующие значения: Id чата, название чата, Id пользователя, комбинацию "FirstName LastName" пользователя, значение Username пользователя, телефон пользователя);
* Разрешить импорт (установленный флаг позволяет произвести попытку импорта пользователя в контакты, если он не найден. Данная возможность доступна,если в качестве “Назначения” задан номер телефона, который зарегистрирован в Телеграм. Только после этого появится возможность отправлять сообщения пользователю по его телефону);
* Текст (текст сообщения).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeOoFYEfytgJ4BR1BQroum0nIktd_BYAQiKW55b3l2ZCTvMh5qqQzlusdIMG8b6AOe7Bo4frQL9J77j1W0JfsFE0v1-tXfecj5sshRC8Ljd0_3KGuCsrG7ZimTe8ti3VCDayA8q?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

10. **Блок “Клиент. Отправить файл”** позволяет отправить файл, в данном случае “test.mp3”. Для данного блока указаны следующие свойства:

* Подключение (объект подключения клиента. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Клиент. Создать подключение" из группы Telegram, который ранее использовался для подключения клиента Telegram);
* Назначение (объект назначения. Данная строка может содержать следующие значения: Id чата, название чата, Id пользователя, комбинацию "FirstName LastName" пользователя, значение Username пользователя, телефон пользователя);
* Имя файла (имя и путь к файлу, который будет отправлен).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcDeF2FmKsYLyOQ7bjwAOFqB7QhxPtID-qJFmRoWVlDcs4ofGK9qHnXJyywvkj8zcm1Q9nBmymD_uYtZB2DRmwgqYhuU_YKbt_ETaA5D5Oiq49XzZN6HUOmGM5LQ-RYrrtTH3GD_A?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

11. **Блок “Клиент. Получить сообщение”** позволяет получить сообщение из очереди. Для данного блока указано свойство “Подключение” (объект подключения клиента. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Клиент. Создать подключение" из группы Telegram, который ранее использовался для подключения клиента Telegram). На выходе получено “Сообщение” (возвращается объект сообщения. Доступные свойства: Id - id сообщения; Date - дата; From - от кого сообщение; To - кому сообщение; FromId - Id пользователя от кого сообщение; Title - название чата;  Text - текст сообщения; Type - текстовое обозначение типа сообщения; IsFile - указывает, есть ли в сообщении файл (здесь можно более точно определить тип с помощью свойств IsDocument, IsPhoto). Например: $TMessage.IsPhoto - если равно $true, то в сообщении есть фото)

**Примечание:** _если сообщений в очереди нет, то генерируется ошибка._

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfsjRn2XJ3nNtydpuBaJvRNQIOSpiwwpz86-KoATce7IVgRq667HzS-Mo-aOhBsLlMN5ioYrurcCEIvFoynBZvxQawS7Xxi9uPXeON17IYvD9WfN_b-jzVtVKN3sFbT4WpuzgqHBw?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

12. **Блок “Пауза”** приостанавливает выполнение работы сценария на заданное время. Для данного блока указаны следующие свойства:

* Единица измерения (единица измерения, в которой задана длительность паузы);&#x20;
* Длительность (значение промежутка времени в заданных единицах измерения);
* Запустить сразу (установленный флаг включает применение задержки сразу при первом проходе этого блока с момента запуска сценария робота).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd9_866ERuDG15RzCLhFGvwAurbzQAI0lzi9APfQxHC5g66TuWRboUb4vLrbDTjM8ZjH2KNMUGWZbhripKqrBoFxXdrV-YsF1gBW-lxGc9GPEIfcx9ORIzoGdTOKV8PlG1x_u6eaQ?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

13. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $TMessage.Text=="stop". Т.е., есть ли в тексте сообщения слово "stop".

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfetvGdQh1RBAn6_QxmnDu-YVINpLpUETdL-eow5ssPae1kTPCXSeBF8tPVaAJprEsdJbMr_cae656kWQeOcmhS0_Ny6cBJzxBUYRxwYM4tuLyUifBt59Hzi6FYc_AgYyFBVOCFaQ?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

14. **Блок “Клиент. Закрыть подключение”** позволяет закрыть подключение клиента. Для данного блока указано одно свойство – “Подключение” (объект подключения клиента. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Клиент. Создать подключение" из группы Telegram, который ранее использовался для подключения клиента Telegram).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdDa91e0EquIwRY1ZntFjdRf5dC-91hn3LUqjacjJ_L3kgQbXERDi2zFdxSW3AViUySJIkMjF6Q-SXQdBuwq7-C6RXfCMz1yfhZBheOSsvXrQK7rZIwM1z0xYAMx7mQrdiCmk0p7A?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

15. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $TMessage.IsFile. Т.е., проверяет, есть ли в сообщении приложенный файл.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcBPBjszGJWlbzTtIY2DzwI2DmLC1pbJaUf89xAsqfdGKq2hXY59IpTo1eKNVZa8XK32A-i8TocRCGtlbknVBzYevfEIc35L7MXo6UB3Lam3orqoGFp8Qmz5IlW2yOKZ_r9myG5wQ?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

16. **Блок “Создать файл”** позволяет создать новый текстовый файл. Для данного блока указано свойство “Путь” (путь к папке, в которой располагается необходимый файл. Если данное свойство оставить пустым, то будет взята папка, в которой располагается проект. Если указать папку, то произойдет склеивание с именем файла).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXebWNvbfIE32GYSqXxsRrKU4a1Hdjw3V9Rd5TLyLTeMmupf_W5BduuupvEabnxUsOt2UF1UxCriF0W6nrGmT6W9W-3byWRxctuI9qkIEpyGdyBZD3jzljB7gezFvjS3oHCoM-xRVQ?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

17. **Блок “Клиент. Скачать файл”** позволяет скачать файл из сообщения. Для данного блока указаны следующие свойства:

* Подключение (объект подключения клиента. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Клиент. Создать подключение" из группы Telegram, который ранее использовался для подключения клиента Telegram);
* Сообщение (объект сообщения. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Сообщение" блока "Клиент. Получить сообщение" или из массива свойства "Сообщения" блока "Клиент. Выгрузить сообщения"  из группы Telegram);
* Имя файла (имя и путь файла, в который будет сохранен файл из сообщения).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfPN92M1HrbsqIEV40vw68T092xf361Q3FkF0xT6r7SlUXNMldo_Cm_RTcrLcwmQk8jOhLn1LuWaV5UYpCKddQzuAbjwGDRiDLbl3Bs_NUSS5HF_DM7BRc0rvyUi4h_Nc-ycmrqNA?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

18. **Блок “Окно для ввода текста”** позволяет показать модальное диалоговое окно, предназначенное для получения информации от пользователя. Для данного блока указаны следующие свойства:

* Заголовок (текст, который будет отображен в заголовке диалогового окна. В данном случае: “Telegram”);
* Сообщение (текст, который будет отображен  внутри диалогового окна. В данном случае он задан переменной $TMessage.Text).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeTNB8BIkiHjnSlsNozPvyQsnuO52Eu1o7Guv-p2NE8WhK2sGA7qjIaVklMBSTS-4kKheOJzRsqLu6uLkccUb28dCZmASx_G21mBUY-LSjGuQOWB_XoRfNUqYd7ixldGDxLmtUHhg?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

19. **Блок “Клиент. Отправить сообщение”** позволяет отправить текстовое сообщение. Для данного блока указаны следующие свойства:

* Подключение (объект подключения клиента. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Клиент. Создать подключение" из группы Telegram, который ранее использовался для подключения клиента Telegram);
* Назначение (объект назначения. Данная строка может содержать следующие значения: Id чата, название чата, Id пользователя, комбинацию "FirstName LastName" пользователя, значение Username пользователя, телефон пользователя);
* Разрешить импорт (установленный флаг позволяет произвести попытку импорта пользователя в контакты, если он не найден. Данная возможность доступна,если в качестве “Назначения” задан номер телефона, который зарегистрирован в Телеграм. Только после этого появится возможность отправлять сообщения пользователю по его телефону);
* Текст (текст сообщения).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXendbYfPyL-NgLO_bfP99aCrSG6wmZ9QK2wYIcEPTqjGwTfQYJ_uEyLS57dFbYvBktFRPTzBXMOF7GT6sc7z5T84A6oc_LmDikt1iV6_gbNFugs0x7fe5sediX6Clck_mPlE0gB?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

20. **Блок “Пауза”** приостанавливает выполнение работы сценария на заданное время. Для данного блока указаны следующие свойства:

* Единица измерения (единица измерения, в которой задана длительность паузы);&#x20;
* Длительность (значение промежутка времени в заданных единицах измерения);
* Запустить сразу (установленный флаг включает применение задержки сразу при первом проходе этого блока с момента запуска сценария робота).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXftEIQowakugkMdWOm3fC9RPFqtGaG0i1iYH80Wu2ox43IyRNGydqS-iPCcRM7JshtzEehYlGvQo15C--5kSMoAXBPdJEOqeWJIbcCtTS0hRHLLnNAr8ULwklEbda40dsm8MlpJUg?key=eIuXXe1wcakZ5HVC8JFqa2bC" alt=""><figcaption></figcaption></figure>

\
21\. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
