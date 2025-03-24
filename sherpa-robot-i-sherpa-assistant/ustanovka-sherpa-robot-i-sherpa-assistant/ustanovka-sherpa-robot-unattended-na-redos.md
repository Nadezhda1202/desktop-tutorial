# Установка Sherpa Robot Unattended на RedOS

Перед установкой программных продуктов платформы Sherpa RPA ознакомьтесь с [системными требованиями к компьютеру](../../o-platforme-sherpa-rpa/#sistemnye-trebovaniya-dlya-sherpa-rpa-dlya-linux).

Установка производится по инструкции.

[Ссылки на дистрибутивы можно найти здесь.](../../ssylki-na-distributivy/distributivy-sherpa-rpa-linux.md)

**Важно!** _Для установки робота необходимо обладать правами sudo._&#x20;

Если Sherpa Robot уже установлен на Ваш компьютер, то перейдите к разделу [“Скачивание и распаковка робота”](ustanovka-sherpa-robot-unattended-na-redos.md#skachivanie-i-raspakovka-robota) для его обновления.

## Установка .NET Core 8

Общие инструкции по установке приведены на сайте Microsoft:

[https://learn.microsoft.com/ru-ru/dotnet/core/install/linux-fedora](https://learn.microsoft.com/ru-ru/dotnet/core/install/linux-fedora)

[https://learn.microsoft.com/en-us/powershell/scripting/install/install-rhel?view=powershell-7.2](https://learn.microsoft.com/en-us/powershell/scripting/install/install-rhel?view=powershell-7.2)

Для установки .NET Core 8 нажмите “Пуск”, выберите пункт “Системные”, а затем – “Терминал Fly”.&#x20;

Далее в терминале необходимо выполнить следующие команды: (для этого скопируйте поочередно скопируйте команды, вставьте в окно терминала и нажмите Enter):

`sudo dnf install -y dotnet-sdk-8.0`

`sudo dnf install https://github.com/PowerShell/PowerShell/releases/download/v7.4.2/powershell-7.4.2-1.rh.x86_64.rpm`

Для работы эмуляции клавиатуры и мыши  установите библиотеку “libgdiplus”.&#x20;

Установка библиотеки также производится через выполнение команды в окне терминала:

`sudo dnf install libgdiplus`

Для работы с Tesseract выполните в терминале следующую команду:&#x20;

`sudo dnf install tesseract-langpack-rus`

Для работы с Python выполните в терминале команду:

`sudo dnf install python3-devel.x86_64`

## Установка сервера RDP

Для подключения к этой машине координатора необходимо установить сервер xrdp. Выполните следующие команды в терминале:

`sudo dnf install xrdp`

`sudo systemctl restart xrdp`

`sudo systemctl enable xrdp --now`

Затем перезагрузите сервер с помощью команды:&#x20;

`sudo reboot`

## Скачивание и распаковка робота

Выполните последовательно следующие команды:

`rm -f sherpa-robot.zip`

`wget https://sherparpa.ru/downloads/linux/get-robot.php -O sherpa-robot.zip`

`sudo unzip -o sherpa-robot.zip -d /usr/lib`

`sudo chmod a+x /usr/lib/sherpa-robot/Chrome/install_host.sh`

`sudo chmod a+x /usr/lib/sherpa-robot/Chrome/process-agent-host`

`sudo chmod a+x /usr/lib/sherpa-robot/process-agent`

`sudo chmod a+x /usr/lib/sherpa-robot/sherpa-assistant`

`sudo chmod a+x /usr/lib/sherpa-robot/sherpa-assistant-console`

Также для установки или обновления робота до последней версии можно ввести терминале следующую команду (в ней собраны все вышеописанные команды):

`rm -f sherpa-robot.zip && wget https://sherparpa.ru/downloads/linux/get-robot.php -O sherpa-robot.zip && sudo unzip -o sherpa-robot.zip -d /usr/lib && sudo chmod a+x /usr/lib/sherpa-robot/Chrome/install_host.sh && sudo chmod a+x /usr/lib/sherpa-robot/Chrome/process-agent-host && sudo chmod a+x /usr/lib/sherpa-robot/process-agent && sudo chmod a+x /usr/lib/sherpa-robot/sherpa-assistant && sudo chmod a+x /usr/lib/sherpa-robot/sherpa-assistant-console`

## Добавление пользователей для запуска Unattended-роботов

Каждый Unattended-роботов будет запускаться под отдельным пользователем. Чтобы создать нового пользователя необходимо зайти в “Центр управления”, а затем – “Управление пользователями” и создать необходимое количество учетных записей пользователей для запуска Unattended-роботов.

### Первичная настройка Unattended-робота

Первичная настройка выполняется для:

* добавления ярлыка для Sherpa Assistant;
* добавления ярлыков в автозагрузку для Unattended-роботов;
* указания сервера Оркестратора для Unattended-роботов;
* Указание GUID роботов для учетных записей Unattended-роботов.

Для выполнения первичной настройки выполните в терминале следующие команды:

`sudo chmod a+x /usr/lib/sherpa-robot/post-configure/post-configure`

`sudo /usr/lib/sherpa-robot/post-configure/post-configure`

После выполнения команд в терминале появляется меню со следующими командами:

1\. Создать ярлык Sherpa Assistant на рабочем столе, а также в меню “Пуск”-”Разработка”.

2\. Удалить ярлыки Sherpa Assistant.

3\. Создать ярлык в автозагрузке у пользователя на запуск Unattended-робота.

4\. Удалить ярлык на запуск Unattended-робота.

5\. Указать сервер Оркестратора и указать GUID Unattended-роботов.

0\. Выйти из меню.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcYwIm3hDbkXr1EOz4MY8YLuK4ITv4Q6Qm9iSk_93AksnluyPP0XlIpeJNJhqo-rIwYCeUIG-0JiANdXwIrhsETRqt99ZfikH-5_TbgGkAJ73a6Y2_HDhqu-D1juZnjhRtLl4u6EdpAsKplZtGwpVTCeMtm?key=kTKSYcQvbcH-dH9aZNvuMg" alt=""><figcaption></figcaption></figure>

Все вышеописанные команды можно выполнить как для всех пользователей, так и выборочно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcWztstfBbDcj0j5JazGuDOoKisHZ6Zy4fIF323zIuBHw5MPLD-ZRh-M3-oe1PgmOHdq1kCtNmtytWXFVCNwgFKBLxe97T9sJTtKzucsyX8tEo1Q0PM4aweNc8VevLDtZtIh1Tg5WjowvSUHPZgg54jyKZn?key=kTKSYcQvbcH-dH9aZNvuMg" alt=""><figcaption></figcaption></figure>

## Установка плагина в Yandex Browser

Установку плагина в Yandex Browser необходимо выполнять отдельно для каждого пользователя.

1. Откройте браузер и зайдите в раздел “Дополнения”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcKvDfvDBbt62ALCb1JttHxQTxccfOk_tSMQcyCjIiw9ffqKAI9cqbxLzBleT22SnbQQYMmHzfE7R0yH44TLqaOjAnGz1SJL9OoxK5MkTELAUBhqi3zrxqgGCkymUmZ35imV8EoSRJjgDeSdknEFyhwlNvl?key=kTKSYcQvbcH-dH9aZNvuMg" alt=""><figcaption></figcaption></figure>

2. Запустите менеджер файлов и перейдите в папку /usr/lib/sherpa-robot/Chrome
3. Перетащите файл “plugin.crx” в окно Yandex Browser.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd81J_E8Zu5G31WAXjnaN4pR0BcYp6arHPvsr_fiRIdPNGUGuM2vtIG09o-PKgUwp4eOSGKOMXJ33O2UzZmdHergRU7-VghVacq4PH__L5TFDkIadGULrPif6aXFIp3yB5R7BU9_7jIgRIjRLzw36bceAif?key=kTKSYcQvbcH-dH9aZNvuMg" alt=""><figcaption></figcaption></figure>

В диалоговом окне подтвердите установку расширения.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXedd83j-oEyAeD_C7aOmbwyaB4oJkTctunZDfaMu2QJhoUl-jrDEAuiA-b1-E8Va9vkMlP1mxrH1hnGYk2lDsoE_Vsukgcs_8Pt4Q4rVDzMBcwQuTMCjI_ZuUzXXMRe7AOtGc3MDWgphHmafHfzaH2Jzmni?key=kTKSYcQvbcH-dH9aZNvuMg" alt=""><figcaption></figcaption></figure>

В верхней панели браузера значок Sherpa RPA красный, значит плагин еще не работает.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfkFksi39ZUo_FHMtDMXMjKdZ8I7Jk0bIi9CKXrF8eTFr3tsUUgDq1EPv3GQitBuBlL9ZC1UE8J5Azp-N_t4VmdoCq9FAjCrjIT_u-O7WX5Ne6AYuZBs-qOM3k163c8tJjK8qtYkJZOJ_3Fg6XLHs7PkAQ?key=kTKSYcQvbcH-dH9aZNvuMg" alt=""><figcaption></figcaption></figure>

1. Чтобы плагин заработал необходимо закрыть окно браузера и, в терминале, выполнить команду:

`./install_host.sh`

2. Для проверки работы плагина запустите браузер. Если значок плагина Sherpa RPA стал синим, значит плагин успешно установлен.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe6_urLYD7OuDnR7NYts7AsXxk807gmjg2BAB2X1z4FzHM0fnCGfbC4oAhBlR3Cqcay-gcVy2G31YdqnoGdb3E33vwpLqeZGohHtwXgSZQuPYUNxXWCJfz_Wo5xz-Sn3xGdMi4geDEYPfCBhiq1PB4X0bO4?key=kTKSYcQvbcH-dH9aZNvuMg" alt=""><figcaption></figcaption></figure>

**Примечание:** _также плагин можно установить с сайта:_ [_https://chrome.google.com/webstore/detail/sherparpa/bdnlfnchnkjeempadnmcgbbkbacffobl_](https://chrome.google.com/webstore/detail/sherparpa/bdnlfnchnkjeempadnmcgbbkbacffobl)

И после этого выполнить пункты 3, 4, 5.

## Установка плагина в Chromium

1. Перейдите по ссылке: [https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl](https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl)

и установите плагин.

2. Перейдите в папку /home/user/sherpa-robot/Chrome.
3. Запустите окно терминала в текущей папке и выполните следующие команды:

`chmod +x install_host.sh`

`./install_host.sh`

`cp -f $HOME/.config/google-chrome/NativeMessagingHosts/processagent.sherparpa.json $HOME/.config/chromium/NativeMessagingHosts`

4. Для проверки работы плагина запустите браузер. Если значок плагина Sherpa RPA стал синим, значит плагин успешно установлен.&#x20;
