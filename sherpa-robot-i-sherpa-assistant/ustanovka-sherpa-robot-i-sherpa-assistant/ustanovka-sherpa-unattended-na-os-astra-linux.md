# Установка Sherpa Unattended на ОС Astra Linux

Перед установкой программных продуктов платформы Sherpa RPA ознакомьтесь с [системными требованиями к компьютеру](../../o-platforme-sherpa-rpa/#sistemnye-trebovaniya-dlya-sherpa-rpa-dlya-linux).

Установка производится по инструкции.

[Ссылки на дистрибутивы можно найти здесь.](../../ssylki-na-distributivy/distributivy-sherpa-rpa-linux.md)

**Важно!** _Для установки робота необходимо обладать правами sudo._&#x20;

Если Sherpa Robot уже установлен на Ваш компьютер, то перейдите к разделу [“Скачивание и распаковка робота”](ustanovka-sherpa-unattended-na-os-astra-linux.md#skachivanie-i-raspakovka-robota) для его обновления.

## Установка .NET Core 8

Общие инструкции по установке приведены на сайте Microsoft:

https://docs.microsoft.com/ru-ru/dotnet/core/install/linux-debian

https://docs.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.2

Для установки .NET Core 8 нажмите “Пуск”, выберите пункт “Системные”, а затем – “Терминал Fly”.&#x20;

Далее в терминале необходимо выполнить следующие команды: (для этого скопируйте поочередно скопируйте команды, вставьте в окно терминала и нажмите Enter):

`wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb`

`sudo dpkg -i packages-microsoft-prod.deb`

`rm packages-microsoft-prod.deb`

`sudo apt-get update`

`sudo apt-get install -y dotnet-sdk-8.0`

`sudo apt-get install -y powershell`

Для работы эмуляции клавиатуры и мыши  установите библиотеку “libgdiplus”.&#x20;

Установка библиотеки также производится через выполнение команды в окне терминала:&#x20;

`sudo apt install libgdiplus`&#x20;

**Примечание:** _если Вы получили сообщение, что пакет не найден, то необходимо добавить репозиторий. Это можно сделать в программе "Менеджер пакетов Synaptic"._\
&#xNAN;_`deb https://dl.astralinux.ru/astra/frozen/2.12_x86-64/2.12.45/repository stable main contrib nonfree`_

Для работы с Tesseract выполните в терминале следующую команду: \
`sudo apt install tesseract-ocr-rus`

Для работы с Python выполните в терминале команду: \
`sudo apt-get install -y libpython3.7-dev`

В данном случае, устанавливается версия Python 3.7. Минимальная версия с которой работает робот – 3.6.

Примечание: если установка завершилась с ошибкой, то необходимо установить пакеты «Средства разработки». Это можно сделать в программе "Менеджер пакетов Synaptic".

## Установка сервера RDP

Для подключения к этой машине координатора необходимо установить сервер xrdp. Выполните следующие команды в терминале:

`sudo apt-get install xrdp`

`sudo systemctl restart xrdp`

`sudo systemctl enable xrdp --now`

Затем перезагрузите сервер с помощью команды:&#x20;

sudo reboot

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

По указанным выше командам:

* скачивается с сайта последняя версия Sherpa Robot
* распаковывается Sherpa Robot в папку “usr lib”
* задаются права на запуск необходимых программ

## Добавление пользователей для запуска Unattended-роботов

Каждый Unattended-роботов будет запускаться под отдельным пользователем. Чтобы создать нового пользователя необходимо открыть окно “Управление политикой безопасности”. Нажмите “Пуск”, выберите пункт “Системные”, а затем – “Политика безопасности”.

Каждый Unattended-роботов будет запускаться под отдельным пользователем. Чтобы создать нового пользователя необходимо открыть окно “Управление политикой безопасности”. Нажмите “Пуск”, выберите пункт “Системные”, а затем – “Политика безопасности”.\


<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcXW10nQXeEFqhAfoBkxmpz__GFR0lTHrGOXIO9ilN1bs6Zn0Qr1ffl1ujHKaz3-xwnJqVhSYnFEeS615rxzahma5DoCxEBdaXlh8QD-0J2myddF_xgTgrYotIyNxksKj5R0wLXJUHNQwxSCxLbkbIoSlRT?key=2UGPf9_VbFqGffz4PQxRDA" alt=""><figcaption></figcaption></figure>

Далее выберите пункт “Пользователи” и с помощью кнопки ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXefByi5b953FU3IwZ6tkNS0vdiWP9CN8sCIjjJhd8f6f4RnFlqWBwdWjP5y1Y_e1IU2zDDBGN5pl_gJ_eawN5_7JxXhoboVcx34HZw0vdLlO9DR6UsjDSFTxN1CMztU8saHAnhrDRvkFhkYUhoZDbRWVDbr?key=2UGPf9_VbFqGffz4PQxRDA) добавьте пользователя.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdKjL5UVp59wKwKO_t_oJaNvCD_3_-uXArrx0MHCcQsfPJfLfy7cnGRvaN8hbWBIKcccjLXFX9n6_EED6UF8sieg-mINrc-MzDfK16HzwIhOf-OVXiN2NyI-yvRdtIAV9vIMLM7h2eSJ7V8KZywtJnKFHk?key=2UGPf9_VbFqGffz4PQxRDA" alt=""><figcaption></figcaption></figure>

После нажатия кнопки ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXefByi5b953FU3IwZ6tkNS0vdiWP9CN8sCIjjJhd8f6f4RnFlqWBwdWjP5y1Y_e1IU2zDDBGN5pl_gJ_eawN5_7JxXhoboVcx34HZw0vdLlO9DR6UsjDSFTxN1CMztU8saHAnhrDRvkFhkYUhoZDbRWVDbr?key=2UGPf9_VbFqGffz4PQxRDA) задайте в появившейся форме  имя нового пользователя, нажмите ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdnjnne-8XH4HWJiu6YhF8_FWu47VUxDk2yguNLeXpaRfYtpxyuVfffA0TDNZP4Wf1tXbvLItlDkkFeWI67dreLcMPVoPp_c1EVKqRzI-cjjWOhohRPoq-9HXpU16otHjl5Nv0mqziU9lPKcgEQHPAzMyp-?key=2UGPf9_VbFqGffz4PQxRDA)

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeyzfe3BM0d20QNzTJGcqk5hbYkUKMgxrNtDYhrPHv3gIOtFzMmTR8Gr5Uq8ZTEcvLyBp4sTL8iN8uOyoMGCqZDnDjdmYle6mwHVLXrTAQUfjxV3srDe-iGPFDDoTDsG88_v9ZFpOVRX-tEJI-13rPfsuk?key=2UGPf9_VbFqGffz4PQxRDA" alt=""><figcaption></figcaption></figure>

