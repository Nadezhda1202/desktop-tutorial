# Actions. Часть 1 - Распознавание приходной накладной

Рассмотрим пример робота, который является первой частью проекта и демонстрирует работу с Действиями в Оркестраторе, как это выглядит на стороне Оркестратора можно посмотреть [здесь](../../../sherpa-orchestrator/rabota-v-sherpa-orchestrator/ekrany/deistviya/primer-sozdaniya-deistviya-i-ego-nastroiki.md). На этом этапе робот распознает данные из pdf-документа “Заказ поставщику 1.pdf”, после чего полученные данные задаются в качестве параметров задачи и данная задача создается в указанной очереди ($QueueGuid).

При создании задачи указывается тег "1CNew" ($TaskTag). Также в параметрах задачи указывается ссылка на загруженный в хранилище pdf-файл ($StorageGuid).

Первая часть проект робота состоит из двух диаграмм и pdf-файла.

Таким образом, если описывать пошагово, то данный робот работает следующим образом:

1. Загружает в указанную папку, в хранилище Оркестратора, файл.
2. Запускает диаграмму “РаспознаваниеДанных” .
3. Создает в Оркестраторе задачу и добавляет ее в указанную очередь.

**Основная диаграмма проекта** выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdsHqPG9wLH5ijAktbYb2nSOkgksiX8DNBBClhVnG3ROxWDQ3NTPFmgocj5G92KnUH7GV_7N-_l092y3VUYO4NRt2n5bCajzRSM-GNOwHxCdASBWgXbRGWgGoyO_Zl3Aweq3QOsqNGG_BPGXK4zL7ihkdel?key=seA-VcSXuVgZZHNoZg11MA" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Storage. Создать файл”** создает pdf-файл в выбранной группе файлов. Для данного блока указаны следующие свойства:

* GUID/Имя группа файлов (GUID группы файлов (папки) в Оркестраторе, в который будет загружен распознанный  pdf-документ);
* Имя файла;
* Путь к файлу (путь к файлу на диске).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdjFcwwyRs1zkgIknpIUqD3BrW6JsKSfgDp2WJDxCl3vaIaNAATTGyw_RjhVcN_mAbmwTWZ_Yue817hlD5irsyW6juBewor4rw6-oNrSTcXohjdA63UQc1lKBH-kDA3dDY6amP6ZjwbcBzwCAwnzYmkhKc?key=seA-VcSXuVgZZHNoZg11MA" alt=""><figcaption></figcaption></figure>

3. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfizBIDUs5wsopSHda0hrSNPriAS7LorkuAuEKomcb60SrJDMpbVbQ1MnDQqxNWbrB3T92VT1PAmF1BUipXTKjhQQEYO-JR1z1Ul7atHEFqy8f1eNwL3O5GHwNGGGl3zxZ-ATNNKj-hEUXNZqjgbw0fmwer?key=seA-VcSXuVgZZHNoZg11MA" alt=""><figcaption></figcaption></figure>

4. **Блок “Добавить задачу в очередь”** создает задачу и добавляет ее в очередь. Для данного блока указаны следующие свойства:

