# Установка Sherpa RPA Runtime

**Sherpa RPA Runtime** — это установщик Робота в учетную запись Пользователя для использования без Дизайнера. Sherpa RPA Runtime используется для развертывания на рабочих местах конечных Пользователей Attended-роботов, Unattended-роботов, а также агентов RDP и Citrix. При установке Sherpa RPA Runtime создаются некоторые задания для Windows, а также некоторые установки в реестр для работы RDP.

Установку программы осуществляет инсталлятор, запускаемый файлом «[SherpaRPARuntime.exe](https://sherparpa.ru/downloads/SherpaRPARuntime.exe). Сохраните данный файл на компьютер и запустите его.&#x20;

В открывшемся диалоговом окне отметьте необходимые вам параметры установки:

* Режим Робота: “Attended” или “Unattended”;
* Установить для: “Текущего пользователя” или “Всех пользователей”.

Затем нажмите кнопку “Дальше”:

<figure><img src="../../.gitbook/assets/изображение.png" alt=""><figcaption></figcaption></figure>

После этого инсталлятор начнет установку программы, которая займет несколько минут:

<figure><img src="../../.gitbook/assets/изображение (1).png" alt=""><figcaption></figcaption></figure>

Когда установка будет завершена, инсталлятор проинформирует Вас с помощью диалогового окна. в котором можно нажать кнопку “Завершить”, чтобы завершить процесс установки.

<figure><img src="../../.gitbook/assets/изображение (2).png" alt=""><figcaption></figcaption></figure>

<table data-header-hidden><thead><tr><th width="50"></th><th></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdQDL839etRbMq_WnhDH2Cpc3EczsLiEc-9_tlcovPw79DZvQ5IOU4ORZ9qJI0UByRIStfcKHVDQ1t691kcoje1IXJJmURoZoHwSOFJcVrgZRiX9A764ne83DQwdIXH6yCKYqf2Wg?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt="" data-size="line"></td><td>Sherpa RPA Runtime в режиме Attended может работать как для локального запуска Attended-роботов с использованием активированной Лицензии на рабочем месте, так и для удаленного запуска, работы через RDP-подключение из другого Attended или Unattended-робота, в этом случае Лицензия не нужна.</td></tr></tbody></table>

При установке Unattended-робота в планировщике заданий создается одна Задача с двумя Триггерами. На вход в систему и на удаленное подключение.&#x20;

<figure><img src="../../.gitbook/assets/Безымянный12.png" alt=""><figcaption></figcaption></figure>

Для того, чтобы увидеть данные Триггеры, можно перейти в свойства Задачи:

<figure><img src="../../.gitbook/assets/Безымянный13.png" alt=""><figcaption></figcaption></figure>

После чего перейти во вкладку Триггеры:

<figure><img src="../../.gitbook/assets/Безымянный14.png" alt=""><figcaption></figcaption></figure>

Также Триггеры отображаются в нижней панели Планировщика заданий (во вкладке Триггеры):

<figure><img src="../../.gitbook/assets/Безымянный15.png" alt=""><figcaption></figcaption></figure>
