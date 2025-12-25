# Как разместить проект на GitHub с помощью Sherpa Designer

На старте разработки, Руководитель проекта направляет URL-ссылку на репозиторий, в котором необходимо сохранить проект, а также Логин и Токен для подключения к корпоративному аккаунту [GitHub](https://github.com/) Sherpa RPA. Чтобы разместить свой проект в репозитории на GitHub, используя встроенные инструменты в Sherpa Designer, необходимо выполнить следующие шаги:

### 1 Подготовка к работе

Разработчику понадобятся следующие данные:

* Адрес репозитория;
* Логин;
* Токен.

Когда все необходимые данные собраны, необходимо открыть Sherpa Designer.&#x20;

### 2 Клонирование проекта из Git

На вкладке “Быстрый старт”, в разделе “Быстрые действия” необходимо нажать “Клонировать проект из Git”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdZ8dt0xsHT07re1IzVxy2x3eH-G-HovCKdSRYCLkZuvFluhKiA8IeAsTfTSHhIsAO03AB1m_6gLDu4LOzFJNaEF9TJMeW0CJKoDm0iQR6VbkmT7DBS7J-nyALp3C3CVo0jHm5eIA?key=5hWAJNsppjGb-yRqsK0TQEaq" alt=""><figcaption></figcaption></figure>

Откроется окно, в котором нужно указать URL-ссылку на репозиторий, в которой будут сохраняться все коммиты проекта:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd7JU9MGg0_79mZaZyK_uVatIoeMYMx9lXktPqLW-91ICPGi7Ji1trXdXFYFqgZEvowkdTWTnCjcduG_-mlTQGOsSlB0XNPhLRzdWDL-1uBogIBnfKQdHc1_nUqFExYuXTGX8yiaQ?key=5hWAJNsppjGb-yRqsK0TQEaq" alt=""><figcaption></figcaption></figure>

Ссылку для ввода в поле “URL” формирует и предоставляет разработчику Руководитель проекта на старте разработки. Далее необходимо указать путь к папке на персональном компьютере разработчика, в которой будет сохраняться сам проект и все бэкапы.

<figure><img src="../.gitbook/assets/2025-06-04_15-21-08.png" alt=""><figcaption></figcaption></figure>

Выбранная папка должна быть пустой (в том числе не содержать скрытых файлов), в противном случае возникнет сообщение об ошибке LibGit2Sharp.NameConflictException.

<table data-header-hidden><thead><tr><th width="50"></th><th></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdkRXqMslyfs84FlKlhAhfJsukB62cPUBJYi6vqpZ1YZtBv12m2YFkQIYd-Vc77fg2oAVxEQPse3mYBe8z90WHFwn8D844-r7DRt8_tKmUXWBrlKEJAbZ4V53scbDEvTvBKnr2SXA?key=5hWAJNsppjGb-yRqsK0TQEaq" alt="" data-size="line"></td><td>В случае, если разработчик одновременно работает над несколькими проектами, файлы по каждому проекту должны сохраняться в разных папках. Также рекомендуется присваивать названия папкам, соответствующие названиям создаваемых Роботов. Файлы каждого проекта (Робота) должны сохраняться в отдельном репозитории, предназначенном для одного конкретного проекта. Соответственно, для разных проектов разработчика должен быть предоставлен отдельный URL.</td></tr></tbody></table>

Нажмите на кнопку “Настройки Git”, откроется следующее окно:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfLqIj59N1LggGLGFr-l-ZXTxwX4G0LRCEwmi9kXsU_l-IosAsc7wQ17OLXw_aNOSAPpkFPmoF9QFK6n8hxIgf4yjVpkdwDdXzZt4aK1hBua2tpbh-K9BF2oC9vD2nphcazvRaaoA?key=5hWAJNsppjGb-yRqsK0TQEaq" alt=""><figcaption></figcaption></figure>

В разделе настроек выбираем способ авторизации: “Логин/Токен” и вводим ранее предоставленные данные (см. п. 1).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeAedueschDT4pcTDSTvJhTzYXj22I2PmVfr4I1x0m3n_701rEEkm_QNPyTQy2XG4bXOAKYv3ZfiKG3sIyv237KVAWfjq-ngZwaO0AR_AZ-rPn9dTjSuHmqQPsHiYMYu_EMOPWEHg?key=5hWAJNsppjGb-yRqsK0TQEaq" alt=""><figcaption></figcaption></figure>

После заполнения всех полей и нажатия на кнопку “ОК” произойдет клонирование проекта из Git, что необходимо для обеспечения контроля версий и совместной работы над проектом в дальнейшем.

<figure><img src="../.gitbook/assets/изображение (113).png" alt=""><figcaption></figcaption></figure>

В созданной папке на персональном компьютере разработчика появятся папка .git и файл .gitignore:

<figure><img src="../.gitbook/assets/изображение (111).png" alt=""><figcaption></figcaption></figure>

### 3 Создание или перенос проекта

Теперь разработчик должен перейти к созданию нового проекта или перенести уже существующий проект в выбранную папку (с папкой .git и файлом .gitignore). Например:

<figure><img src="../.gitbook/assets/изображение (112).png" alt=""><figcaption></figcaption></figure>

### Запуск проекта

Для запуска проекта разработчик должен открыть его в Sherpa Designer и нажать на иконку работы с Git (“Git Commit“ на верхней панели “Файл”).&#x20;

Далее в окне “Git Commit” отобразится список файлов, которые будут размещены в репозитории.&#x20;

<table data-header-hidden><thead><tr><th width="49"></th><th></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdkRXqMslyfs84FlKlhAhfJsukB62cPUBJYi6vqpZ1YZtBv12m2YFkQIYd-Vc77fg2oAVxEQPse3mYBe8z90WHFwn8D844-r7DRt8_tKmUXWBrlKEJAbZ4V53scbDEvTvBKnr2SXA?key=5hWAJNsppjGb-yRqsK0TQEaq" alt="" data-size="line"></td><td>Обратите внимание, файлы бэкапа не размещаются в репозитории.</td></tr></tbody></table>

Например:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdnmbbe3PKlufqYdMJDjg_nRxbpr_dUV7gyXKFkpzDWUeCbo6q8IpFrQxrs9v9v3sy7_TI6I5_l145xRhWaOumtyj6wMlUvt3tdwMHpjVi36D91c9ZjXJ7oX8i7lUTBluPxM01X9A?key=5hWAJNsppjGb-yRqsK0TQEaq" alt=""><figcaption></figcaption></figure>

В поле “Сообщение” можно при необходимости оставить любой комментарий (commit message). Необходимо написать текст сообщения, отражающий суть внесенных в проект изменений. Например: “Добавлена диаграмма проверки прав доступа сотрудника” или “Исправлена ошибка сохранения файла”.

Далее необходимо нажать на кнопку “Commit and push”. После этого сохраненные изменения будут переданы в репозиторий, путь к которому был указан ранее в настройках GitHub (см. п. 2).

Дополнительную информацию о разделах всплывающего меню “Git Commit” в Sherpa Designer можно найти [здесь](https://docs.sherparpa.ru/sherpa-designer/rabota-v-sherpa-designer/osnovnoe-menyu/panel-razrabotka/menyu-fail).
