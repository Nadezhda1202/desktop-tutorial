# 1С Приходная накладная

Рассмотрим пример Робота, который создает приходную накладную в программе 1С. Исходными данными для данного проекта является файл “Заказ поставщику”. Для корректной работы робота необходимо предварительно запустить приложение 1C.&#x20;

Данный проект показывает загрузку данных из PDF или из Excel. Чтобы посмотреть как происходит работа с PDF Вы должны соединить блоки "Запустить процесс" и левый блок "Получить путь к файлу".

Чтобы проверить работу с загрузкой из Excel файла, Вы должны соединить блоки "Запустить процесс" и правый блок "Получить путь к файлу".

Проект робота состоит из четырех диаграмм и двух файлов: pdf и xlsx. Для загрузки данных из каждого из файлов – своя диаграмма.&#x20;

**Основная диаграмма** проекта выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfRuUaxDRdDisSHdfgoUxYfIUU9WgqJxDblhVkC2bf3OmNe9wn4AlrzAoUJ_6L0fJPkzUNgqLVALoRzz4rik0aRpBafFFdhcMGI3Jzw9GYAeflQpppP9xPdRxbv6Ddac5gLMebDqtb-cdNfr1zV4k071qA?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Запустить приложение”** запускает программу 1С. Для данного блока указаны следующие свойства:

* Путь к приложению (путь к запускаемому приложению или название стандартного приложения, например, cmd.exe);
* Параметры (параметры командной строки, необходимые для запуска приложения);
* Ожидание запуска (приостанавливает работу сценария, пока заданное приложение не запустится);\
  Время ожидания (указывается в секундах и игнорируется, если свойство “Ожидание запуска” не выбрано).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfVpFUeaNW8Gp9ZYwVyL3qYxFkFICKiRMbjSKwYtireAh57QRasTYMfgOLa7bkQyJyDCrpIj6c3_t_Rc8bo_uslQHkvrYFqnw-Zl4sSukSKr_kZtg_nwSy3O3JhPAu3XurDn8_YhdZPvntDStTIWI4Enf4?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

3. **Блок “Получить путь к файлу”** получает полный путь к файлу с указанным именем. Для данных блоков указаны следующие свойства:

* Путь к папке (путь к папке, в которой находится необходимый файл, если свойство будет пустым, то будет взята папка, в которой располагается данный проект);
* Имя файла (имя файла вместе с его форматом).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdvb_bo-7_hEsCc9eysT-S4JwU2XFm7D8Z4RHgRgfS46_2_SwZ1Z8f--xLqSMXGoAdkSvih7JKWwFO4gr2UiwC_r3toA0Q2CKUdV5v9KLa9Te4sGaPgiVUQxaAsoqw8iaBeQikthUcxNauMGJjfY06sZFUp?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeSw-8PoKHlz53v-UahlSZ8-xlkusgpOACvlOIeGdbh2EmWw9S7gUucCf9IhsEgRksW_ChlT9XnjiVYMGc6JqiHF9KHxqTCOOy_XI0almc5ZYA7wNQU1gSiqd7jdoE3qpaYmlqNdX7cByd0nJCzvr57Y2UV?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

В данном случае параллельно использованы два блока “Получить путь к файлу”: один для файл формата pdf, другой – для файла формата xlsx.

4. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXewVCwz9TQFahJkqgaiBsf6CpPcWLqqP66QRiZVMOubPRPL0HlPndl4hseSuIRxMtuWTSuLPSLrd6VYShcoChxkW2FJkDZXq9q26WAcuoXW7OeXmR-d9AR1kMkkbzrLECiVgV_PH1rV2uR4o_IF8TO-Sdsh?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXesoikbsgIihAOsLM8ObWxIAwxH1agH_2xK1mLlg7uJGS4711HGB7PuZKfWr7FuYvcYtmU782G_LSuRDSE5Sjie4u_nFhL13h_czS8_7KsTmlEczdJ8ku79OfreGhsKgP68cIZ0Rba7eZlKswamGLIBa-U-?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

