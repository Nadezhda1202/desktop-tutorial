# Крестики-нолики

Рассмотрим пример робота, который запускает игру в крестики-нолики, реализованную на Sherpa Robot.

Проект робота состоит из шести диаграмм. Если описывать пошагово, то данный робот работает следующим образом:

1. Запускает игру, предлагая выбрать символ, которым пользователь будет играть.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcGD7I4VCwXOIVc5PMM6KozNHuaS8Kb0LosBpSs33u5IB89ZYzLAX3Jp8TKkSVN9Wac0jlEzZh_JInf2Vkpq2aU2k1M9NbGW7uEfT6W5qJEXSb7wFX9WNaqAHPoyDjtbUMhxXGSkg?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

2. Открывает игровое поле, после чего пользователь и компьютер поочередно выбирают клетку для хода.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdwKr3tkiXq8CVbjJgqzOSffJeBt1STul-vs5QwL9fJL9gi8zwBqdrCuZvU0TqS03NruHAvgumIrGOX16HTQKpZeLKKqg16dREc1VPGU-LB0-2YGAvQQUmIvTYnKsSL3sNJdfuMnQ?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

3. В случае выигрыша пользователя, выводит окно с сообщением об этом.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc7Mxcz3VCswuBwv-RcPDEng1qsshmrBdxnxhLIXMDGo2QZDgY1vfDLk5LTIW-4E5CNotknwlZChOFKMiOehtVeDh6rv5NTdKUFgbmfPndRVek6gHqEz4SRjDFAp4Y0HAuMQaHW_Q?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

Основная диаграмма проекта называется “КрестикиНолики” выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf18SaDH552gEsXQvmBqhIcrw65NW6KDljR4NM8C4YLfIlUX0dda0cPebtQXHOYzxN4D6uW2Fy-ImlCpLHrbN-QDuK4dGUPHJ0_qkT7yDgMC2WeCMdibXiZcjaNnhRttpFEiidsEg?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Получить путь”** позволяет узнать полный путь к файлу. Для данного блока указаны следующие свойства:

* Имя файла (имя файла);
* Генерировать имя (при установленном флаге будет сгенерировано случайное имя файла, включая расширение).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeqoscEXVmxeWC6UsE9SAx1q8utQ-aFgqmAHMte70_NtN8rONyIpaT-BgSZTmfjzwX2j4I9Iu-vouw4J2TitNFbz3ZzsmPXLOD-dtWFpqq8FJG-7ILnEZQ1FGDnFW35QXde1_-9?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

3. **Блок “Получить путь”** позволяет узнать полный путь к файлу. Для данного блока указаны следующие свойства:

* Имя файла (имя файла);
* Генерировать имя (при установленном флаге будет сгенерировано случайное имя файла, включая расширение).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdAYKpoL4iuDH--fZvseYmKEebB_tMXosKfYJsJGrL7YrodP1oG-an3pJ2wfFiohXFcuutN063QP2_InA4TKHDefnONxX0huLzzVTszorqtWWMyhi1Ta5Ro0QsTuaebvpc0Yct-?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

4. **Блок “Показать окно”** позволяет создавать свои собственные окна (формы) и отображать их в модальном и немодальном режиме, в том числе асинхронно по отношению к ходу сценария. Если задан селектор, координаты созданного окна будут привязаны элементу управления в другом приложении. Для данного блока указаны следующие свойства:

* Конфигурация (строка  конфигурации);
* Объект окна (переменная с объектом окна);
* Модальное (при установленном флаге окно будет показано как модальное);
* ID процесса (переменная, в которой хранится идентификатор процесса).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdC1ciF21txiUHWdW_QXMNCLCwwb8N3vG72_FTJFKhJz8Z8n14-QddBS3lW-JGPPIQMpmv951hu5hrXOZJzFUYlRKDcbRMUD3hZUtKwxZFT7gYBq2vXtQczn8vpf2aHykjuV-q-?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

