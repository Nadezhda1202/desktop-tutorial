# 1С Приходная накладная (COM)

Рассмотрим пример робота, который создает приходную накладную в программе 1С. Исходными данными для данного проекта является файл “Заказ поставщику”. Работа основана на использовании COM-подключения к приложению 1C.&#x20;

Данный проект показывает загрузку данных из PDF или из Excel. Чтобы посмотреть как происходит работа с PDF Вы должны соединить блоки "Запустить процесс" и левый блок "Получить путь к файлу".

Чтобы проверить работу с загрузкой из Excel файла, Вы должны соединить блоки "Запустить процесс" и правый блок "Получить путь к файлу".

Проект робота состоит из четырех диаграмм и четырех файлов: два txt, pdf и xlsx. В файле “QueryTemplate.txt” находится шаблон запроса, написанного на языке 1С. Для загрузки данных из pdf- и xlsx-файла – своя диаграмма.&#x20;

**Основная диаграмма** выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfLBcTTuQY38aEScNqWYbpFlfS2xSieVBDUWoosMOlVid2SQMwb6y5RxxhTe3_Lofh90PypYxOgqfI4VL5KmuHQqt7v7LB7KOSaz7nHl-0Cqh0BNZYoPwin9zxdg6vX6KUSMZnGACnVmWSWeeYVN_kyyxU?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Получить путь к файлу”** получает полный путь к файлу с указанным именем. Для данных блоков указаны следующие свойства:

* Путь к папке (путь к папке, в которой находится необходимый файл, если свойство будет пустым, то будет взята папка, в которой располагается данный проект);
* Имя файла (имя файла вместе с его форматом).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeGbm5RNN1-gZ0H1ryVz1aoXsZrdkRKsEgTssOkmAaKsqwdZtAqw3YZ3RyeYng0wWDIFI5n2v0jnWjQmxU8XpONQgVRixd3z6s1LndDuLjnM1ZcDRpPsUXUr6MJo4eIkfyPInLzFcLZUYTsEsDPCgomZBuq?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc9yQrdCV-rqmCckZtnwukbXxTeuVnUJtVnbSeTJuUUsG0yOf43xuFATv6XeVZJA1th2bqop-P9is5GUlqdg2V4jPEHSvDxkZUoHYDPIcLppTKX7AgBTAmuhAvGqDD9CbAuVM9VL4JHZz4yN5flWzaTj3c?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

В данном случае параллельно использованы два блока “Получить путь к файлу”: один для файл формата pdf, другой – для файла формата xlsx.

3. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeyQi9MuRkhL4xyvtCScZLRoXiMtAvHsOkcaSJcbpZBPzzq5FGzeQ10s5UAwySWqgj8kiE172E6qn5sFyK-fnO-i22J-G3McKD4YYpB4P_CSRhW9Lp_afCi5b6NJqWB6qD99_b-Eszw20JUqlQ-591HUvc3?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXctDC-aNiA3ARKEtMBYQWQb6MNDMH6qfA2SvQ3VrwFaU9fX_nSCh033en2T08o1BGEe48yxO4L0L00qFUWCvZLbeIYAbVM3kaPTjwff5-kf6T3CzSjs23XA9U3OsQCcQoAUp7e666NT89feMT4MMwKP71Fj?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

В данном случае, как и выше, параллельно использованы два блока “Процесс”: один для загрузки данных из pdf-файла, второй – для загрузки данных из xlsx-файла.

4. **Блок “Процесс”** расположенный ниже позволяет создать еще один сценарий, который является общим для двух сценариев описанных выше. Данный процесс отвечает за добавления накладной в 1С. Для блока “Процесс” здесь также указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfhMQY1TX2cZSVm6rCk3h3E4CPJTUXz_9dZ_23jXcsGI02HNCp7eMlDZWw64-cQxxBU9_Y-Erg5Nrv1FPjCO6-q8NTvKUQ3DsbmVUFIpbKagFvAhqOK4wlZ-9SUx-mx04zNzhWu2nuAE7FhH4APukmQqOiT?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

