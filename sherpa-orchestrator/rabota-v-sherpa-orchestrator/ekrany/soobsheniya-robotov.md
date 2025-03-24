# Сообщения Роботов

**Сообщения роботов (логи)** — это сообщения, которые роботы отправляют в Оркестратор по мере выполнения работ.

Экран “Сообщения роботов” содержит таблицу “Сообщения Роботов”.\
Каждое сообщение роботов (лог) отражается в таблице “Сообщения Роботов” как одна строка.

<table data-header-hidden><thead><tr><th width="101"></th><th width="169"></th><th></th></tr></thead><tbody><tr><td><strong>№ п/п</strong></td><td><strong>Колонка</strong></td><td><strong>Описание колонки</strong></td></tr><tr><td>1.</td><td>Робот</td><td>Отображает имя робота.</td></tr><tr><td>2.</td><td>Процесс</td><td>Отображает процесс, который выполняется роботом.</td></tr><tr><td>3.</td><td>Версия процесса</td><td>Отображает версию процесса, которая выполняется роботом.</td></tr><tr><td>4.</td><td>Работа</td><td>Отображает работу, которую выполняет робот.</td></tr><tr><td>5.</td><td>Тип</td><td><p>Отображает присвоенный сообщению робота (логу) тип. Возможные значения:</p><ul><li>Info — информация;</li><li>Critical — критично;</li><li>Error — ошибка;</li><li>Warning — предупреждение;</li><li>Debug — отладка.</li></ul></td></tr><tr><td>6.</td><td>Сообщение</td><td>Отображает сообщение робота.</td></tr><tr><td>7.</td><td>Создано</td><td>Отображает дату и время создания данного сообщения робота.</td></tr></tbody></table>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf-DZPiuTb1gjDHQLtRGs2zQYQEAvyu-3SAr_pOcDa2cuYuYaU4xBqD3-z07_dgJfTk9-Vka2rB7GYprVAGbpI0Yq2cDrAsD-q4J6qX4U01kai3LAfKKI33NNn5ZIy6Hx3HxCCgAtq9cM_hvI13X5KyUI4?key=iiDSKcUE6eu6BlxEUq3Jmg" alt=""><figcaption></figcaption></figure>

Все колонки таблицы “Сообщения роботов” могут быть настроены пользователем. Функции настройки колонок таблиц описаны [здесь](../rabochaya-oblast-orkestratora.md).

## **Логирование в Оркестратор на стороне Дизайнера**

Логи в Оркестраторе — это логи, которые роботы отправляют сами. Есть некоторое количество системных логов. Системные логи записываются, если внутри сценария произошла ошибка, которая нигде не была обработана, и сценарий завершился аварийно.\
Логировать можно любые сообщения или значения переменных. Для этого в Дизайнере предусмотрено два блока:

* “Логировать в Оркесторатор”;
* “Лог”.

### **Логирование с помощью блока “Логировать в Оркестратор”**

В параметрах блока “Логировать в Оркестратор” необходимо указать сообщение (любая переменная любого типа) и уровень его критичности.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfPGdjnCjQHRqP7wD_XQy8PCYVi4IHgtvoTOwD61DiDFNOMV9Y4RHEcf8P7uTktGCkLrAoSVTe51LZrKwfQKULV9WmitjObgTzLhj3wErKqiYYzPQCbS50xexvhVCu3JqPTARl3Rlng7CoT2we-yR_xx4sG?key=Oijqy3e65qmL4aGxRpZJbw" alt=""><figcaption></figcaption></figure>

При использовании данного блока можно выбирать уровень логирования:

* Info — информация;
* Critical — критично;
* Error — ошибка;
* Warning — предупреждение;
* Debug — отладка.

Также можно вместе с сообщением отправить в Оркестратор скриншот, предварительно установив флаг “Скриншот”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXco48cmNdr_4Ju8UlaX4e0EAAEwP-BcBzJ51jS0ZD2FZbmxkXi6zbrGHqX2EC8Yim_KTdS0cuPfyCTt7nPA8UtCYO4JqeqL1ZoPMzzH1FxVoeyFZy8YcZuqtwlnjJy-n_r_8YjJXPyNwPA7k31Lr94wcp3p?key=Oijqy3e65qmL4aGxRpZJbw" alt=""><figcaption></figcaption></figure>

Сообщение будет отображаться на экране “Сообщения Роботов”.

В случае если к сообщению от робота был прикреплен скриншот, соответствующая иконка появится в колонке “Скриншот”. Кликните на иконку, чтобы увидеть скриншот в исходном размере.

<figure><img src="../../../.gitbook/assets/ЭкрнСбщРобот1.png" alt=""><figcaption></figcaption></figure>

### **Логирование с помощью блока “Лог”**

Другой способ логирования – в Дизайнере в блоке “Лог” установить флаг “Оркестратор. Логировать”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf66legYFanSGbSOJuWmQGWHPYdWxAZziMTRhHxEkI6723-FPorgJtBntSIa22rkc88cd69bvcul05PpPq85SRQY18zOoYyGrQpwybnw9Flx9qj8gpW8iVvILE-G3vKQtMJaI4ScXStMztFF8fOJ5m8ifKM?key=Oijqy3e65qmL4aGxRpZJbw" alt=""><figcaption></figcaption></figure>

**Примечание:** _не рекомендуется использовать логирование в Оркестратор внутри тела циклов с коротким интервалом, т.к. это может привести к появлению большого количества лишних сообщений. В целях безопасности Оркестратор может ограничивать максимальное число получаемых в единицу времени сообщения от робота._

\