* GUID/Имя очереди (GUID очереди в Оркестраторе, в которую будет добавлена задача).
* Название (название задачи, которая будет добавлена в выбранную очередь в Оркестраторе);
* Параметры (параметры задачи, которые будут заданы после распознавания данных из pdf-файла);
* Приоритет (приоритет выполнения задачи);
* Список тегов (теги добавляемой в очередь задачи);
* Время ожидания (время ожидания ответа от сервера в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd_z1XMqoXAzc4CRcJFnWXZ7XyrE-Wl_uq0oCacMUrapFRUcFFknC6fMdJ0Sx9zPbLA9mvtbJTtPMNr4sCcV2eXNNEKXe4Itonz3QGqB3qum_hD_nJVhDWHRcUus9i_ItGYFcjGixVr-Jn6LuxrVXqqtnRB?key=seA-VcSXuVgZZHNoZg11MA" alt=""><figcaption></figcaption></figure>

5. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма  “РаспознаваниеДанных”**&#x20;

<br>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcrLDZs83DoFtGLDKPf9kBJMfNtQs0fhk5A8UlS3c9i8i7i6izjgcEaP5uQVOIp2iNIx7M7U-s7r-rNXHxXGO2UmXvwTLpcrq03drQyIVY_dbsKpiYwRpA7xpa3Cp9uFJtraHmJMGZnYeZB62zwQYP7T34S?key=seA-VcSXuVgZZHNoZg11MA" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Распознать по шаблону”** позволят распознать документ по шаблону, заранее созданному в [Шаблонизаторе](../../../shablonizator/). В данном блоке указаны следующие свойства:

* Путь к файлу;
* Путь к файлу шаблона (путь к файлу шаблона для распознавания).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfzrGz4zskniiUAmSjiSUOyBw1fHgSahdJIP8rXNg9pao-hHxpwDp9h6X_7cAqWa-XBDFAGCIDLl76Ui3n-quZRkJSowarvK8Bbn7qEsOFE9qOoFV1vRep5h1s8lfQmPQdfz3M0iJaDQDn5xATrdtM-xOU?key=seA-VcSXuVgZZHNoZg11MA" alt=""><figcaption></figcaption></figure>

3. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае в свойствах указаны два значения, которые необходимо присвоить переменным.&#x20;

В данном случае указанные переменные – это значение ячеек “Поставщик” и “Заказ”. Переменной “Поставщик” присваивается значение из словаря атрибутов по ключу "Исполнитель". Переменной “Заказ” присваивается значение из ключа "Заказ".

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcjEIl2E_xYfw7ics1wWxAlgv5SJMd_JEMyC_zMv4b_vun1aczzJV0QdAckzm9b0AYw7vbS-P5agEvDbgDU-zv7cEb9MKnsZys4PJ8Fp6BWvedZpK0iMBdLm6anV_RRhGRu2kLjesrHdfpH--IFbnbx_OSH?key=seA-VcSXuVgZZHNoZg11MA" alt=""><figcaption></figcaption></figure>

4.  **Блок “Цикл для каждого”** циклично перебирает все строки таблицы данных.&#x20;

    <figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe8L9rjRdOFnROXlZ8et_Lzx70w61uaOrPSf9TsYAQvjB8LbzWLHmMn7rgivvE7YimbN6L0FYYl-LR-fgEYPtgTGzEKRxyF1EPMGGuYf0oSlHpQUovUq1zs6RTd-bWfKPVyPBvF1XzUSLsz-lk1nXB15D7R?key=seA-VcSXuVgZZHNoZg11MA" alt=""><figcaption></figcaption></figure>
5. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. В данном случае используются три таких блока, для них указано свойство “Значение” (для каждого из блоков свое) и уровень сообщения при отправке лога в Оркестратор. В кавычках указана текстовая константа, а имя переменной начинается с символа $. указанного с помощью переменной. Т.е., в данном случае, в лог робота записываются сообщения о распознании данных о “Поставщике”, “Заказе” и “Товарах”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf3n0PaFWOFWPjoMkTuJgTaa-MflntCAKZspQPD2Xqes6NZTtEN1Ge-Osplpaj0jCI7cEd5ciNWdTzfuX67rAfbxgoUmO6p6BPb1aGRyf6dVVTsbtBGznd2NXjBCFzuKbfdg0sR7Dil25uKZmePRnumeNPY?key=seA-VcSXuVgZZHNoZg11MA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcrU5Rbtq2rXYJ5l0MbipRy-2oq0za4zY0My1271r6CQk21aKLPaU2OWN_AFhpzkeuY_sreP1annWh7KP1nL0OGZJkIw0GpLdwlQ-YkJ9fwaj9gt1ZuFRyAWOpLP4VaaRfnRZdlRVGaPB_T4CSswFV9YktD?key=seA-VcSXuVgZZHNoZg11MA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd_P-KwQyUvwIuGzyTyHeXvwViTGaQP86LdZCSzE75BmsWzMg0jHcP_wvYR5XvE1DXfg7PSCUU4ryNDNT6lqcvyAxYNaEvwPZUIwTrkM-zO1faEA187PgKJLhKEN3WB_xT6_eOTxTtgok7iy7_zARZKjLnN?key=seA-VcSXuVgZZHNoZg11MA" alt=""><figcaption></figcaption></figure>

6.  **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, берутся значения колонок и присваиваются их переменным.

    <figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcod0XjQKKYkWYVOlS4QtxEOA6nqhZcTaeSguJnT_coWouNIU_YVYjU8XB9bKEe34QSDWbpL3sD5WX_nFBeJHqnoX7x_ubZUbT5_y2KwLJsxGmJA1EElWXla87pTlfRWtB9uu7x8IqcvaHfIuSm7WrwfF78?key=seA-VcSXuVgZZHNoZg11MA" alt=""><figcaption></figcaption></figure>
7. **Блок “Добавить строку”** позволяет добавить строку в таблицу данных. В данном случае указаны следующие свойства:&#x20;

* Таблица (таблица данных, в которую добавляется строка);
* Значения (список значений новой строки);
* Номер строки (возвращает номер добавленной строки, нумерация начинается с 0).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXevzHQrKoH3DAf3oAclDKvp1g-2MlNaXKwLNcO_YIWtuz81Zppg-rBPm7SJB8fPDYX1SEExXDhxBkYKQZIJNnXULZrW_iyzMs0T-XoDHs74V6KN3lc1gWkfFtTVSaABXpRjIueFDSOqrW_kk27h1cmxNZWE?key=seA-VcSXuVgZZHNoZg11MA" alt=""><figcaption></figcaption></figure>

8. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