В данном случае, как и выше, параллельно использованы два блока “Процесс”: один для загрузки данных из pdf-файла, второй – для загрузки данных из xlsx-файла.

5. **Блок “Процесс”** расположенный ниже позволяет создать еще один сценарий, который является общим для двух сценариев описанных выше. Данный процесс отвечает за добавления накладной в 1С. Для блока “Процесс” здесь также указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe8TspCJSjR_MtLFNO56t6bVD1MvoHvlmHco6dNnafxBWiOYobf0z7z0065bpPppX2ipVt2b2VsWhDq1exL1ue7UhwjRtDJkVgOdUMXfu__Ynu6OThHgNfH16tI8F7kXVqOxez7HczP70HpO-SNgxaD6Yrz?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

**Диаграмма "Загрузка данных из PDF"**



<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeQnksFiB2Xnzz3IgA-l6ilUya-5i385SrEKJhrMXJg0iu4la8kPI2IyHAnY8rIkC8a3AWBYsc6g6qW9_1XlzK16x-Xi0FRUiAT8XK1I34cdqPL4p78a_1GaAg3cZpmdBDbOn7NgGAjAB_qCBL0Hf59rCwP?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXfkaoOiDjZ0pyWdTnixBKovBvKoePVBlfG_YRSRhRudG0EB1gV0FKvk_c0FH6p8tQpHTnCDPOtBZ7UapPE2GEwx-VPQQVaKOnQg0m-aN8dhajZ0z9gW9Emyswl2NQjgxQC0phdB2XA6wiVcSuR62_npAmKj?key=AmI7nHoqQRm-An8sktOWcA)

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота сообщение о загрузке выбранного файла, указанного с помощью переменной.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeDI6onnBIHYQNBK3g5ndVy2Bvw4hLFwuP1qS8_HjIrgRK3q5AHqx6B3RZNwwpRnTEIOxpRd3ojnkmmNVl-HNcIWj0CVqpt7MLbUJcobKlVGGMK3SnPRDkg0rIZmovoEbe5MD0mO69Z5AwqPdvT_-27iDeL?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

3. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используются два выражения.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcWIu8B4ZwR-tKLv-ai3Y7oAN4Dq2br3y_YVQM0gaj4YMDM4IEb-_dEoLi1l3lwoUuMzsEK57y7HfTS_f-Z0R2OzVjjxFnU73O08lI4ySl5zEx4aSA7kL5vN1OgyFyeb-biyex89EnyyKvp7HvGwriiYL-6?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

4. **Блок “Извлечь таблицу”** позволяет извлечь указанную таблицу из pdf-файла. Для данного блока указаны следующие свойства:

* Имя файла;
* Номер страницы (номер страницы, начиная с которого будет извлекаться текст из таблицы);
* Номер таблицы на странице (номер таблицы на странице, текст из которой необходимо извлечь).<br>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfw9PtDoCtSOf2BkuqjRmPZCh9FpYtbdHetJD4PR9p15PiR4xJQ2WVZJxAuTTHRugqjlDN0tVyiQvXdN4OucIEzOhB7hufKIuvGglWm7r77Fj7reK9ZsYwhx07kXRPlHh2PZ7rpkRcVxCqWMqRDdJCZy4VE?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

5. **Блок “Цикл для каждого”** циклично перебирает все строки таблицы данных.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfrNWT_m5eIhe6A87X2gOjiysz2xJ5Ij-Tb-RHE9ldkzcC-id-sOqUeOQamJyTh6agHu01F9mWMuRArD5miMDMIfozLifN_WcN-1lQtwETNQqdBlliuhvBj0cokZfBWEzU_Ebz7ysGZMvUesq9iPAyjv4k?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

5. **Блок “Получить текст со страницы”**  позволяет считать текст с указанной страницы pdf-файла. Для данного блока указаны следующие свойства:

* Имя файла;
* Номер страницы (номер страницы, начиная с которого будет извлекаться текст);
* Результат (возвращает извлеченный со страницы текст).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf8qVX9uwNvzTgVcNNFDfhaZSjfQdUKfxzZkqIRbiPEKVpmdS7Bs0TzQ7wz6IIk5js8a3wIeWXTczLCJG9wqNAeGr237va3eOGJSQFuxapopxRd0rA9VHa6ndz8At0mc0Z2FspRxfJQYk-4D6fN38TXPblD?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