Затем задайте пароль для нового пользователя в появившемся окне.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc77tdfr9lp9EAUnUkw-_R5K-rNvwdMHSeNUE5bODwgtaZEHuEuDAEMjxxCZJ4mIeUpnB1KLAhBW_H8y4rgiJiNeE2bVsI6RM8kaVTSFg3saQgiF2LKfwbd0h-KtfkdrrTTw6ZxCj6O1A3k0bZW_Gv5lQtC?key=2UGPf9_VbFqGffz4PQxRDA" alt=""><figcaption></figcaption></figure>

Создайте столько новых пользователей, сколько Вам требуется.

Также попасть в окно “Управление политикой безопасности” для создания нового пользователя можно с помощью выполнения в терминале команды sudo fly-admin-center, которая откроет “Панель управления”.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeiXktGm3F8ig9vd6GSNElJ0ipt6n3So-05wF7YQAttweJQXpQl9HNjR_L34X87SHpaX5yzN9EIrJ9PDIMnNKEkc83TmgX7mbzh1NH1VdNeSALFfhXXefVmIvf9kMvhQ381rDGT_-GybKbhj6zJ1NdE4gRc?key=2UGPf9_VbFqGffz4PQxRDA" alt=""><figcaption></figcaption></figure>

Выберите в панели управления выберите пункт “Безопасность”, затем “Политика безопасности” и создайте новых пользователей, как это было описано выше.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcTskLdSsrKHPe3csnc8CIofGZ29ubyUkc21yBqp1Pr8cF5lvyVQzB3gTwZPNS2R-p5UYuQTBKs7xXgxsW6IvNyj9WBqUoLHqJwe06mbClJ1ZoUQkXrhhVrRxbTA3neXC1-ocZHSj8IHOgN5PWFk1YWItBP?key=2UGPf9_VbFqGffz4PQxRDA" alt=""><figcaption></figcaption></figure>

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

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfOWhmYsZE-qPf1tgTtwErEw2PawKDuGugMaUbmHWMKJn4FG7OiT2jMx8lZYT8VAkEpEATtX-FFaE9W1NKmtcKrG5CszArAQyLc6_AB8IBbLkKN9f0t4yfjiJ2gu94xJRvGhj3FLsxe8IQbypQe97AlJg?key=2UGPf9_VbFqGffz4PQxRDA" alt=""><figcaption></figcaption></figure>

