# Панель свойств

При создании нового блока диаграммы необходимо задать определенные свойства блока, которые определяют его поведение. Панель свойств блоков позволяет просматривать и изменять свойства выбранного блока.

На скриншоте приведен пример свойств блока “Запустить браузер”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdEgOCI0lZOjiHMaRxev8m08n-Se9akEbENdC_BaeAKcuivc2PWr6HwaRSmKWv-DCRJaJInfeKrbzBj0z-ZLUY41-73l5BcZnJ3y-qRp48aTwdQCjeFZIquT0Jw9Hhh-cu6jocft_SMjAbDms--8QxK3V5_?key=WjcmCoypUEDpQLf_MsUKvg" alt=""><figcaption></figcaption></figure>

Свойства блоков в их большинстве относятся к двум категориям:

* Main properties – предназначены для получения значений, необходимых для работы блока (входные данные);
* Output – предназначены для указания того, куда поместить выходные данных, в таких свойствах нужно указать переменные, в которые будут сохраняться результаты работы блока.

Свойства блоков, определяющие их работу, могут быть заданы:

* Константами. Числа записываются как есть, а текстовые значения записываются в двойных кавычках.
* Переменными, имена которых должны начинаться со знака $.
* Выражениями – константами и переменными, функциями, методами их сочетаниями.

Для того, чтобы изменить свойство необходимо ввести значение в строке справа от названия свойства или использовать более удобный вариант  – окно “Редактировать выражение”. Для вызова окна “Редактировать выражение” необходимо нажать на кнопку с многоточием в правой части строки “Свойства”.

**Окно “Редактировать выражение”** содержит три вкладки:

* Быстрая вставка;
* Умный помощник;
* Переменные.

<table data-header-hidden><thead><tr><th width="102"></th><th width="213"></th><th></th></tr></thead><tbody><tr><td><strong>№ п/п</strong></td><td><strong>Элемент интерфейса</strong></td><td><strong>Описание</strong></td></tr><tr><td>1.</td><td>кнопка <img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdOnUOM6xt63weJVjpgJbXnJmOroS6HCL4CqL8CUIW99sL34GEpMG123t-lf4gKgbe6cmsTyPrae2vdPy4fexcPCeqA-VEsPBkYR3pWE0wteZjkK0cGseRQJhFcW02Gng9cNYikyP-MciOxoio1OokVlO-p?key=WjcmCoypUEDpQLf_MsUKvg" alt=""></td><td>Позволяет свернуть или развернуть панель “Свойства” и панель “Переменные” и сохранить это положение.</td></tr><tr><td>2.</td><td>кнопка <img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfcMgXxo-v7KX3pspXtW1u_Gz1UwPj6QErK4wsgsIg6zDVmYZBsFZ3B2GMXc-qj26gCjeyzi0HZWtX5tiFf3pFmxp-3ZiCPbzROZq9BgxXGjBSoxFFpKFFc4S31pbnxPSe1Pb-CF2MDDOS3AmduBuGHavRR?key=WjcmCoypUEDpQLf_MsUKvg" alt=""></td><td>Позволяет свернуть панель “Свойства”.</td></tr><tr><td>3.</td><td>Размер шрифта</td><td>Позволяет выбрать удобный для Вас размер шрифта в окне “Редактировать выражение”.</td></tr><tr><td>4.</td><td>Подсказки</td><td>Позволяет включить или выключить подсказки в окне “Редактировать выражение”. Данная функция указывает на ошибки в выражениях, если они есть.</td></tr><tr><td>5.</td><td>Инструменты</td><td>Позволяет вставить в строку значения свойства путь к файлу(ам), директории или вставить с экранированием символов.</td></tr><tr><td>6.</td><td>Импорт выражений C# и VB</td><td>Позволяет импортировать выражения C# и VB. При нажатии на кнопку открывается окно с текстовым полем для вставки выражения, а также, с возможностью выбора языка выражения “C#”, “Blue Prism”, “Visual Basic”.</td></tr></tbody></table>

**Вкладка “Быстрая вставка”** позволяет выбрать категорию выражения и само выражение из предложенного перечня. А также, при выборе выражения можно воспользоваться текстовым полем “Фильтр:”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf0TchcOG678kEifwJ70wMEMMK6gSUiL-x7imokC3WYdYfdJJHICQBXSggNT5wV2HH3xOrykl-xUI6ya7ASQeMVoX7ca8z9EQGQyPHZCQHTL0Cmgdi1xxuz7ljYRZhLXgvEMZDuNWEZ7jgQWivEuZ7Xgjmi?key=WjcmCoypUEDpQLf_MsUKvg" alt=""><figcaption></figcaption></figure>

**Вкладка “Умный помощник”** позволяет описать простыми словами задачу, которую необходимо решить в текстовом поле “Ваш запрос:”, после чего Умный помощник подскажет подходящее для этого выражение.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXea4_iPq57ASQuw22GGsVLATL2DcAG7DHh0LQX4DAA9EWBZDjeeUiYQ821e1N2xlY0CkcOz2gjx5i6NNs_KL1E1aG9-j4gTuyE8qre4JH3Y2kfZwYTsrPzZgSvF-XbEdmeibaM9zH46dgXQ6-3sWKmpSJy0?key=WjcmCoypUEDpQLf_MsUKvg" alt=""><figcaption></figcaption></figure>

**Вкладка “Переменные”** позволяет указать необходимую переменную. Для поиска можно воспользоваться текстовым полем “Фильтр:” В списке переменных указаны: имя переменной, ее тип и название диаграммы, в которой используется переменная.  &#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXesyj654nAGHnQzFKF8ri9W4ZoVyLCm28ERjXQ-31dclh6kJt31w13XN9M1CMONuy715pXodPa6mN6goqxIPMbUo94xv_b45X5L7OZV_mU9C07EYIi3Cwb0YmbKaHWI20GhhgZ7yhCc6N5hMbJLAfhtd-Bb?key=WjcmCoypUEDpQLf_MsUKvg" alt=""><figcaption></figcaption></figure>

**Примечание:** _не во все свойства блоков можно записать выражения. В те свойства, у которых нет кнопки с многоточием, можно записывать только константные значения, или выбирать их из предложенного списка._