Для создания и редактирования окна используется кнопка “Редактировать…”, находящаяся в блоке. При нажатии на данную кнопку открывается “[Редактор окон](../rabota-v-sherpa-designer/osnovnoe-menyu/panel-razrabotka/menyu-dopolnitelno/redaktor-okon.md)”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfoNIdYzd3rA8EtB8PzZ6ZpR3ThxUovLmWudzCurx7dJRtjQ3nxUQrnSwe_z5GmIU-0rpVx2AZExbSVjbje53WyVX4toIO5nJld4oMxeQpKK8VPXx746tFU1h7CsqozzHD7qNMFpw?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

5. **Блок “Switch/Case”**. Оператор switch сравнивает выражение с указанными значениями и выходит по указанному коннектору. Если совпадений не будет обнаружено, то выходит по коннектору “По умолчанию”. Для данного блока указаны следующие свойства:

* Выражение (сравниваемое выражение);
* Условие 1 (при совпадении будет произведен выход по коннектору 1, а также выполнено выражение 1 если оно задано. Если коннектор не задан, то выход будет произведен по умолчанию);
* Выполнить выражение 1 (при выполнении условия 1 будет выполнено данное выражение и произведен выход по соответствующему коннектору. Если коннектор не подключен, то выход будет производится по умолчанию);
* Условие 2 (при совпадении будет произведен выход по коннектору 2, а также выполнено выражение 2 если оно задано. Если коннектор не задан, то выход будет произведен по умолчанию);
* Выполнить выражение 2 (при выполнении условия 2 будет выполнено данное выражение и произведен выход по соответствующему коннектору. Если коннектор не подключен, то выход будет производится по умолчанию);

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeYWfNurXMOyfAarm85dIa3vQnFa-d1zcUjsssxHsT53uAd7TGi9jSeyyHsvAQxonEwxAc5Ju00Fd8id0jECMim2ZrgKd3cchrch4odoJoGRxFdB75mYsNPWQk97kNZA5keeVo9VA?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

6. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXePfUen2D_5epkkpriBctr_go5a7nLOz54FzKWPsU8sYf55LX3XBv_TuBif7Gfeam1vQtWm-4aEOIHlSqE5cYWIfvapFPEgfUMDXdkveaCKUvyp9_0aav4RcSMbpHenvwt2It2fpQ?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

7. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернётся к текущему блоку и продолжится в текущей диаграмме как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeA5LwUHPpv55WZkC15R0wWLftaTKt8yqKrmCUgm-oZ8Wi0Q-uKQGfdvWQVj_MhhDyXEjX1bgGnhW17JWXDQ_IBb8fyPjOpO8kWi7CEqq5KNId7NveUeeFL0TaGnyvf_OeS_yMvsg?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

8. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено:$IsFinal. Т.е., происходит проверка на финал.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdoaNwyxwik2eEAhB_JGb12YhAb1Q3WEjqvqR03J89tPNk38Q-2tdFJ3c7o9fMZRQw_T61PW1cZpIqYE_N3TkhM8w61lit5Au6unBwdr9eZtCsdOZYjFybHrTG6eh8xnYab5bUITg?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

9. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернётся к текущему блоку и продолжится в текущей диаграмме как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfrvRVlhsLZrN90bppRvnPoqiTNlnaKy_i-_BmKmot5cljnauBac5dPMtK72JlNlFWOggy5PyYCt9fx5Qs2p4alTDY0JqVX96Ot0O67eXZUyB1UTmwGIT0fZAnKcmquLa_834n5?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

10. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”. В данном случае, в качестве условия установлено: $IsStepUser. Т. е., делается проверка на ход игрока.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXervXuw-7wfa3-sdFul5F2SuoMsnCJ7Fr0IuDYoSkdo_MmowmEaYnOwPKRZpgibPx2I8mhLc9IlaExJliEcA-LySpjJcpKpfUMyd05-cEvxS8QEqoWTlUGRYBv05O4iQHCUUpqC?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

11. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернётся к текущему блоку и продолжится в текущей диаграмме как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdD-DWNu8IEACpULf1w-XM1QX9Qz0Ldg9L1Ncuc7ingMPGChLmN8AI73-5xAOxeDr8UsoKGmtdNrRvCXatmOndMBAIe7285gmvnIvhcZ8Y2biod2dlQIBebhDAZJ58ekghpuVPIqQ?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

12. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернётся к текущему блоку и продолжится в текущей диаграмме как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXddHDkXiXMJGUrl5BxWiqkt8Z54SuM1yYarJ-EKJdg-xPr0s0pH5UK1AT_a65tyInOFhfkrcgRXY-vfhrW1stcFSH9H5dMasLc6qngJzZzT-fJnPkXfavTIROCi-Voqh0pckHiJdQ?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

13. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdXN7SMvYppUx6BXjFKG5i3IBhD4U2R_EcFaJ8D3oMjTJU2EsDRuXUPOidevc_-yJs-nCmyB473t9C86URLLccO94dwmW3bO2SODfVsA7Vb3GN7zLQW3J8zsC2-KZAhqSH5WJnM7g?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

14. – 15. **Блоки “Конец”** (этими блоками завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “Выполнить ход”**

Данная диаграмма состоит из пар блоков “Условие” и “Конец”. Диаграмма “Выполнить ход” выполняет каждый последующий ход и проверяет соблюдение условия.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc8gk2qGajWIr1Nw5xrr7jzxo2smpa-oRsgNAtLfbraaa0XARZyaaw4gUWRctRrOz-y_0OCSf6QO3Iwo1QSwNGVFsiq_jo-pyb_2VGjLN4oOGgjei8mMN4ONxT5AZfR1yjCjY7tow?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

**Диаграмма “Ход игрока”**

<figure><img src="../../.gitbook/assets/ХодИгрок1.png" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Показать окно”** позволяет создавать свои собственные окна (формы) и отображать их в модальном и немодальном режиме, в том числе асинхронно по отношению к ходу сценария. Если задан селектор, координаты созданного окна будут привязаны элементу управления в другом приложении. Для данного блока указаны следующие свойства:

* Конфигурация (строка  конфигурации);
* Объект окна (переменная с объектом окна);
* ID процесса (переменная, в которой хранится идентификатор процесса).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdusoAzXULW57mVoWYCC3eiaskn-Egtz9sZ0tXMWR6mB4CLLHZmD7F189wg0-5QDj8_NoaAAHT1vJXwV488QK8GfUPIAXsLWKDX6-XGbu7fGzxPxa-sJQKaWtrZ8X8sqpB8HuRs0w?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

Для создания и редактирования окна используется кнопка “Редактировать…”, находящаяся в блоке. При нажатии на данную кнопку открывается “Редактор окон”.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcER_K2baWfUb8iOTGLAgcnJpAkqWyMMiLbo4hdlTq6XlDDPded6_gwUSgkdaOybetW7vF1Fd_jQ3S0yCUwu4MyGyY-AE-QaVcUSFrJto18rIooM_f6PU0lbERbMoeR0HGYQvxAjg?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

3. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”. В данном случае, в качестве условия установлено: $ControlEvent -ne "linkStop.LinkClicked". Т. е., осуществляется проверка, что не была нажата ссылка “Завершить игру”.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf1lDXqw30eRN3lBC0gHrONjYW1GajlCjOH0MtI9hNb4C8sR-qCOeLK6sY4uYbqPY64LhXdpdJDMfwdIYWK0PtGYliMIxjfSJIOq_nWcWbAbt7SwctjUaD2-Nul3xDAwvavq5_KYg?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

4. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернётся к текущему блоку и продолжится в текущей диаграмме как только будет достигнут блок “Конец” во внешней диаграмме. Для данного блока указаны следующие свойства:

* Имя диаграммы (имя файла диаграммы, в которой продолжится выполнение сценария);
* Переменная 1 (имя первой переменной, которой необходимо присвоить новое значение);
* Значение 1 (новое значение первой переменной);
* Переменная 2 (имя второй переменной, которой необходимо присвоить новое значение);
* Значение 2 (новое значение второй переменной).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXepDeOWbdQdwnh_X5kaPD1juuWm-4xrWijQqqt_uiBlX99C1BgPggVzDmHKBAQati7ob1b5lBbozaZLu_m3t5gwa3VyvUfd_r0iOcs00RhZKoL3FxVPxGC0dc9fV_V6WHBlJVAW?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

5. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”. В данном случае, в качестве условия установлено: $IsCorrectMove. Т. е., проверяется корректность хода игрока.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfOLhaiXpLy5r2zCIzznePrGNNQj787VhClzx-kWUhhguLS63odgcGSXis1lSdkm8Fc7rVu0aFFBaJAQYYenTq5u3zvMs-2pdEx6YIRHv7D9YYx05q3FGWe8_SfAmf4EEdbJxL7?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

6. **Блок “Стоп”** прерывает работу сценария или генерирует ошибку.&#x20;
7. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “Ход компьютера”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXerMFtAloxxwOwXQOW3NkaxHF-QOSdylq5mS3jJkRMzaPIqGHlM5y08AtjPBd-ZKjDcL0EJXttN_0ZJdm4l4OoVpr1-l3tZ4PLPp4RdRBUL8DuzUel8k5kp_DEbEP-t94O7M_4oKg?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Случайное число”** генерирует случайное числа с заданными параметрами. Для данного блока заданы следующие свойства:

* Мин. значение (случайное число не будет меньше данного значения);
* Макс. значение (случайное число не будет больше данного значения);
* Шаг (шаг случайного числа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd3MnPszQ4sCVrDLLDn9gg8U4yl5wkC4f62OtSzmWVDOihPiMiV2AGeaUOaUVbYwulLJrZt5vtRw2avchNhhE3O6gOI6kcWPbP-sQZjHCHYdubC3goEsiCObgkaB3I4Zu4jxqHhOQ?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

3. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfE2Rd56Vk_PeLUHUD416RjJnbyOuBpb4w4rMVBHDQwqAeP9gTw_Pyj1Wfrl_HaUdbbZ-6SV05kpsDDBje7Z3UDUjAU0GqBrKbi-wZZvPFgxQRFzBMugoKFheodH5ZX9Zyd0Q6Z?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

4. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернётся к текущему блоку и продолжится в текущей диаграмме как только будет достигнут блок “Конец” во внешней диаграмме. Для данного блока указаны следующие свойства:

* Имя диаграммы (имя файла диаграммы, в которой продолжится выполнение сценария);
* Переменная 1 (имя первой переменной, которой необходимо присвоить новое значение);
* Значение 1 (новое значение первой переменной);
* Переменная 2 (имя второй переменной, которой необходимо присвоить новое значение);
* Значение 2 (новое значение второй переменной).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcjlem_r8ny4HqWMMVbqok1_l_k-AGdykATARUr6rLVEoWejcCAOtnnrxouIcSGKqj0R8CHMshKSu3o2yq-VnK9cZYZUxUfKp-o8SXf2fr1qH67G1Vg12v-THtFDhw_sB0LkWEASg?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

\


5. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”. В данном случае, в качестве условия установлено: $IsCorrectMove. Т. е., проверяется корректность хода игрока.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfp-DNjBmoYKXHDXNOj3B8mzkXXl5EVF6c_zTkHlmdeYje72A8D3kKsgNehOMHTxQDuIA809USTEceGzAvbpMe6bKDdc6QjaZIqUKfVxODVtzu6qBDcVM6iQNODRYoLnUBNqlbrUg?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

6. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “Проверка на финал”**

Данная диаграмма состоит из пар блоков “Условие” и “Присвоить значение переменной”. Диаграмма “Проверка на финал” осуществляет проверку после каждого хода игрока или компьютера.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeU-mLT0RT44FkTpX-hRFOPlvoooP7R_iUlvapgopTBToIirz2Drzzr-Sm8tVSSdhHtlUt-10_YCsSMEkHsyHnhWmqlCkRfwDMW067Ak3pfUFqcnAuTtU12EzLKsSsvd4ogrnmZQQ?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

\


**Диаграмма “Игра окончена”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdNuaCa03qLf6tNJaj2ehSbmUfSO1-dMhwpTX8rygElb2AsfZDC3576qARUBqvEEH2d0QleLai4TFv7XVkeeriEEErZsGZKQdUOmXe0VWmiy-BLIf-dlAjvmo8yYfgoLDpCTkZUCg?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Показать окно”** позволяет создавать свои собственные окна (формы) и отображать их в модальном и немодальном режиме, в том числе асинхронно по отношению к ходу сценария. Если задан селектор, координаты созданного окна будут привязаны элементу управления в другом приложении. Для данного блока указаны следующие свойства:

* Конфигурация (строка  конфигурации);
* Объект окна (переменная с объектом окна);
* Модальное (при установленном флаге окно будет показано как модальное);
* ID процесса (переменная, в которой хранится идентификатор процесса).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfEkV91ynbheNtmDoTRzkdt4eLNCbLGPUXluKxwK0NoK8d3hMrsIPWDOV8zg9ms-mZWk-0-rPWuLVaIm657AatKylrtzBIxs-mYl_QftfxZUSDUl_XeRkdNuMtz1-TS4OeyB97nSg?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

Для создания и редактирования окна используется кнопка “Редактировать…”, находящаяся в блоке. При нажатии на данную кнопку открывается “Редактор окон”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfC_b9lskCt5R8o_tajztewaoyjtlPWYOyh2IgJXtvHvUQR7WblAfYMO82rqRoO3r00r-TN7o81hZLehF4FICtU7wRY_X3NOUjy3iT2Bm5Lli9fDOFbz5YjCHF1wrh9EeObfZ0Gww?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

3. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”. В данном случае, в качестве условия указано: $UserWon. Т. е., проверка на то, выиграл ли игрок.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcUW3qCe_jrjybivhgtbvQA8uS5yRa8etRIxBcUHT-a3A68LCTDlDKqDBhFOvJkmb6ZmcIPES8vJmsNuvCDHpSvnzJGNUn_tyGZQdtjFwCX9y50wfmKBVPKiwoNByTemWJRHT_x9Q?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

4. **Блок “Окно с сообщением”** показывает пользователю модальное диалоговое окно с заданным заголовком, текстом и набором кнопок. Если используется окно с несколькими кнопками, блок позволяет записать в переменную текстовую константу, соответствующую нажатой пользователем кнопке. Для данного блока указаны следующие свойства:

* Сообщение (текст, который будет отображен  внутри диалогового окна);
* Кнопки (кнопки, которые будут доступны пользователю для нажатия).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcNJ2CuS4uMoH__MroPin5PuFvUtoYaA0ZtQvo1UH5fzEyJ2p0sKKXmYPTE3BDX34GH9dSQ_J8LsDbX9t0N69OV2AqIy_EzujjaDpbJ4yBiO0iBUmLtGs9IGyXfRuTrGjo5M3Wl?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

5. Блок “Окно с сообщением” показывает пользователю модальное диалоговое окно с заданным заголовком, текстом и набором кнопок. Если используется окно с несколькими кнопками, блок позволяет записать в переменную текстовую константу, соответствующую нажатой пользователем кнопке. Для данного блока указаны следующие свойства:

* Сообщение (текст, который будет отображен  внутри диалогового окна);
* Кнопки (кнопки, которые будут доступны пользователю для нажатия).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc_E6Yi_mrjKkApFIXseb5l0Z8ENSH-atYtQtFfAVG2MAB2ilr_DLlSBKsnuRHuWrudU1uxKX4OHKVu38h_jZkA1hppF_k7oI9UQjQijk4YqJohP5DVC0dT2HWSYcfSueKi3I5Xiw?key=8OqHXqKR2hFCRM0MvJDUmXXN" alt=""><figcaption></figcaption></figure>

6. \- 7. **Блоки “Конец”** (этими блоками завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