7. **Блок “Найти подстроку между двух подстрок”** позволяет найти в тексте подстроку, которая находится между двух других подстрок. Таких блоков должно быть столько, сколько подстрок необходимо найти. В данном случае используется два блока “Найти подстроку между двух подстрок”: для подстроки “Исполнитель” и подстроки “Заказ”. В свойствах блоков указаны:

* Текст (входная строка);
* Левая часть (левая искомая подстрока);
* Правая часть (правая искомая подстрока).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcZpjCwWcnmgU211YbgbAe5dK-dm-6ZozrVbmV5AeDf8WJDxAjh6QhCICQ2xwYCejof9ysbXfnWUsaZWm_mq2wiAjUHu9WbMi_wp7BKmKb5l4sbj1XrxwM3Zvpjt2RB0cFgZYKu0NGkRlsuJWt0ecYNEF4?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc7GqMV7ebqvR8UbYh0eC7Tn-hVoHSCKqBDxhzJ3VjUSksf2k_VT3_NUZtGTx6D_zF2Cpy6nK7_np3_zfcIByjFtDm2Egp5wyoZtQJBmDL7nnssUs1Tsb1QpZhFEn60zeOLoj4HecIAR1PsesxCiNSblKk?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

8. **Блок “Условие”**  проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $Row \[0] == $index, то есть, если значение ячейки 0 равна переменной $index, то выход “Да”, в противном случае – выход “Нет”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXequltaOe8VZlqkmgkMuH1JjBfRd6krz36JXW51JiXMeQ4jc6u4-TVdcxQrDfmDYjRxn8FUUCa8AmYm3tw-HpEQK1ViptlknwVcbEPScPZGyDNwjkTB6OQOMxjzIcPS2z55zkMN3lJeAA795tPyjEhBQkQI?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

9. **Блок “Добавить строку”** позволяет добавить строку в таблицу данных. В данном случае указаны следующие свойства:&#x20;

* Таблица (таблица данных, в которую добавляется строка);
* Номер строки (возвращает номер добавленной строки, нумерация начинается с 0).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcBl5iY6eXWcUbUoParysO8qGCsAZwMTtdryW6NwSNFQp9SYUPcs0sFVMXaaWFGLIHRYi2TvcnAHgf7A0cKI0U1Y6gF8r5hThy-mGXD-0xd3QP-Ipp9HANDhoK_QIJgaLHKH7lYZGdJm3C2-ff5ZX-tiLw?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

10. **Блок “Записать в ячейку значение”** позволяет записать значение в ячейку таблицы данных. В данном случае используется три таких блока для разных переменных: $Row\[2], $Row\[3] и $Row\[5].

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfDrH_WXvfCXTKe11UT29pGKJFwJcKLioed2vM2iBJNDKDI0lKqe1cs0_BAu1GPNi3fkurZGmUDJDJ9gWvCkjtzsTb3LFOJCEeMpNNB-83CaJ0WFotOCvtwN3FbyfkSrxqyyUuPEW44zE9Qu9FRWraPwUY?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf_2Txr5HdDENIARh2Ny58mjtePkIBuXXH5UorkSjVS3ugLzUCLRuhPMB6-C9VjY3TLITjP5bsE31VHA2pcyVJX5H_uhEx9n-ojoNhxcZaJOSBVuIoBQJPyF_nFZ3AZe92BpmsOc8imOXqzZeEzRtehexQK?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc52N7acGlE90pWhKFECVM7obah9GUXuDz39aMo8nnschfPTTJD0Ji0RtDoQB1W-V-KkfV9Oyhb4UmcylQAyCTMSc0rbXPdgXdmsIe9t6p8aiVKZ9wMgYq9Xo_9K50bid7gm2cuqy0Xgrtum7Vv5Y4BMyFT?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

11. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используется одно выражение.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfZiNAyIML6b8IjXkDjUb9n5-Ox85CsyzwfL0QTpO7wp_zK6idOEyosEhYZgAtIWzENP4h6P-r6_5KH-q-4_LWVz2bYzxK6_mUFcPkP4rU2cd2_2e5Zz913gf_zvAX0GVbN_jIGBpCB24S4_F2UwY8bkaGa?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

12. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используются два выражения.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeClTmGJBo1xztuOMQ-y2XxP3f84SV4Uu4PiYjesqykTWcewTuHWI-GyWY_SQm1P8hfG5-opTKIsFNxxam06Sxnrohib6XnKYwOc8LfsPDEj4r-sskyGwFqC7eeF4bgWvJMVKdcHcjfwBvZg3wGWGNJzKeg?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

13. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

Диаграмма "Загрузка данных из XLSX"

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdohXtRjpKtoBbc74ngbGmNyu3px0T9l6N9pZTUhM10xW2TWRAnm1s54ddHiMUAz4C8Cmiw5Esy8P8Izku8i9_6SpqQmqn1i6lvGIWl0k5YIRPVfCK72ynZWqFnK5n-rufd2L96vH7uSzb34QjXQuhRQz8g?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

<br>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdHrH25UBlyc0w0FX0g6O8FZNX--o7McX_9FgEsIRiLmrpo24H95OvkUn7BQ_B_5uO1gIpZt-TAr8lu2SJsBdbqRC3POdkwxqSjD9RGr2Pzu34zuwFTmyGdX0sO9QojFtBtCmjWALYdIZqMaFf2P08ts_Uu?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота сообщение о загрузке выбранного файла, указанного с помощью переменной.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfggmj4jMbO5FfkYcOfjGoGtdUtbhl-lvwjQTeCPlhT6JvWXxNGSNt7LzzMyYS5T3xcKE03RKtGK8CDTadKs55zcwFp-Y5fNtoi7iSbZdn0CJiiTpddAwTjVy-Z0b6AYc5pQQs2L5IQsK-6RINhNEYh9H8R?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

3. **Блок “Открыть документ”** позволяет открыть Excel-документ. Для данного блока указаны следующие свойства:

