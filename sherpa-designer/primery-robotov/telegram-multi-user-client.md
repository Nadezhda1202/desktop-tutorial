# Telegram Multi-User Client

Рассмотрим пример робота, который демонстрирует работу телеграм клиента с несколькими пользователями. Каждый пользователь может общаться с Chat GPT (при этом используется индивидуальная история чата). В переменной $NameSession указывается имя сессии, после чего необходимо авторизоваться в клиенте.&#x20;

**Важно!** _Данные о подключении к Телеграм можно найти по пути: c:\Users\User\AppData\Roaming\Sherpa RPA Data\Telegram\\_

Проект робота состоит из двух диаграмм.&#x20;

Основная диаграмма проекта выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeuOSt6EoMbGAHISRRD0-eotKF4PRRjlspApfibambK1gvAABfZgQJUVLIHChyFk2dZIuDoKD5aYmfWk8tcIaqX_6Ud_l-eKezEvmRyrWCwyjWhb4VdwmTqTpSaHtu8_WYV7oCOoA?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfTYDm1bgubup8ukE9WtNPFV5lyaoRjI1yMz-uRgj9UMZqp_cgdsAdH6Tn_fIImTIgIM8T4Be1spuUcVcDv4o6i3uyJzV36bZuVLy7ilmgTlxFMW-qwCnfpkuEH37hypgyclIedHg?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. Блок “Процесс” позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернётся к текущему блоку и продолжится в текущей диаграмме как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd2Gc6sIB1SDyyFffeszSmhO8PNOm2zlz1zQkhQy-paA6ats1m-ojsf9YQJtbcO8_MlufBHV4Kf2s59Gop1ZN0k5lYTnFDsTYW4MSWq3AGbdMHuMKNsma_BIs60vU5qx1dzm68dYA?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

3. **Блок “Клиент. Создать подключение”** позволяет создать подключение к Telegram в виде клиента. Для данного блока указаны следующие свойства:

* Имя сессии (имя сессии);
* Время ожидания (время ожидания ответа от сервера Telegram в секундах).

На выходе получено “Подключение” – переменная с объектом текущего подключения к Телеграм. В остальных блоках необходимо указывать именно эту переменную.

**Важно!** _Для сохранения авторизации необходимо задать уникальное имя сессии и впоследствии для подключения использовать его. При первом запуске откроется форма авторизации. Для авторизации необходимо будет ввести телефон, затем сервис отправит код, который придет в уже подключенный клиент Telegram (например на телефоне). Затем ввести этот код и нажать “Авторизоваться”._

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcM51jq9l6Xuk5UySu6Asvk7mjkwSvZVGUg1h3jZs8l1reIfu5-R75wDt7v41czBIm7XbrPPw772efMjr1wo4HDQgoGfWRGJFI5bUPxuFkyjs2DfL0DnCBcXM_86Fa375fOx_X9eg?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