**Диаграмма "ЗагрузкаданныхИзPDF"**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcuES4FWujD3zcHdFQUnHBxO0mfErb99NUog0SZ10Uj6OwVWiIbcTuEX-owTegXQvzEswReKl6Sm6EdQbxZZ5SjQpeWdcnc7D5aRc8vKraxYutFiD3SRsVhUlsmyq7BZbPHO7lTJFQi-dK9lV-snVLYAwvN?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf6LvuEmiRZXB1_rm7mz3CyKIGAtuJkR0dehfjuOZUbV30TuZO7SUuyGFXbbD_bmun1eJa0wG_RMcyZ9_xhICWTfKKRQcV5mm_YvdJGNGSy8qLv8w1JAr3mvD2Qqkq2PYkrxITO-mw3tZpg7EDq4WZd-e-P?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота сообщение о загрузке выбранного файла, указанного с помощью переменной.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfzhOXtJn5wicT1dCYx6BiE2GWiVlv4wQoNi2R8kkGZy4mlmuFEYKKSAqy-rT9II5IT0E2AyOhlm7tr1IKKrKfjj0M5WIVVvpxAzeUVs7T0KAUJ5Hr3qKcdUkG6sJ5QYINoNB-chIaIYzZwtO-4e7ys66Wz?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

3. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используются два выражения.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeIu9PCfpmpnNtn53nmUxjJacER2ZzSBTznv4XvjpgkhDVmL3W2ZURsuNtECrWw4rZ3kWmpkD2EBvglmHcjJ6B1MhXHlYLgjO_3Y3fJTfKaGRXmpt8XWwLTk-2zp82ToNsl3akm40Joao1vaabB0I6TD89D?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

4. **Блок “Извлечь таблицу”** позволяет извлечь указанную таблицу из pdf-файла. Для данного блока указаны следующие свойства:

* Имя файла;
* Номер страницы (номер страницы, начиная с которого будет извлекаться текст из таблицы);
* Номер таблицы на странице (номер таблицы на странице, текст из которой необходимо извлечь).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcx9l6BJoK4OOO6_5rSB1-PPLnmeveQ466MULnFSHcKvmOlLdGwfMlqEYUBlUQBTbl6hUH32LM6Ivp1p0tYLM2AHsWn5vtJqE2rMuRut4nmm-9bHTYxOkyvlk5UN8ypiPrfJROuwbv8fX81LwOiX0Ijcu1F?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

5. **Блок “Цикл для каждого”** циклично перебирает все строки таблицы данных.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcbZ0AcCkiYpadxJNc1_wtkOkhdXX6-gbSYQa871CXV0CYOHA19qXI1fnUGijeowxsKXjikVF77a5hDlWk5OtrGr7XMY5vQKqU3zExeplbIUTGuTEIFK8FbvctodNrMiZBjA0ZoVHrx50kamSg2MPW3Vs4U?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

6. **Блок “Получить текст со страницы”** позволяет считать текст с указанной страницы pdf-файла. Для данного блока указаны следующие свойства:

* Имя файла;
* Номер страницы (номер страницы, начиная с которого будет извлекаться текст);
* Результат (возвращает извлеченный со страницы текст).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd5I5sTRCKGlP39gXHKIa-s4cu1w1GLX5ywbRmUnEfu_RkHZ4tbaeJejT5mPdDGl-siSUwyXQRxywzvT1H2jhhEukM6tHwIsPxDUQcZMoGzhfJQz7wpsz3wI3vM8n8Ba7-vSQqsJmRqAPSPQC1efIr1w7i2?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

7. **Блок “Найти подстроку между двух подстрок”** позволяет найти в тексте подстроку, которая находится между двух других подстрок. Таких блоков должно быть столько, сколько подстрок необходимо найти. В данном случае используется два блока “Найти подстроку между двух подстрок”: для подстроки “Исполнитель” и подстроки “Заказ”. В свойствах блоков указаны:

* Текст (входная строка);
* Левая часть (левая искомая подстрока);
* Правая часть (правая искомая подстрока).

