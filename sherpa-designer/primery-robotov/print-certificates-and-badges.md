# Print Certificates and Badges

Рассмотрим пример робота, который по входному шаблону печатает бейджики и сертификаты.&#x20;

Проект робота состоит из трех диаграмм и шести файлов. Если описывать пошагово, то данный робот работает следующим образом:

1. Загружает Таблицу данных из файла “Входной шаблон.xlsx”.
2. Перебирает строки Таблицы данных.
3. В цикле для каждой строки робот вызывает диаграмму “EliseyProjectCertificate” для печати сертификата
4. Затем вызывает диаграмму “EliseyProjectBeidgi” для печати бейджей.

**Основная диаграмма проекта** выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeJ7LONl2fKywyouKdSgOJdYcH9VJUebPA6i1B0K9yJSXtNDu_8FQody-onX9cIjqrz9rptmGS4aA6f8IOGGBGVAC4vXgg326LlMpBwbOA57MqfAmG8OOAfjzMAYLWfARKgzoiFrw?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Загрузить Таблицу Данных”** позволяет загрузить “Таблицу Данных” из Excel-документа. Для данного блока указаны следующие свойства:

* Путь к файлу (путь к Excel-документу, из которого необходимо загрузить информацию в Таблицу Данных);
* Заголовок (при установленном флаге первая строка будет использована в качестве заголовка);
* Лист (порядковый номер листа, данные из которого необходимо прочитать в Таблицу Данных).

На выходе получена Таблица Данных, в которую будут загружены данные из Excel-документа.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeFqGkTbm-KKLKIDHTEwLaoukkY9aac2HX3RCkOcPmL4WpKaC2mtkJl-lIxyE9jBDS5BWXKL6POfsdXnOG0TC9g2udyIdGB6EDpmSs2ZBsUUDqAn53ALKRbFbYVDV3lA1MKGkHG?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

3. **Блок “Цикл для каждого (Таблица Данных)”** циклично перебирает все строки таблицы данных.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc8t9WIr0RRtUkGC6gsg3b7TZJ4Jj_d_eZn9tdHGBp8cKUrlyL2JIwfB5ItZRDlTGeoTmYwbOWuB9yc3j4UinlABkT4yhcxPnB23ZwA5cGyIuV-Qkr5TED7Z-1PSrtFLR2pvEOC?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

4. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeC8KZod_sAAnfrydoZ-rezCGknPSw3B5BMpT9O_W5sZCKgM_3ofCE2qkFkTp3vpFP90Nlx3rZdxxVPr-rcwgtetKf3kzFwLqSoKgr_a9KrjDO2trjpSeoC_uwOS3RSRjWreYKKsg?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

5. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd53wCZvaU3MZPOs7OWk5oknG8BrzTSX6WXw-rFcXksCjGPrChYfu-IVqQsoMqRy1y7qxO67ktlP_wyEPH_cEK0WMOWx71U1OYjtJyADC2cSeEfwwdPCy5sKJrDTfOScyw8lO4JlQ?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

6. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “EliseyProjectBeidgi”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf5x7Atliwh2r7Aq_G7O9IBi6XdPSf_KjeZWANf80PiwDy7e7ufmq9EGxmhwV__e7AsQXR38kLTiuktsuxeu0zeUX0SBUPAGk9bf1Q9Nm96j5lDX7mQPLCW10gJyDjBwAbprUz6Tw?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfWFpMlhbCgkmO5XvSH7VfUoWbNj5Ob1iV7NOdDL3akzot4sIhPcf-oGS5MteNkO2jnLY432ZKbpcPbg1Mv1ZZriDtgYRV8sozillVkalJu_5wTScM-wEO_Q158EAn7PuLz5hujXA?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

3. **Блок “Получить путь”** позволяет получить полный путь к файлу. Для данного блока указано имя файла, к которому необходимо получить путь.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfM9FDUzUYtmU1a2QEcYkZVYBziOJZc0pTelzai3OSWIYYCE72wktFLqs2J75EvYPiJ2LWRtDZCmK-SNdVUL-VDT5ifOE7RLyNsv2JDMdFu-xYtP2g_mQQkT-5mHbw1QIU4HGAMeQ?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