4. **Блок “Клиент. Получить сообщение”** позволяет получить сообщение из очереди. Для данного блока указано свойство “Подключение” (объект подключения клиента. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Клиент. Создать подключение" из группы Telegram, который ранее использовался для подключения клиента Telegram). На выходе получено “Сообщение” (возвращается объект сообщения. Доступные свойства: Id - id сообщения; Date - дата; From - от кого сообщение; To - кому сообщение; FromId - Id пользователя от кого сообщение; Title - название чата;  Text - текст сообщения; Type - текстовое обозначение типа сообщения; IsFile - указывает, есть ли в сообщении файл (здесь можно более точно определить тип с помощью свойств IsDocument, IsPhoto). Например: $TMessage.IsPhoto - если равно $true, то в сообщении есть фото).

**Примечание:** _если сообщений в очереди нет, то генерируется ошибка._

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfXJJQmEf3_ZjKFyKE_3IYrX6OOCS9f2d85HSKuMbIN6OCHJ0NdgNuKyuJ_E02-RTS1TpdKSv-2-6s_9ittoqXmVtTUcLoL2NAJ6oc8kDFRTpBezMgCnA5PwyeoQbFD-pz_BQQkIA?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

5. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXenJkzWKvVJS-dj9-nVIhaLrhsIlZJu2BY-xZg9x7wMVCXJl-V_vRlBY1Lmr_lKjU1qYRPr98ttIV_i1NGXwIl8fYJonqXqtgHt1JKrYqPhx6Iz0dkJJR-AuXooGf8jWan6af4P?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

6. **Блок “Получить путь”** позволяет узнать полный путь к файлу/директории. Для данного блока указаны следующие свойства:

* Путь к папке (путь к папке, в которой располагается необходимый файл);
* Имя файла (имя файла).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeUMqPuY-33gYnUNazdyjfn0EydFcj-Hgikrfdjbm39p1thLVZzz0VwWexyfOYUyqfvjFlbWivY75sMGXI-f40dePQwXPVLyq20CoVXEy5Z4yXMdYHwtJW9Nq8XQ3-mS51tW4yO?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

7. **Блок “Контейнер”** позволяет сворачивать содержимое. Под содержимым понимаются блоки, исходящие от текущего через нижний коннектор. Для правильной работы блоки этого контейнера должны заканчиваться блоком “Конец”. По окончании работы внутренних блоков будет произведен переход по коннектору “Выход”.  В данном случае, в контейнере "Загружаем данные клиента" Вы можете переключить "Промты" (или задать свои) и этим указать поведение чат бота.Содержимое блока “Контейнер” для данной диаграммы выглядит так:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd_VZBu-x0-hOPg5OkHfjAVggh5UavRqhiNvPmKyRxTtUMqZdd1Bctiey-HMVxoxya3CdWYPEvKN-5VbZIG0RB4MfSo2bLaeF_G4jemkTFk4QMWl-XM86MlizgWS7gBCWPXuugc_g?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXceR1s7kmf6Vl0XwLOzX6EaWAyqWcabGqdTyqQUypINmU9XGgrmSH7txMNSsI-98wtsA62BaTvFNpHXrGk4aiiZYSVa2Kc7an9Dsnc9_vI81xyVWfgnEY7irj2FXaDHggsCMrRzYA?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

\


7.1 **Блок “Загрузить из CSV”** позволяет загрузить таблицу данных из CSV-документа. Для данного блока указаны следующие свойства:

* Путь к файлу (путь к документу, из которого необходимо загрузить информацию в Таблицу Данных);
* Разделитель (символ разделителя,по умолчанию используется точка с запятой);
* Кодировка (кодировка файла).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfmpsLz5CZBgYhGjpirLF4W1tQMDVsqazdeQ7ubjdYZo7IAKhUP4Tvn6hbbnPGioyR5iwYy5klLb6jFLKdXy96UZhyH1iC73O9lKxeWpyO7jc7a7h7RZrqL7COSrk26ekK4ThItdw?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

7.2 **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используются два выражения.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe8z_4f22GzrQjAQGxpbKyUIatcpl49_lPL2Y9GA-Drbrvh6CwydNGT9A0shc1mh-TT9XdUCQju3g3fMuYkYsCMdGypB_tfqD2dCKrrMTqJvm8FaymxND06J4b9tjyhkZxVJZH8fw?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

7.3 **Блок “ToDo”** используется как заглушка или напоминание для планируемых к реализации функций. В отличие от блока “Комментарий” данный блок является элементом сценария, но не выполняет никаких действий.&#x20;

7.4 – 7.11 **Блоки “Добавить строку”** позволяют добавить строку в таблицу данных. Для данных блока указаны следующие свойства:

* Таблица (таблица данных, в которую добавляется строка);
* Значения (список значений новой строки).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdCeXJCjkseowrCHXz9g56mec8m-bfCIT8prCjzMdV3Wb-MyBv81G7tKlSwsoBBAUchnA2f6afKtsxfDmVT8qcKD9mkeppXAjtmLDHOFqioi0QXx0S4nm1pdLVLqv9Amf11cIfIsg?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfdIkxMEAtkYW3awP_bp29CyMqtp64hcIdDKmTB10OVSuXE-FMv7xU_sxMK2Y-TYLh9qIAaevtaDuKOh7n8_1GwQpstKl6U0mbStMrfmW6bmq26qzhZOsd4KIq2LRRRAcs0Um0XWw?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdpMrXh9o4tN1TrRTWB7iIgYrZQao0zPxETL5F0eaaV2W0hqg47VNH1kjvVyuBTpF3XJSxhs8zylVQkcuO76MqNAcLTdrGrfSqV_VI7mIyhp65LtW_IcxEA70HLXbafxgtQ8hpgpw?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeC7mmfjIBnS6bhpIT6CPmv2GLDPnEUUKB51yWG65mbTEAza7ST88CrkPyiesUth5EKpgVOgat4uPZbyvQP0KPvDSMqtcS31IwfvjoA7PWvQB5wXZ-2bNH0IS0CbTKiTm4ZLcZW6g?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdAT83jjsO0YqrzFyebSbZ_Ra16gxHoWmKrhO3FJ2BZ_H6X7vvdS2IoFUoEmbHYtsLYWP0J2glU378CEhL6Pf8kMtB_kU-Nz_pZvRmEh6lcQm5n4g_jFLbn2iZArre6H_mr3X26?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfoy4IJ8q-9QhCtlIReM4hlF2LftcdKVjY21izM8-3ux582C5xaWUEP3zgdaeZKfvNZKYy6H9bZsSQxerJExJWeGf9tE_H7_-e7DZTlqxxboZtaAX77ttvx7shLgBK5mJmSg9nIPQ?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe9osriN6eauwvhu6am3ZKvavB02j16zDx3KUuKCRjN_n3WyHYpjGuHNi9poersS5VSwK9yHK_Ta1HicpUraxyvAHg2lRGqUC02lSpIMYROgV-SyEVrGQGOEGTlozDirzl83cPd?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

7.12 и 7.13 **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

8. **Блок “Добавить строку”** позволяет добавить строку в таблицу данных. Для данного блока указаны следующие свойства:

* Table/Таблица (таблица данных, в которую добавляется строка);
* Values/Значения (список значений новой строки).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeulljZjlWTz0zPjPuMwgY_dDTbXUS-OEs3XyQA24uniAMWToHeUW82VIrug-Ga9NYs1M_PxxVMH9v3v3kSpmj6QVTd0SC_l1ooHizzQf9ULskfCMlyo-GTN8bNqdoHMSxIdqHQig?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

9. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота ID клиента и его текстовое сообщение. В Оркестраторе данное сообщение робота будет помечено как “Info”.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXesAys9KY6jBlNIuvPXmEk1JwrVAk9Qp_ym2yJmk94lUHGrdPY-BidYpkVqvJ0RxFrxKAEmmtZe1z3E4wzBdsCn5vNyNWj6m9vzYDn7JKw-k0gp1LPdHAJd89pNVX89kxIEU3FABw?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

10. **Блок “Запрос к ChatGPT”** позволяет отправлять запросы к новым генеративным моделям от Open AI начиная с ChatGPT. С его помощью вы можете создавать новые тексты по запросу, выполнять разнообразные задачи классификации, суммаризации, перевода и рерайтинга текстов, написание прототипов кода на разных языках программирования, парсить полуструктурированные и неструктурированные данные, извлекать и обрабатывать факты, поддерживать диалог на разнообразные темы, и многое другое. Оплата за использование данного функционала списывается с лицевого счета клиента на платформе. Для тестовых целей каждому новому пользователю дается возможность протестировать данный функционал без оплаты. При использовании данного функционала после окончания разработки робота необходима оплата. Для данного блока указаны следующие свойства:

* История чата (историю чата, на основе контекста которого нейросеть должна сгенерировать ответ);
* Модель (модель для генерации ответа);
* Температура (десятичное дробное число от 0 до 1, показывающее степень "случайности" или "креативности" результата, где 0 - наименее креативный результат, а 1 - максимально случайный.);
* Максимальная длина (максимальная длина результата, выраженная в условных токенах);
* Автоограничение длины (установленный флаг включает автокоррекцию максимальной длины результата);
* Таймаут (максимальное время ожидания ответа в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc6xRO_pAM20D3U5RLafykp1b8lLb-XNEoOFQ61XT3OF2Dc0QIz1k4agwvFfMVx2zApHpaeAuGkHkMbx1DFY7YU3zAw5AVXfvaohOmz6xIL_KhbVZjxBSnla8T7iBFv5j3Qe_9l9A?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

11. **Блок “Добавить строку”** позволяет добавить строку в таблицу данных. Для данного блока указаны следующие свойства:

* Table/Таблица (таблица данных, в которую добавляется строка);
* Values/Значения (список значений новой строки).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdttxgfdi0REBMIdWJ9TLpdIkVOVVgDNNx14LIa6euT50nRlzMAExQpEW4vlQjYMNK-WDfU55anLB0bsIeu3jfw3OLVijK1roY_SGDhLO-KnKMScsKeQ_vjm9U4odQEEMkYHHbt2g?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

12. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота ID клиента и ответ на его запрос. В Оркестраторе данное сообщение робота будет помечено как “Info”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeHZQx_tH5hL7IxviLYJB1GMferSVkIvAdwSko-T43CRnQEIg02H7FWGArkIbFP2k6Mfve0smuafpNy00qGlmh90ywX1wzFcHF_ssdQI5E8zGLT8BGB7mIXPhyvUXHGm49Mc_M68w?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

13. **Блок “Клиент. Отправить сообщение”** позволяет отправить текстовое сообщение. Для данного блока указаны следующие свойства:

* Подключение (объект подключения клиента. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Клиент. Создать подключение" из группы Telegram, который ранее использовался для подключения клиента Telegram);
* Назначение (объект назначения. Данная строка может содержать следующие значения: Id чата, название чата, Id пользователя, комбинацию "FirstName LastName" пользователя, значение Username пользователя, телефон пользователя);
* Ответ на сообщение (ID сообщения, на которое необходимо ответить);
* Текст (текст сообщения).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdmqbrkn-lMhCP96qrTZdbGrHP4pesCBSpIQNd4DZfnR0XJVxegWB8i9naNH0EyVqJKK6Fm-Y2XQrVs12ZMVlniKEQXlKEBLfDq45J-FZ7vl-hAjSwDuzrOBab9zUEI3iJw4iz6gw?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

14. **Блок “Сохранить в CSV”** позволяет сохранить таблицу данных в CSV-документ. Для данного блока указаны следующие свойства:

* Таблица Данных (таблица данных, которую необходимо сохранить в документе);
* Путь к файлу (путь к документу, в который необходимо сохранить Таблицу Данных);
* Разделитель (символ разделителя, по умолчанию используется точка с запятой);
* Кодировка (кодировка файла);
* Записать заголовки (установленный флаг включает запись заголовков таблицы).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeOZ82ePPxtBymnIl5_0v24sgPeTcgOGlZAX1oZUoVfwO7ehzCM9FTGRCt2AcUojkG11eeVABaBjhM1WujZrI8d844NAA4fyEEbG5HSAiGdxUxdNos1cERLZwH9Rqut3TFBDpDg-w?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

15. **Блок “Пауза”** приостанавливает выполнение работы сценария на заданное время. Для данного блока указаны следующие свойства:

* Единица измерения (единица измерения, в которой задана длительность паузы);&#x20;
* Длительность (значение промежутка времени в заданных единицах измерения).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXda6SV4F9e3S61ODOqj6b50o3flpfbboWwBe-3NciLAt8OKRHpweKzhFsoQW2jL84MD4C3SmXqrlt3eIxhYhEViNzpt2Ahmk-27e1xI31KB7yco2-wFaL7EEuIq9fOHGWz6DAtqfw?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

16. **Блок “Требуется остановка”** проверяет необходимость остановки сценария.

Для данного блока на выходе, в строке “Результат” указана переменная $NeedStop.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc5pkZ0R-H_qfepr14ONUWYUh6UHp7kDSD8Aqf0zIxuZTv5g8FHKLZJJ4Z9dxHn1fqjihCeUs2BuuOoFOr3-vQqZ-tqCIPjLUCJLlEoqt1L2ABpbjKq2zD4PWh-ogSd9wTUo_CNEA?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

17. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “Настройки”**\


<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdlKWGBEDR-6Af2TVeEvKUhVP6LlX1jrmeMy-J8VPfnKna0-yd1SzgGbGcluYufxe8PXuDE4X5afYBpdpXkIOegSTcM_bBLZ9G6xBdxwGgBM5U-7vzyo259li3ItWBp4VhLFdZF?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Объединить путь”** объединяет строки в путь. Для данного блока указано свойство “Начальный путь”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdF9upE6OLS9H9LcFmFBpwv1nR_KNIwwqs3nEd_bZjwNm1lYAHEZIFRkUmT9jKJngzFZWNCsjbZ5OM8duWTLJJw__8WkK1erSiXdtpJ17N3Cs89789OLZbe-8-aY4oOnAGxeSVrjA?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

3. **Блок “Создать папку”** позволяет создать новую папку. Для данного блока указано свойство “Имя папки” (полное имя новой папки).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXclfgGoIhvlzRhefhhtbatTOiqfDK6SeXWXmQse3ympzKyVnjUQyFR91_40sSiheQ-T5hjM1ZYq3dgn0UPRThRgnpZNy6QB34xOPTszA-LKPqpNJ4a9vnAQ7-oEAJ5tYJWcUo1pqg?key=Frh7bkTtqSiaXA6cD6bkJrdr" alt=""><figcaption></figcaption></figure>

4. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