&#x20; <br>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdbgtFp9b_Qkbrxe8dmeiQJelJd1i5DEORG5oXQCU-raN_eVtlmzQSo2WtQ3diDkDcBVHgkvHaZgNeTv5NSbFglLE7i0RS8B6bEiAKOIlbltsCd4xo_oGvt0q30MDfawZ5-g5RHdAZlbR7GwMkiRxfrPzU?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeiTYPXBys14G89f77i5Mz22f4ezrRbbCAb1GSs41ueZMv1z-OQMLW9vAzu_VVe9xL57bH6N6Hwf9LCgzUfGsYwm59u-PspCrterejKwS0jVhn59ukD5TcTXMIx7PIFgwsmVwCkh5cVjlgVjneuwwnTQ8B3?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

8. **Блок “Условие”**  проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $Row \[0] == $index, то есть, если значение ячейки 0 равна переменной $index, то выход “Да”, в противном случае – выход “Нет”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfSmVqBFTPXu-1VNCWzm4bv9h3FrYZqNaAZ8DVNs5oOo5O6o-lFH4-VZD83aMCNhlYFnhnfpnX3pRN9hvHLA9mEc_HROI-FNgOW6RhqZDMpyDxiTRfWdP-gODe4clZf2_eUG8D-cnEf5wajhAUf0ufdyb7f?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

9. **Блок “Добавить строку”** позволяет добавить строку в таблицу данных. В данном случае указаны следующие свойства:&#x20;

* Таблица (таблица данных, в которую добавляется строка);
* Номер строки (возвращает номер добавленной строки, нумерация начинается с 0).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXduhUNgu4Fe13jnQWyfb6EX6a_0jR6U_shvUBhOxP3m9SrLIqAzAPbmejwSaoNmfqk6BFUZsXG44Pk4YdG-dVplQCXsifnYT0F23MG6h23RoJjaoWjG3S1VhRPc5nYWO6msRiPcf2wUw2AqyA4nLn5PHxY1?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

10. **Блок “Записать в ячейку значение”** позволяет записать значение в ячейку таблицы данных. В данном случае используется три таких блока для разных переменных: $Row\[2], $Row\[3] и $Row\[5].

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeKROc_Q85uXzRVCh6ozR7cwHgtxq0i1_pkf-r3UOJi32naEI5kEGorkzvtdf5u2RAqSL4x1c4jgAV8puqlBqC21bL9YBUag2nLHpd8-zWZ2z_pxju7zO4qYGkcT1_snbSjqSRODnJrVVtSPmtcLGX-SzGo?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcgAmY-7jm8PD-n8wxkpRvzHI9ajAB8bDsPWl2F2miTCIcKwSv1K-fm4on_M3Es0WSBF9ony3SvFdza0kJSzzUp0E81jgbxsyGiDiIaEl7c0ACrojwF9H1HTkMfzSrWpsF4h5QKxVCovUXMKz8QtULtMxri?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdgVfkKqLgDOj52EBMgCXK5LNMznLwHYJuF-DcndwG_9P6iG37nj3Ks2mNlRh6XbMtsYRqjfn62-TAwW0mvotaxniCciK6IXMiMVw_aGgbB0HhSwC6HGlAR_qR3oWaLMTCyNkfC6IUCDfG-07jwAculfFoX?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

11. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используется одно выражение.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeHCutTccXGf8PfsB68ssGTAwAQKXo4wroHS5KS3pfnDxg1YxkVFmrzcYwuuWtKTc9DmvIdU-sO0eBytHL8bo7QzXEJ-12tkNMYh_txfu26JnwS-2eQl40fvICdb6c2AVW1zJ2RFFA1C3k8gUSgPyMTkuef?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

12. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используется одно выражение.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXep-n0rhOQvCPWgs-uLuesS0v99taziW754WxbVvaeHnMI17YT5G-hw_hwbdMeS6rmZCnY5tRmEXeu0Xa-eAYqeDsvE9Yim1gAvkNshIEl7fO0rz3idj1hqMaDdGlE-4bAMSnjUsKAEam331GDV6jB_px6c?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

13. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).<br>

**Диаграмма “ЗагрузкаДанныхИзXLSX”**