* Путь к файлу (путь к Excel-документу, который требуется открыть);
* Ссылка на Excel (возвращает ссылку на процесс обработки Excel-документа);
* Ссылка на документ (возвращает ссылку на открытый Excel-документ, в котором в данный момент происходит работа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfyyZSjSQ3l6KPemc6BoktmIwSi8oNhHKWLJP9zLZ4cl5camfpwbSrDMwJXSJu3rsZTluZVG_xzzY4QWO-E7W39iuvRDQ-2VGOLBGkweiGyT2cSdSTW1oQZA1XNOsWD1A9rjM7QW1UiHTQ0cDrgHemtw4I?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

4. **Блок “Получить значение ячейки”** позволяет считать значение из ячейки Excel-документа. В данном случае используется два блока “Получить значение ячейки” для разных строк и столбцов.  Для данного блока указаны следующие свойства:

* Ссылка на документ (возвращает ссылку на открытый Excel-документ, в котором в данный момент происходит работа);
* Лист (порядковый номер или название листа, на котором расположена требуемая ячейка);
* Строка (номер строки, на которой расположена требуемая ячейка);
* Столбец (номер столбца, в котором расположена требуемая ячейка);
* Результат (возвращает содержимое ячейки того же типа данных, что и в Excel-документе).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfFlFDvuPBWgSwsAQwLK-BWI4yvoPOgY3RoeeltsO4LeduQYJZRSXLYQ1Vo5ZSqjT1iM0CLKQedq2uT33IAVYfZEGR0_nbP5BgzWi7vUKPmst47YoKfbvlzo5ISdQ9qZxTSyB9cNBfqCrxRlf4Uc0eDUQCl?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfExO_doZQrNcWXKEksbJlADAWBzvvOo1ic96fqjxzKjLyh3Px8Py0_V82NbClITF-YQTH2SAtp7zQh5ISuVlOmIjxDQlJ3kW_HFKLNdM3EqoQqyOLZ7amSjep-Nn7HVICAuBT6-oFdmYQPTMJ36M4f7tIa?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

5. **Блок “Найти подстроку между двух подстрок”** позволяет найти в тексте подстроку, которая находится между двух других подстрок. Таких блоков должно быть столько, сколько подстрок необходимо найти. В данном случае используется два блока “Найти подстроку между двух подстрок”: для подстроки “Исполнитель” и подстроки “Заказ”. В свойствах блоков указаны:

* Текст (входная строка);
* Левая часть (левая искомая подстрока);
* Правая часть (правая искомая подстрока).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdMUooE7iMdKalA6NN4cdv1lSEiwX4RpOH1htZ7CN21Ki4LKYFRl-HVF1RGNCOxMyrC3fQa0FY7jr_5A22ZNlWPsuBBucUbSWwLIBQM7jRUNPKwrIccLoEC0OhIILfAyQdpgoxP4lmP8bJe2GutdaxKFmcu?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

6. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используется одно выражение.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf-esMaUiOm6TOyWVZWfu5k1G5TVpxztR03yptV4JsRUPnJQUexhyZyp9XpOLgjOdT7sem5NmCnKnzxYsJk4UqygiFG-Zxec-9Cnnc8ySqcIWZ3dOxBB9n1ol0PrssWwQbnHZ0L1DkhM5lmnRAI_A_T-7tI?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

7. **Блок “Получить значение ячейки”** позволяет считать значение из ячейки Excel-документа. Для данного блока указаны следующие свойства:

* Ссылка на документ (возвращает ссылку на открытый Excel-документ, в котором в данный момент происходит работа);
* Лист (порядковый номер или название листа, на котором расположена требуемая ячейка);
* Строка (номер строки, на которой расположена требуемая ячейка);
* Столбец (номер столбца, в котором расположена требуемая ячейка);
* Результат (возвращает содержимое ячейки того же типа данных, что и в Excel-документе).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXch_YEs2dfFWsPdzmF_KbUvYc5DXnVYq2YZ-2Qg7AmgLsK7TYKh6hdA-5m6Wt2XaqCwOdbK0TgtLfit1f55f1jp36tdUKCbhvKNGKLw0lX7L5-YKGpam9uM4FoD1RVSh-UG41dzTN6Qs7oaKKBEK2RnDrzL?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

8. **Блок “Условие”**  проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeayu-5i9yGVmnDtXEakJzvpnYH4oBQVCF8xKGRD9yZvNtd7f7ydLi-8N5qj7LHYaDfhgCvYULGo2_JeFDnxnw1Enn6MR74gfhYTVSQh7GIvwelOFWE5nFQiPyOsb0m-v5fA-CBrKpNbq940v778uigB9t5?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

9. **Блок “Закрыть документ”** позволяет закрыть Excel-документ. Для данного блока указаны следующие свойства:

* Ссылка на Excel (возвращает ссылку на процесс обработки Excel-документа);
* Ссылка на документ (возвращает ссылку на открытый Excel-документ, в котором в данный момент происходит работа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe_UTU7rY1QL0_fBSbD7K9Ak2mHAjaQrnLEowTCIrlzCx4r2gomWb-bihMUhX86pyqv0SDMxcfaBCOb_AOoGEH-DX9TOliIKvB4kGGcelvdY7M7G6nKzwgkSVT49AX671BaGHtAse2oTeYrpWXadToqY5AX?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

10. **Блоки “Получить значение ячейки”** позволяет считать значение из ячейки Excel-документа. В данном случае используется два блока “Получить значение ячейки” для разных строк и столбцов.  Для данного блока указаны следующие свойства:

* Ссылка на документ (возвращает ссылку на открытый Excel-документ, в котором в данный момент происходит работа);
* Лист (порядковый номер или название листа, на котором расположена требуемая ячейка);
* Строка (номер строки, на которой расположена требуемая ячейка);
* Столбец (номер столбца, в котором расположена требуемая ячейка);
* Результат (возвращает содержимое ячейки того же типа данных, что и в Excel-документе).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc50JOZDttMgpgFfFxBPKvKUrQcyQch6et-dpGlzYDjGcaBZFtNHr5LWheQOYFhfwASAUgoB-xbJizTgtnmyoDEaI_bGPf5iBY3QY9DeOO5GEgE82eHWmQpflynYx9THY0M3fvzEw6QPHqWnKHspkfxYa5w?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeUKwVeYKIpH8-hXSM4rYzh7zpyVPMPEXj798DzeKpnIVozcuHBw5fSfVDBy2mEiF7EH4K3qOpMR4uyr3CpwLSw19Xeln4dKJQtHsKrR0UkAwFz-pub7BSJSdheRnRSMtDYJ_8ejLHGUX-8VxObh5tSDfU?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

11. **Блок “Добавить строку”** позволяет добавить строку в таблицу данных. Для данного блока указаны следующие свойства:

* Таблица (таблица данных, в которую добавляется строка);
* Номер строки (возвращает номер добавленной строки).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeLaavLdfRggj_rs5XC-9uDALYPkNu4S7lKLucXCz4BAXiFUtsue9r3dg3wqV12snuACXgyrucTCeZRgQWnqrN4JrFiUw1BtkVGIft2xKulo959iPY9tg-GoSa9ltT30Mq1MCXhw_ngZGssEdeVhGWP9Tsb?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

12. **Блок “Записать в ячейку значение”** позволяет записать значение в ячейке таблице данных. В данном случае используется три таких блока для разных столбцов и значений. Для данного блока указаны следующие свойства:

* Таблица (таблица данных, в которую необходимо записать значение);
* Строка (номер строки);
* Столбец (номер столбца, нумерация начинается с 0);
* Значение (значение, которое необходимо записать).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdrc-1p7pQuZHiuSmrTRicPlWfBF3CCN9fc4se6fI4HZYX_KGMFAgpFJjeFZv1-5BEyOz4bVnSig61PgLoXi4eJL--95NHiSq3sBaqp0w9NNU8-N_BONIICynXmtcSckT7ImEm5zAVj2UrWMOCkgI-yjT4?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcPLIz7Ezm_Aw-w_eCtYlkUlOji0Lh4651iMfLf3WxOV4KlzJlHkV8ot3IE1cgeXq5jqCzCFl2fq_I8dOn6AQdhuOdKsZMhaX7Ejbnnr1G7mVO7kdmwAz1CX66WYM5xFVwiwm4M_EqdV2OcswwZq0e1wPZR?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfY5AsyqLgV0wawslXvHtDi4KCyUCP-Akl9vQWvQbk7I3O_VBRzWKV-EHlY1CyliaecBxKCPmYNGKb8td6ltKMMp3bPwvyNlC89hG_8JUSTRR0N18zbQh7QvZ8-u9zy7vi2zE2zkQpgR8mxXtcixOszx-Br?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

13. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используются В данном случае используется одно выражение.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdXM0DXMuMucAxZYiluq820iyeIOFxz_xFYXbWwHMLGmROuVlXPdso_hduI55XK62w8lzeRBL1ctA5lO_PTU1he8wrzKhGKa-xL8ppqFLYmHq9uo8RMTr85wiO6R6ZZz2taD9bWOB-EpKr8N71OoOiksP0q?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

14. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма "Добавление накладной"**

После извлечения данных из PDF или Excel-документа робот создает приходную накладную в 1C. Данная диаграмма создана частично с помощью функции “Запись” Sherpa Designer. Подробнее о ней [здесь](../rabota-v-sherpa-designer/osnovnoe-menyu/panel-razrabotka/menyu-zapis/zapis-deistvii-polzovatelya/). <br>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXek15vPpqa9UbCU-EBCErxQP0bgXHKMxTDa8oS0ykg45LWnltd3-zRzSAEzo-tLop8T44wUCW8Xm5adGRFmgp-PKyCiFD3XTxoJarEyUFCv3FhDL7xaHtZG_vwjR83Gz4XzZmXjl4NNOYu9qvJH7fLORrg4?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdGy5Cn2_lpkFhP5RHj34sX-AZZtFJvi5WceULPN0ckVmR2Mt6bkp5lc2s8OCHHURBjfZQbglrn-ZXZKwt8NdLhj8weTqQPlAlwCtIamTl-LRjW05RgzfAW5U18kZCQhbGhZDjfW_piAbMaYi1V-_6XgmTO?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. Здесь данный блок записывает в лог робота сообщение “Создаем номенклатуру”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXffFQedeULJNhTkhBeyGWyrJ4a-_Ri1vxqFTGJ8A324vzb3PT0sYeve0lv2fL83MVGUPwKkxLV7RHZk4JnduNWIUMov2b4mIuvkaJIgLwlVje1IEHPkYhL8EZFOn_4G2zhzK46-mxfpHer1Gt_5xF-P0QKL?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

3. **Блоки “Проверить наличие элемента”** (проверяет наличие заданного элемента пользовательского интерфейса на экране), **“Клик мышкой”** (производит клик по заданному элементу приложения) и **“Нажать клавиши”** (эмулирует нажатие клавиш на клавиатуре) добавлены в диаграмму с помощью функции “Запись”. Каждый из блоков использует селектор. Подробнее о работе с селекторами [здесь](../rabota-v-sherpa-designer/paneli-svoistv-i-peremennykh-i-rabota-s-nimi/panel-svoistv/nastroika-selektorov.md).
4. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае в свойствах указаны одно значение, которое необходимо присвоить конкретной переменной.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdLmHA539yA604y6xXWqQMHBoN1NuQKXgD__xzdbz19XW68a3NQcGG-u4Kru-sbM6KWSIqNaVMAhuRaNgEHW-GEq66C9q-Mym13bAhuV6Iy05s1LrKg0SgTZNAWlXtKFrR8Af13-z2mbYaeAMZHDKcEgmgI?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

5. **Блок “Цикл для каждого”** циклично перебирает все строки таблицы данных.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeytt-dsnGWRT07ZPdFS4bGD0_3N1ifmizn471LbxQbYUY-_aj9d5vsVgr_N8Epen7XbEFFuwQqq3QW6zYhiZ3pJzmhZh1aYAJ-i_7jaJY2J7FJQAd3tUKP6cLpbKTRGYpGvf9YUsSjIBek83jNb_N7z-I6?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

6. **Блок “Клик мышкой”** (производит клик по заданному элементу приложения) добавлен в диаграмму с помощью функции “Запись”.
7. **Блок “Пауза”** приостанавливает выполнение работы сценария на заданное время. Для данного блока указаны следующие свойства:

* Единица измерения (единица измерения, в которой задана длительность паузы);
* Длительность ( количество секунд, на которое будет приостановлена работа сценария);
* Запустить сразу (установленный флаг включает применение задержки сразу при первом проходе этого блока с момента запуска сценария робота).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc8VLMRXBHKsWrlNsn27mr8xVu5X4b8pNauRtbkg2ICr0JKHB9KKgRoWbQKr8xXyWqUl0Se1nwvdOSdwoSgnNJo8EJdUTAdZuhZWkDyyN7KlrRtl9Vv-4tifKAYzKoHFLSTvWGAIB42O2HBK-nzGIraIZD-?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

8. **Блоки “Клик мышкой”** (производит клик по заданному элементу приложения) и **“Нажать клавиши”** (эмулирует нажатие клавиш на клавиатуре) добавлены в диаграмму с помощью функции “Запись”. Каждый из блоков использует селектор.&#x20;
9. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используется одно выражение.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfINt0-_aS5EZpceAcisv-VhaByz6kXMWbyt4G-74ORfHaHu8KgYa880g0Hth_c09f0Eszc6yw4TRXlLSy3zewLPorLmyhXidZCdtiuOT-13ejc4FByMryUeP6nfLG5q5J7fn0zrJsWHc-KKo7VL_lUtDFc?key=AmI7nHoqQRm-An8sktOWcA" alt=""><figcaption></figcaption></figure>

10. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
