# Email

Для настройки виджета требуется совершить следующие действия:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcTWmLzYS2iehpRnklcXCbYWHdfEDoPj5Toi8Ykb6vlCqyBMRazTkdy4Ig6zPN2W9c9xACCAs-syXFX1xMKN0C7zFG2RNWRFwC90kwZi7issTvERFU81peKiw2mknygK9r8R-wwqQ?key=t1xnaH6fTFgHAfrUo1LTC_-9" alt=""><figcaption></figcaption></figure>

Виджет Email отображает поле для ввода текстового значения Пользователем, что позволяет использовать подсказки и ограничения, для ввода только верных значений.

Для настройки элемента нажмите на значок редактирования ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeUwHXrBCwJ_GXqak1s6_QMK6X1tIE6pZD1PaPGcdMwjbhnik7fK7G9r1P-8DRtYCu3HELXKNROrkMoKNet78MBI2WJGYZc0RVsBag9C-Sjw_eyW6GRclXetn9q5jqTLgtdiVpaeg?key=t1xnaH6fTFgHAfrUo1LTC_-9).&#x20;

Откроется всплывающее окно “Настройки элемента”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfSN2A3SeZQSiVujrk5nsVCTCQl8s8f7xG_snAcE7Gs4TDLuZZPdM4hLG9TdtwlffhOp_Iysxs-Kg6yaV96iK-GxLXoBBCMWxLt_Csxtpc2_1b-aNL__QoxcbtcQqrl6VvNJHiriA?key=t1xnaH6fTFgHAfrUo1LTC_-9" alt=""><figcaption></figcaption></figure>

### Поля для настройки виджета

Заполните нужные поля для настройки виджета.

**“Обязательный к заполнению”** – чекбокс, заполняется вручную левой кнопкой мыши. Предназначен для окраса поля в красный цвет, если Пользователь не заполнил данный виджет.

**“Видимое название”** – текстовое поле, заполняется вручную с клавиатуры. Позволяет указать название для виджета.

**“Имя Параметра в Задаче (Task)”** – текстовое поле, заполняется вручную с клавиатуры. В этом поле отображается текст, который соответствует значению указанного Параметра выбранной Задачи. Пользователь может изменить это значение в текстовом поле, и после сохранения формы новое значение будет записано в указанный Параметр выбранной Задачи. Это означает, что при внесении изменений в текстовое поле Пользователь может обновить информацию в Задаче, для чего достаточно просто ввести новое значение и сохранить изменения.

**“Заполнитель”** – текстовое поле, заполняется вручную с клавиатуры. Позволяет указать текст-заполнитель (placeholder), который будет отображаться в поле ввода до тех пор, пока пользователь не начнет вводить значение.

**“Класс”** – текстовое поле, заполняется вручную с клавиатуры. Позволяет указать CSS-класс, который будет применяться к элементу. Это позволяет изменить стиль виджета, например, цвет, размер или шрифт.

**“Регулярное выражение (Regexp)”** – текстовое поле, заполняется вручную с клавиатуры. Позволяет  задать регулярное выражение для валидации ввода.

**“Подсказка об ошибке валидации”** – текстовое поле, заполняется вручную с клавиатуры. Позволяет указать текст, который будет отображаться Пользователю в случае, если введенное значение не прошло валидацию.

**“Подсказка”** – текстовое поле, заполняется вручную с клавиатуры. Позволяет указать дополнительную подсказку, которая поможет пользователю понять, что именно нужно вводить.

**“Значение по умолчанию”** – текстовое поле, заполняется вручную с клавиатуры. Позволяет указать значение, которое будет отображаться в поле ввода по умолчанию.

**“Максимальное количество символов”** – текстовое поле, заполняется вручную с клавиатуры. Позволяет указать максимальное количество вводимых символов.

### **Пример заполнения**

<table data-header-hidden><thead><tr><th width="235"></th><th></th></tr></thead><tbody><tr><td><strong>Название поля</strong></td><td><strong>Значение</strong></td></tr><tr><td>Чек бокс "Обязательный к заполнению"</td><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcPlog_krtIje0D-NojITcz-gXo1eDilDlsmvl2PI5e2EvTeKQ4AMVIFVj32AKuCs_wuc9vpIlI_NNzIvJ6zkwOIISUySXjVaTxpZQ4hEB-GKb6xXQ1N0LII8nF7o1BwpIEf2FCXA?key=t1xnaH6fTFgHAfrUo1LTC_-9" alt=""></td></tr><tr><td>Видимое название</td><td>Ваш email</td></tr><tr><td>Имя Параметра в Задаче (Task)</td><td>user_email</td></tr><tr><td>Заполнитель</td><td>example@mail.com</td></tr><tr><td>Класс</td><td>input-email</td></tr><tr><td>Регулярное выражение (Regexp)</td><td><code>^[\w\.-]+@[\w\.-]+\.\w{2,}$</code></td></tr><tr><td>Подсказка об ошибке валидации</td><td>Пожалуйста, введите корректный адрес электронной почты.</td></tr><tr><td>Подсказка</td><td>Введите ваш действующий email адрес.</td></tr><tr><td>Значение по умолчанию</td><td>user@example.com</td></tr><tr><td>Максимальное количество символов</td><td>100</td></tr><tr><td></td><td></td></tr></tbody></table>

Результат:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd4gBmMfPfuG2FxVXZUkD5KvziyKwTlaaECz_yjFOKV6Gs1hF8Hh7_oqxLDm0nAn3hlmeE5CnlJYVTWS2kY11xxo6CkbPwCaIXE4cdByVZSjGUQ3ahc1nAaix3i3Rxt5gdXUMfHFg?key=t1xnaH6fTFgHAfrUo1LTC_-9" alt=""><figcaption></figcaption></figure>