<br>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfJxv4Vr23qYtg-VbPmLFiBBQ2_1IydYgGq5f2fa4r-4pUjDDi6Io1qn9rpjLX7oqSBrC1E1M1-9ngncUkyjKDZodbbQZfZbyBilcBO7RdX433k6GxmJkzEyfD7KUYzlwfRb7mgbZIhQC0Zr9JxVhKXeI7I?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcRvfwTKFl41tXxn-x_-b9-_ZiJVHGsHFoWn7_VLEI0Sb8otrd7mpGoPkd_w7i8LxvjDrp3kJ4_HsqIyw3tcu0NB_PsTmRt0gQps2ABx0Fp-iymboNpSTJpa34yQKhSd7qfjKMvC7j26a5sNMLYz2V71IUv?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота сообщение о загрузке выбранного файла, указанного с помощью переменной.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdiMFCdvYp7CWv-mkoH2xQRkgySiwHOiur12Am9g0KsJ2wK9V8v7Jjrep5VPIc3P2u_Bfnqf1cvpGzDsx_aAwGBz33Wce7fEbJgqmMhcKR_b4_La3BFclbst4VcMEIxK30WJI6rSzV3aIHkYdND3WAkCHjx?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

3. **Блок “Открыть документ”** позволяет открыть Excel-документ. Для данного блока указаны следующие свойства:

* Путь к файлу (путь к Excel-документу, который требуется открыть);
* Ссылка на Excel (возвращает ссылку на процесс обработки Excel-документа);
* Ссылка на документ (возвращает ссылку на открытый Excel-документ, в котором в данный момент происходит работа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXduxJ0pc55wJKwsallTwe_scXHclp8HzactgtjnvgTfDDefZkMwN3YcOWaqVVCdSy6WhoWBlz5-fYzWasRElHKwbubwIGC-jgh2WvKCJEV-Zv22yzBd_MtgSW0nss9stsOuQmqVJ-tz5kIQZKt0h3cDmBF9?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

4. **Блок “Получить значение ячейки”** позволяет считать значение из ячейки Excel-документа. В данном случае используется два блока “Получить значение ячейки” для разных строк и столбцов.  Для данного блока указаны следующие свойства:

* Ссылка на документ (возвращает ссылку на открытый Excel-документ, в котором в данный момент происходит работа);
* Лист (порядковый номер или название листа, на котором расположена требуемая ячейка);
* Строка (номер строки, на которой расположена требуемая ячейка);
* Столбец (номер столбца, в котором расположена требуемая ячейка);
* Результат (возвращает содержимое ячейки того же типа данных, что и в Excel-документе).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdfTxNOAfolCxVq9Mst_jE6C1x03rhvzG5_MV81tbFFpgYLbEQYe3CL-kWlINkNLONv7-vfMk3aSx9Bh7us24zrxuUpK5y6OFr4mHcM6D_pamcXt1VDiRZZwwEs9RvZJL73ylweS3dcV-yHNIALnrRyRdzM?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdSN1-r6X1KOi_1LUOUvRBsLrSboIa2bZjHM8_ExvqoRasBQ5YAF1f0cmrH-NQGtE2zZ6kIBy_H9la5hsBt3a7WWYq3HGwW0BZSjl-wvhbPHZzk9cCXbogwkMyPfrFemjJVoFLZ7OSHssxsIt4sjrg0DgLR?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

5. **Блок “Найти подстроку между двух подстрок”** позволяет найти в тексте подстроку, которая находится между двух других подстрок. Таких блоков должно быть столько, сколько подстрок необходимо найти. В данном случае используется два блока “Найти подстроку между двух подстрок”: для подстроки “Исполнитель” и подстроки “Заказ”. В свойствах блоков указаны:

* Текст (входная строка);
* Левая часть (левая искомая подстрока);
* Правая часть (правая искомая подстрока).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfqoY1Y6zq1cIkVBS3szt_xOtF4w3STAyISmX1upepHQ9JwptniVC_-E6uekiL3Cm3IoKSJqbF0OQI2KYSmGXZP7jTCYwM2Nr20PZ_gxJfTQ0S_FtXo0szOipydseKnS_II7L1EP7RO_hWhmsHhK6e8yn8?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

6. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используется одно выражение.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfehzKigJlW9Wefv3M2B-t5VRqR-jGm_sKDCQAe4Zn4Vsto53XUXsFNuI-_9hbtefUFQoD9K_hnplyyMmqDxiBjNfJpF1yh66-z_17qPQO1PtgM9VGnaL1HMQn1pf3D1Oomf-gez8OFeWmK4B11V0-pGRiZ?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

7. **Блок “Получить значение ячейки”** позволяет считать значение из ячейки Excel-документа. Для данного блока указаны следующие свойства:

* Ссылка на документ (возвращает ссылку на открытый Excel-документ, в котором в данный момент происходит работа);
* Лист (порядковый номер или название листа, на котором расположена требуемая ячейка);
* Строка (номер строки, на которой расположена требуемая ячейка);
* Столбец (номер столбца, в котором расположена требуемая ячейка);
* Результат (возвращает содержимое ячейки того же типа данных, что и в Excel-документе).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdAOgNaSJPHoyUNLv-LGRDl0ViOv6hZdlrpiY8c0Kh0C_eOp9GeoWhiGA6MTWs3_sPOjN8Lagel24Ey18kaOQY45E1aKW81zzq2AdVcEOOJLthrxL6qXd370dhL7zrrHguYXHOJmuT1qeicj-chEO9ZzSw6?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

8. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdoV1g2m_cg2tuChMDI8BBa__qoYklCh6I8jiZmNRUx3chxPF7BTauQwcxFIfSA7-M3Y2u69SGFBnbWZO9oqsMoIi83m0g-Rk4hu39n4PLeNMu781FOWefVWe2Y_NXDb6qp73fbpJx8sX52iMiZmBmZgRS8?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

9. **Блок “Закрыть документ”** позволяет закрыть Excel-документ. Для данного блока указаны следующие свойства:

* Ссылка на Excel (возвращает ссылку на процесс обработки Excel-документа);
* Ссылка на документ (возвращает ссылку на открытый Excel-документ, в котором в данный момент происходит работа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfKFa8AiIatyKZ1h1Im-xlTqJiYrZRuZTcF1POprKnBBTt6SJ6TO34KRK2tT3bLaSu7i_5JRslDvMs3T2fEj7y9zlolYpHMguiRMJwTXuDfIPrOcduUKbZTlCiWmII1MJyP1-VZsYGCPjuhCK094h1ENrDB?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

10. **Блоки “Получить значение ячейки”** позволяет считать значение из ячейки Excel-документа. В данном случае используется два блока “Получить значение ячейки” для разных строк и столбцов.  Для данного блока указаны следующие свойства:

* Ссылка на документ (возвращает ссылку на открытый Excel-документ, в котором в данный момент происходит работа);
* Лист (порядковый номер или название листа, на котором расположена требуемая ячейка);
* Строка (номер строки, на которой расположена требуемая ячейка);
* Столбец (номер столбца, в котором расположена требуемая ячейка);
* Результат (возвращает содержимое ячейки того же типа данных, что и в Excel-документе).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXclrEmTUdssQbhjQZncrBO_erSkL_f_psA_DfHXw1lra0iC-xPkzl1NQVR1FYoV599O6OhMsOuUPOyhSvudZRG3JOlOXYEQpFZQlykhrZZCgJySCIYPMtqxCKfAjpaUUy9vf82ecCEHRoVElUbeHNVXCaw?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXelxe8VcJXU1fqw08k_jCdBgxzAeYhx-_cx33OZIQhTSRVUyCt3lpWNabeY9dGrHgrYZlp0rqnBJUSOGvK8yuw0Zf1p80e9ogpm2IJx3biJw28CxcWYuWtiO6oc092VocAx3ZEpoM5LH-P9ja8LryK5tEY?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

11. **Блок “Добавить строку”** позволяет добавить строку в таблицу данных. Для данного блока указаны следующие свойства:

* Таблица (таблица данных, в которую добавляется строка);
* Номер строки (возвращает номер добавленной строки).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcndOxoWNRKoMjjgj6e-oVm_KKlKVT1jEn85VxJJUhbZ115fAmdQOtTvwS3_aP1aUXYOQvcQ1oaIZMrc7PkUzzuWelIgsxnTpqBXu0jBlgRP1lB3G3dTaVu1cDix8SRrQ0VzGnbQTR9EDpbQEblayin-60?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

<br>

12. **Блок “Записать в ячейку значение”** позволяет записать значение в ячейке таблице данных. В данном случае используется три таких блока для разных столбцов и значений. Для данного блока указаны следующие свойства:

* Таблица (таблица данных, в которую необходимо записать значение);
* Строка (номер строки);
* Столбец (номер столбца, нумерация начинается с 0);
* Значение (значение, которое необходимо записать).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe-EKG7FW78MfTk-SogdfFz8aNrjbtMrwOHK_IlZLRL0NzbqSKdXS-IVNWJhpNUT4BOAjYvDVJB2KhJzmHmGi1Iswtiu9URFovnBYf7YrqhsmY7TuJTPg92Wv9IzGnTspbgvFjyEytJLWBf2l-12SPmhzVs?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcnJi1Rf7K1vavXHJskUwpcBX9BKCqKlFbZznkSqpwuyAqf-wT32or_KmdljjA1duyAbg5-IjLv1PivKH7nyVJkIrs8tZ-GktnvuVnhekltWc0kw7FZejYWtF-Bm1UDbDfIboXr1L5oUiefZUwN4kvjexS2?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcB0LOoP6ahBFfbtghTJm6jdrhDK0cQRGVT7mnQbtHCnKl47ySst2Wlyd8NwfKKpV1NWSMi_Ih6_7jesBWQgUgMriN6weJ4csWDDs4SALNrcHojnK5tRCIUFUu8FEKijUMwaq5iQxvmCChWh52KPacnD4hX?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

13. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используются В данном случае используется одно выражение.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcSOSM_wgT-jAnSxTWCZNAnF49PKP-kZBcA8WXt7jqirNT9y1PekwIqBRBIjzavTJhnlALHdzhiIh0JTFL-JwRs099dXjQI3iU9xrEWnZcVNX4z4qxuWaROkZxH_v38nHwUkTJuLUiMpdCTZ_DM30lEzStP?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

14. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “ДобавлениеНакладной”**<br>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeV-3lEIEF2fmmSTpKd2k7TvFBDDe43xw_cyl9GQtrKlVjqB4-dRbIYMwyNqojgs-LTsYcXEy83_ez6bcXWEXn3S9t-InCOB9YhiN37GOORX90fwTxTYDgHp2ehTx5arraD9S4lDejTo4fdD5-OScXrYwc?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdcDTnTsqju9HzjYC5uhdfZtVviqoed6Nv1VP5bFf2vVGi9VvdofIDVTzdZmq__arDQTP2ehOcf87-8MQUsWTTIAb7A31w_bHoUEliF7KF2NkUuz7igFV-A5Ahs1jH3cUQljEMWU5s68npzpq2_1tPYrgjl?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. Здесь данный блок записывает в лог робота сообщение “Добавляем накладную”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeOh4gf5sxDwQ1FodfLGuGkCMWMJ5yaCsQ9TKJ4MKl71-ChzIbsJmQcm87Yt2pFDiz15B5jrMPr4JquSfN5DKQ4rZvPZFI-ghjTwPMt7-aXq6_RP2EwKOFn6nEoCesRgaPLt4prP4gjKHP9zS05uUS7Recv?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

3. **Блок “Считать файл”** позволяет считать содержимое текстового файла в переменную. Для данного блока указаны следующие свойства:

* Имя файла (имя текстового файла, содержимое которого необходимо считать);
* Кодировка (кодировка файла);
* Результат (возвращает содержимое файла).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe2uV5GwVZeb1MCsfsZgPwOflxwZ9WFX9XDRfje7DAPxOM7kr4QifuG86OYkoH1De66akoYPX1tuUcipumHuc34W7CwTm5-gtl7yRUS2tdeaH9BdbZDtXdcx5FooPBsl3r2OmFY2K9XlWKel7bLTL-jGy5t?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

4. **Блок “Замена подстроки”** позволяет заменить в тексте одну подстроку другой.  В данном случае используется два блока “Замена подстроки”: для “Заказчика” и для “Поставщика”. Для данных блоков указаны следующие свойства:

* Текст (входная строка);
* Искомая подстрока (строка, которую требуется заменить);
* Вставляемая подстрока (строка для замены всех вхождений искомой подстроки);
* Результат (новая строка,в  которой все вхождения заданной строки заменены другой заданной строкой).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdqC6tctyJgpUVPl7hWjqJjYtZEfcsUYHsknrRvx1wf5doM2w4nQI7BW8rOfTgtV3UuYxo841DekqnFN-ykMczRUFBCCSsOZesMnOgqJVr5WmashaDesDKkDeZZAo76YMY58f-SRJIgSH0Xvz4T_axZ-inc?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcTqKPg7nZUlXxc8Tf6yKYI_sA5U9EuJWTCQ6q0XWi8FJtvTlx12-aChSe_fHQGK0a3r5pwL-auMCd_R5o0ZRVlyCDNbxZbEouiXF42D4ZXg1gBVMacQyrYqfzGzUCbhynqpbz5z503CjFTmZrkE75vZfia?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

5. **Блок “Цикл для каждого”** циклично перебирает все строки таблицы данных.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd8jMl6RryCC21eViiAQOXdSD2JqcrQk6E4DuA4Q-1X3WtlGUQ3Phrikdq8UHMT38C2Vk3-34jBkRgDGe0zPmZjMR8p28DMGaBG072JKTGqQP8vGFXmcXtEw3cEnxjDIryQRJz5cKg7vcy5p8Xk_7ZNJaRJ?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

6. **Блок “Соединить текст”** позволяет соединить все элементы строк, помещая между ними заданный разделитель. Для данного блока указаны следующие свойства:

* Список частей текста (список строк, которые необходимо соединить в текстовую строку);
* Разделитель (текст, используемый в качестве разделителя);
* Новая строка (установленный флаг, включает функцию, при которой в качестве разделителя будет использоваться новая строка);
* Результат (результирующая строка).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfAHUtB1-AtMPrrC_JSq3Unb4dDNLmQ7nXLHbsY847KCTF6OEwTPJYoSsXaqOWqXBtTURtAKFdoyszCBJKggTY2ECyziirbIdKToDFNVmBVRrrKEGu2XUl_EvoAsBNTIgUIBK6WRA6B37cf50-jR5fVjJYl?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

7. **Блок “Замена подстроки”** позволяет заменить в тексте одну подстроку другой. Для данного блока указаны следующие свойства:

* Текст (входная строка);
* Искомая подстрока (строка, которую требуется заменить);
* Вставляемая подстрока (строка для замены всех вхождений искомой подстроки);
* Результат (новая строка, в  которой все вхождения заданной строки заменены другой заданной строкой).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcKWnIolmuZPnTVWs--DJrTchwN8xHpWDVlwDmYK2-oEJFzAy3BcmqAwD3Sc73wgVfAuBh-zP7PQyqe-5E7DwGZGITWyz1plwe-30Ths9Jf6IBOPnhi3cU5_ieb6YkwTcbLd1m0FuAqt-V4BJy2tIlJpTUQ?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

8. **Блок “Подключиться”** позволяет создать подключение. Для данного блока указаны следующие свойства:

* Строка подключения (строка подключения к 1C);
* Пользователь (имя пользователя для авторизации);
* Пароль (пароль для авторизации);
* Видимость (установленный флаг включает видимость окна 1C пользователя);
* Соединение (возвращает объект подключения к 1C).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeJhfQiA8peA1Di1xpc2sfyJbnA80tU3FLcW_Bo5jux-PWIDG-R2lae-nbss2xrDVbCP2WNyYBsMMUzGMWj01qztdfXzOVLbe1DTHLl8P0TDSPajynajJInEyZFe4JRwCP4HvlQn_FoVY-f929lN3VnjnhY?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

9. **Блок “Выполнить код”**  позволяет запустить на исполнение код на сервере. Для данного блока указаны следующие свойства:

* Соединение (объект подключения к 1C);
* Запрос (выполняемый запрос на языке 1C).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXehFj34e3cNCVvw1ht78B4E3uFCaPwBUk6yY2v7ivJxy25WczbeFcpBgqz3JJi3VmyJYVoXBZHuHQrTHqOZPAhH7JO9h2gPRkoiPA1XA4WN5fNwM50Znz5l86kLmJ4jdWDuEOPQxwqItuT1zMGR6c9D6zqY?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

10. **Блок “Закрыть соединение”** позволяет закрыть соединение с сервером 1C. Для данного блока указано свойство “Соединение” (объект подключения к 1C).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXftbROezdVCuz-ImOxJXPqT9inySBfHTIomTHyQc7WnCpY57MD9Cb9c2gE1M8S8LG-E8ZR7bfw4nVgGxFQDib3fRWfPJUE1HXVh6BhDCPiY7xFUJwW_5iEkQk5iEy13vzm63sD4aotBWSS7MKB0-GQXCivC?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

11. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение": $ErrorMassage. Т. е., в лог робота выводится сообщение об ошибке.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdj9-ug615cl0NMltomme0GA-g7bhFmiuGZkVHvIgNixrEVNAjhkPK_d90Nc28T1TR-CV05sV29uR3CjmjU-ngYrQlGGXQnH_8AsIQm4t8iQdlWd83J0IQL-dwfVtbbP3vzXkeSihVN3YHTR5KhgdPApTcj?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

12. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используются два выражения.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdYnN3Y6Iv7WLc6KaTcvJFxxUdO1Jd11Di6h9Y_n07v2seQy06B-_D7AQY6ljw3kKVC957n8sxt3R7J0gJWkpg8JwnFmLW_DIIukPICJkfTwDjFpxJJpys86jjG_uhdaSoCHHmJw8LkckMppvIVVDaQiety?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

13. **Блок “Добавить элемент в список”** позволяет добавить в конец списка указанный элемент. Для данного блока указаны следующие свойства:

* Список (список, в который необходимо добавить новый элемент);
* Элемент (константа, переменная или результат вычислений, которые необходимо добавить в список).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcUQimaAjFAqtldej5tL-MZSm2P5VIHsInKDYVQY43ffGUwvpJ5BrSzTzwsdhOPr1LYKgBjlTsqLiS8R8aeS-rwERbCGOV0PTOnD0ZcOPDrnAAUgbdGmkmBynfTQhbi3s-J49cUSkgt5QCpvIl0iV4TzSF3?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

14. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используются два выражения.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeYFnfagkbLIRlp6gzO7krpaBGpFdLzziWs1HM1n5srBWFGv6dNKe79fILLf_JbxUpFHerfO1ge5DptodrQJHMoOqHTGisYHzPoYZASPPVQLYfffR2XkY7nlEmVM0GzBAdShF1oRXuodRWcp-n4SgW9jREj?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

15. **Блок “Добавить элемент в список”** позволяет добавить в конец списка указанный элемент. Для данного блока указаны следующие свойства:

* Список (список, в который необходимо добавить новый элемент);
* Элемент (константа, переменная или результат вычислений, которые необходимо добавить в список).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd4is6h11AjYHcEGVnYphIvZGb2ZaGlN5PisdWkJcsdPe0ZlTTXnyqYMCgSogiP7z4_R3YSjUfTZxXaVV3sEiXwx7-lPYUFKaJ-sVwlBN_FxY73mBD7rtT3AyPAwBUg9kl9oYNCMEp5ohuJ8caySezm3ITe?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

16. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используются два выражения.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfasqGK6ULu_-OUsDVXmbbap2IpJfIT2v2YwkmSY6Jb0v3TTzUJf-TSrMPcrBexKnkLt9KGlI4Ggv347tXQNwZtmmtCT24tDvlgod0-9ZbNXRLEhoULRzG2JngMF0mig8vv3ewvl8ITRvADZ6LuPS8bx9Y?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

17. **Блок “Добавить элемент в список”** позволяет добавить в конец списка указанный элемент. Для данного блока указаны следующие свойства:

* Список (список, в который необходимо добавить новый элемент);
* Элемент (константа, переменная или результат вычислений, которые необходимо добавить в список).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfT-mHG8hxpiMUYVGAKmE5RB1ecN8Lf-QkDgo2e6MYaJB-ljFKiQ7B_cWKjh-2Z0dwcK5OjjpOcxFkFfUdFerpj66-2h4YuamUgQuh93n8rlXKiTBhJp4TGgk3Q4cjta3HWEmca8CyDubgJO706cWlzPj-o?key=bQm2vlFSc1CKSZLYW_fmrw" alt=""><figcaption></figcaption></figure>

18\. и 19. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