4. **Блок “Открыть документ”** позволяет открыть Word-документ. Для данного блока указаны следующие свойства:

* Использовать COM (при установленном флаге работа будет производиться с помощью установленного Word);
* Путь к файлу (путь к Word-файлу, который требуется открыть).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXftorcshY4vCjXz-VGJDxHErGbNhfXTR6p2xlIviA2hhlfDgcf9SeiqA5189BROy-XCKnOC4JHboG_phGNNKeLmeOYbJxyKaX60NA7JMx0tTbqK7ysQztxyfPOOy9JUCcj235ecYQ?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

5. **Блок “Цикл для каждого (Таблица Данных)”** циклично перебирает все строки таблицы данных.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdytiRKGMZdaTCY5HfptDLq33a954ma_MErjQ27QHj5ih1g0EuyHAjjOq9VFUqzSxaoWBABptoyslnrneXybOwIGWOHKYbVa3wf2U4bN6HUmsguBLeLP7fIaPH8jVYnqz5gQH6Aog?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

6. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано три значения, которые необходимо присвоить трем переменным, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdKKX_TO4b7CxNbEE5bFavCkMgofuQXbRc7oh7ABEr9FPwOBuiEBKbsL9epR3afxX4u4Sl1QoAKlQ0Ua_lDuRtNV_oSqRc0u3JLPA2GXSXndS6XIw7PKdUceAnLmPljUr5o9hnOqg?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

7. **Блок “Заменить текст”** позволяет осуществить замену текста в Word-документе. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа, название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо сохранить. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Искомый текст (текст, который необходимо попытаться найти в документе);
* Новый текст (текст, который необходимо вставить в документ вместо найденного фрагмента).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfCsZNVU4yNtJOzQCkVSDJI_5iyNjXt9qtJ-VeSFGDp5az-pfzUpvSFIOQbGtqEP5GcEwsjeZ0TI8_wgiXdQV7uYliBkZ3VN6m-vsjaxE8MEx27xForleD7ZqBi-mpT-Y7bP8R4?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

8. **Блок “Получить путь”** позволяет получить полный путь к файлу. Для данного блока указано имя файла, к которому необходимо получить путь.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfu6DUd0bocBelQnHJGz4jz4UZ1co79We3C6joh8KL4FESWmxHacNwMHm2n6xBLZknNqBg-_isaVmQO_9dA7B3ktLuTNqPanOIXBYpUJiXK-_tN5uyQiupRyAEVfYGyde9y8xEnNw?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

9. **Блок “Сохранить документ”** позволяет сохранить Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа, название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо сохранить. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Путь к файлу (путь к Word-документу).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfQerIyp4H5Rnl6364WP91S0jmFmI8Nbq9lyLp5qCHrnIvDv7ds3eIQdLSpqHNpcROUe47hvEDrsslUJsYdYF2nVaYR9GC3kLTU2z0ZAyBpqFsYH_upYRYIvfPaYkMDum6pS830PQ?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

10. **Блок “Распечатать документ”** позволяет отправить на печать Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на открытый Word-документ, в котором в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdkYmljSLU4EFgSNIPapSLtchaOxbes4Zywiek9-YCWKl2UB_HLtPx9__5dCorNYvyRBL1d7Vsg_sDtPogV3pK56BHorFhoVHs1fBxZzV8kC9YL86Q5_YfVB_iyzaRa1b7xsAz8Rw?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

11. **Блок “Закрыть документ”** позволяет закрыть Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо закрыть. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdP35mqMcT6IpQMHlMqidr-dXtTCw0vrMLKwROBUE8hdWnxlxJFICJL6jn-z6Dm3hoAr5Cf-JPgv4neaXn8fKEJ0Ukt0OF6GjBz_UtY2jEqXv2dP2E-9yuOuc9hGgPyPb5UzqFS8g?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

12. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “EliseyProjectCertificate”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfSWRtDgnlccERvVPekFlJmjJMqwnXgo9xk2kjCais3unl2QPoLNcas7J9glsA6tfvOi380QIvDTWPDinMr52dkNNgqtD5_tdJUWWitAiVvLsObUrd7wSByI3QY-bY_znOrk1wsew?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано два значения, которые необходимо присвоить двум переменным, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXetIeW9Z4ZfbP-8EUe6Iy5WRRoG0jpEd2PiLBgA8515egHSuuxm76xkDqiBvluR5dIJ3EZhFc-V64UwjehRc15eia3_zsW6Pi6LS_KATygLnKi5phmQ0uMscFuYxh7pCq-Uwf2h?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

