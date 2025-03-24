# Time

Для настройки виджета требуется совершить следующие действия:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXewYAiU-vFwjhZnXTRs7B-RtABrCJW3wLbfEvJc-IAz4L56j8SH71lQT9I2FmRKax8M1CYrvOZMJnku9IVSHattdOyBiKGUCXgOCszDc6pi4bu6tPODWTWH8aFTv7sOeBSeuFEp6Q?key=OXiQ_X-qmOq-8XYC1m8loTPG" alt=""><figcaption></figcaption></figure>

Виджет Time отображает поле для ввода текстового значения Пользователем, что позволяет использовать подсказки и ограничения, для ввода только верных значений.

Для настройки элемента нажмите на значок редактирования ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXfYxpQRjGLGOHHofz3t2iEZI9rFA4cLfvvjxZMDbHoeTzFhyzC8_OohqcSvQvDmKqLDoscUOQ81SfE5FqL7DEwTLr6l856iy4i2IQ1A96FQMgzg8jgcGNyKMo6BB_qHJazMx2zi6A?key=OXiQ_X-qmOq-8XYC1m8loTPG).&#x20;

Откроется всплывающее окно “Настройки элемента”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdjJWw_hbCzd760O1BkJMdbP3UPlNU8zzONs_upnYpCWpEBYrQUKlyblL7iO7618lzp4Q5Ty0VpnnD9U2AOfrG0kCvdcwUUmPGKPlQ-LhHKCfHu6Y3_ntDlMuPHXSZ6kxgmaz6l6g?key=OXiQ_X-qmOq-8XYC1m8loTPG" alt=""><figcaption></figcaption></figure>

### Поля для настройки виджета

Заполните нужные поля для настройки виджета.

**“Обязательный к заполнению”** – чекбокс, заполняется вручную левой кнопкой мыши. Предназначен для окраса поля в красный цвет, если Пользователь не заполнил данный виджет.

**“Видимое название”** – текстовое поле, заполняется вручную с клавиатуры. Позволяет указать название для виджета.

**“Имя Параметра в Задаче (Task)**” – текстовое поле, заполняется вручную с клавиатуры. В этом поле отображается текст, который соответствует значению указанного Параметра выбранной Задачи. Пользователь может изменить это значение в текстовом поле, и после сохранения формы новое значение будет записано в указанный Параметр выбранной Задачи. Это означает, что при внесении изменений в текстовое поле Пользователь может обновить информацию в Задаче, для чего достаточно просто ввести новое значение и сохранить изменения.

**“Заполнитель”** – текстовое поле, заполняется вручную с клавиатуры. Позволяет указать текст-заполнитель (placeholder), который будет отображаться в поле ввода до тех пор, пока пользователь не начнет вводить значение.

**“Класс”** – текстовое поле, заполняется вручную с клавиатуры. Позволяет указать CSS-класс, который будет применяться к элементу. Это позволяет изменить стиль виджета, например, цвет, размер или шрифт.

**“Регулярное выражение (Regexp)”** – текстовое поле, заполняется вручную с клавиатуры. Позволяет  задать регулярное выражение для валидации ввода.

**“Подсказка об ошибке валидации”** – текстовое поле, заполняется вручную с клавиатуры. Позволяет указать текст, который будет отображаться Пользователю в случае, если введенное значение не прошло валидацию.

**“Подсказка”** – текстовое поле, заполняется вручную с клавиатуры. Позволяет указать дополнительную подсказку, которая поможет пользователю понять, что именно нужно вводить.

**“Значение по умолчанию”** – текстовое поле, заполняется вручную с клавиатуры. Позволяет указать значение, которое будет отображаться в поле ввода по умолчанию.

### **Пример заполнения**

<table data-header-hidden><thead><tr><th width="210"></th><th></th></tr></thead><tbody><tr><td><strong>Название поля</strong></td><td><strong>Значение</strong></td></tr><tr><td>Чек бокс "Обязательный к заполнению"</td><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdptBEr00xhFTKIjULo_gtPC32wqxdK43QHFms8XDOCjrlBk_PjlkN7RVs6GYinJZ3DRvQYAWeK3KGGQaUja7CFBSTv56HiESltlmjSN7uvC479jE_fTbjk6fcyRU3-KCqY24CJ?key=OXiQ_X-qmOq-8XYC1m8loTPG" alt=""></td></tr><tr><td>Видимое название</td><td>Время начала занятия</td></tr><tr><td>Имя Параметра в Задаче (Task)</td><td>start_time</td></tr><tr><td>Заполнитель</td><td>ЧЧ:ММ</td></tr><tr><td>Класс</td><td>time-input</td></tr><tr><td>Регулярное выражение (Regexp)</td><td><code>^([01]?\d|2[0-3]):([0-5]\d)$</code></td></tr><tr><td>Подсказка об ошибке валидации</td><td>Пожалуйста, введите время в формате ЧЧ:ММ (например, 14:30)</td></tr><tr><td>Подсказка</td><td>Укажите время начала занятия в формате ЧЧ:ММ.</td></tr><tr><td>Значение по умолчанию</td><td>09:00</td></tr></tbody></table>

Результат:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdQy0YqO8UeuPCg9OquxD3cjp_D-AIvFWrzhtUkKISmStUCFcQc0jTpBnYmtgSyOabGXnwtvJJy6r80uUYfSHd28l7SF2G3K1SiIhnOEK9pe81QapiC4fdAAmXXv0GrceRwIuENmg?key=OXiQ_X-qmOq-8XYC1m8loTPG" alt=""><figcaption></figcaption></figure>

### **Пример выбора времени**

Выбор времени возможен только с помощью графического элемента интерфейса, который отображает часы и минуты. Позволяет Пользователю выбрать время с помощью специального колеса (спиннера) для вращения часовых и минутных шкал:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeArVw4n-HDPVbrs_E8XoKiELAd41HES901e2fmM6W52UU83LQjGX702qMBtTv2b3uDJnmWSGu63VQnKTBUzHSuJHAUy-UVOQzK1r0t4oAzpoBNnnAPqPBlXf_AYxJd17yG6fH_4Q?key=OXiQ_X-qmOq-8XYC1m8loTPG" alt=""><figcaption></figcaption></figure>

Пользователь может перемещаться по часам и минутам, используя шкалы времени. Удобный и интуитивно понятный интерфейс, особенно для Пользователей, не знакомых с форматом времени.