Все вышеописанные команды можно выполнить как для всех пользователей, так и выборочно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeL0k-q2mJz_8jlGY9fi9Yzx0vIw36WoNL3gUVOCcgUopEwCfmXuGM9FmzbGxlgllJaLnT416MMHnHxqQbMNqU2tza7Du3sO2pOxyBRwBrWZyp_VOQUz-fW3NqdNUWkf9JwG9npB3EyL6XtPR3MQZlPnpuR?key=2UGPf9_VbFqGffz4PQxRDA" alt=""><figcaption></figcaption></figure>

## Установка плагина в Yandex Browser

Установку плагина в Yandex Browser необходимо выполнять отдельно для каждого пользователя.

1. Откройте браузер и зайдите в раздел “Дополнения”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdyWi20XgxwUHeoyHZdYvZ2bByh-Y22C4tN0eXC0wdvwUx3Ws9oO1Wi7x7TwUNBWywa55Mxq2ocFBzKZ6RrGt180iL6ARrLipN_Zo81GFmffzrQJ5weB7Uy7KTlsZVx30XA4OTr8wXEq8jJs8z3hDa5m7c2?key=2UGPf9_VbFqGffz4PQxRDA" alt=""><figcaption></figcaption></figure>

2. Запустите менеджер файлов и перейдите в папку /usr/lib/sherpa-robot/Chrome
3. Перетащите файл “plugin.crx” в окно Yandex Browser.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcQAqCbon0L-nIzyGzKEEiKsiK-4Je68s-UVP9J84Sr2sLdBUC5H-VTjkJ6qtnlI44xlwq3tOo3ulwd27AVnrhD8nhKIClRDIvbvMgD8iIaFQDyNes1qjvB0BGiAmKNpzr9mmF5KC3Dj2OH4Jr-m4qp3N4?key=2UGPf9_VbFqGffz4PQxRDA" alt=""><figcaption></figcaption></figure>

В диалоговом окне подтвердите установку расширения.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfmcCwp_JhIGFRR5HB36lhociLv3iONNg_0VZzv-dbfAdeTNJekR_N7hng7yWMARKlFJNfOH_m4CIdLs4uewnvuyXEkubh2obBny-5eMvMtpFjiM5Fo0PPUcf_R_KknGhWEKeV7aMSj6ep_bhPU1y5Z2NZi?key=2UGPf9_VbFqGffz4PQxRDA" alt=""><figcaption></figcaption></figure>

В верхней панели браузера значок Sherpa RPA красный, значит плагин еще не работает.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXezFDCkBrHlayL6OwlY9wpo529DcxSnzp2FA4h0YcoELw9S0M5EI8hEU6jQfaITGxgK5ysj_j80S29xy2xFQOomg0Qjr6Pl4sjYjprPTGmOCgT8t4hxCJ2FtDFBaxegMA6S-vcsfADbNyb7qYmk1DBAcDx7?key=2UGPf9_VbFqGffz4PQxRDA" alt=""><figcaption></figcaption></figure>

1. Чтобы плагин заработал необходимо закрыть окно браузера и, в терминале, выполнить команду:

`./install_host.sh`

2. Для проверки работы плагина запустите браузер. Если значок плагина Sherpa RPA стал синим, значит плагин успешно установлен.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdVInHZT0xecA6cd7ggYvRc-RFC1RkXMrmHZgJRQxvhuL4yka5_MdQr1fJn8C9aTBdMt0HYiWJEfHxQCEOkURT-8uL4TTze0FmZRerSGGdPlC0dYfxGcxl_ge6LSWdGAdz6tV02HkqhcG1XSOQre_z209a3?key=2UGPf9_VbFqGffz4PQxRDA" alt=""><figcaption></figcaption></figure>

Примечание: также плагин можно установить с сайта: [https://chrome.google.com/webstore/detail/sherparpa/bdnlfnchnkjeempadnmcgbbkbacffobl](https://chrome.google.com/webstore/detail/sherparpa/bdnlfnchnkjeempadnmcgbbkbacffobl)

И после этого выполнить пункты 3, 4, 5.