3. **Блок “Получить путь”** позволяет получить полный путь к файлу. Для данного блока указано имя файла, к которому необходимо получить путь.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXerO0NjWw9nG_3lBx6cdhWKJa8vh5WloAA6MXQxts0TMInLaB0jsG_qcpMBkdSuf5PeMVbYFba2vY9nEL7zp7G_APv6mcgQaNbshNJPL8hTfk6pyQMlKNswZn9hkyJsT6DgT78W?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

4. **Блок “Открыть документ”** позволяет открыть Word-документ. Для данного блока указаны следующие свойства:

* Использовать COM (при установленном флаге работа будет производиться с помощью установленного Word);
* Путь к файлу (путь к Word-файлу, который требуется открыть).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcnj6v9-f7GvtjcoVgcTvqTXaxoVUhQYDpYezWmNIwLkdzmcOfAusJqjUAYG0SVTShhhmGib2gGPQYTtdfNGSj0KAS84D_ZL5q9gA-W_2Xml8gDuUGLSwYNpA6HyDhEcNp_n-7xLw?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

5. **Блок “Заменить все переменные в тексте”** позволяет осуществить замену всех переменных %variable%  в Word-документе. Для данного блока указаны следующие свойства:&#x20;

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на открытый Word-документ, в котором в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdH5jF_AmH4XhfuoMv1XU9JO57PjfU1DO4NVWKWm8-P977bq3xM4wBccpZQJGyhDlh00vZlpnIrKX3o8Sgkax0txK19kaNH2PFLC1OQIvuz4_QNW7OxmsIiv1TcQ5z-dwbMQMg-cg?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

6. **Блок “Получить путь”** позволяет получить полный путь к файлу. Для данного блока указано имя файла, к которому необходимо получить путь.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfd5NzSOBEfmuBAGYcyT4ZcYE4qssN8BRvfrvXRCSAcx-9Bt9EMMAoNrHO-dLRIsajNVSXNbzLCLpgordcsXZK_wOP_n6TptDW3roYfaeEv4PkMJ5osUmwMzJ9OU6FHm_xMKkLA?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

7. **Блок “Сохранить документ”** позволяет сохранить Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа, название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо сохранить. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Путь к файлу (путь к Word-документу).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXde8cU6XszcBtUB5YdXVm21s6dOQUs-GSc4dkCf2NcZfz98W-M-R58hZbpaB3CJZXSZTDNgypNAfAaON5fTLDGyS6_o3VUwm8REwsodFX9EZnHmecyVGTQtZnf7F2a3Aj0fUAVy?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

8. **Блок “Распечатать документ”** позволяет отправить на печать Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на открытый Word-документ, в котором в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe2z8awCFcrP_-j5zBFD1t98-NY1YWnpl28fHJeLUX9QSUqZQssTUvwiRC3POhzX2VCHdXpi3u3SC-AF-jnoan4Z09KFP31L7zUT8gyFTNt6OvWmYcXVayxyUjTD0KpEsgshZh7mw?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

9. **Блок “Закрыть документ”** позволяет закрыть Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо закрыть. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdhOLA-sUo2yCIH6bbQWp1UgUa3gRPPKmpmwVs1_iTbAHImWefFzW-VyTcwocG6Ka0X_cSSu_ZNd_mx1UvrQN2o8Pd-5Y1C9_e7r74l1P7C-6HV_1BdVQYy7-lnbss3S5DDY1CpEw?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

10. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота сообщение об ошибке.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdbOw0fQeZWq79yaZW6gvd6zxI3IdHdPO6R-G8VElETCtfmqKq0YWyczpnOGdHmcdT1v4UL7AyPMzbXltW5KVCG-nVgM0vfiU8Qq_lWMTOBiilow0c0JMKDX4vPCJw-b5mden5pGw?key=fPRZ_305HGkjDd2DbCIswH7E" alt=""><figcaption></figcaption></figure>

11. и 12. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
