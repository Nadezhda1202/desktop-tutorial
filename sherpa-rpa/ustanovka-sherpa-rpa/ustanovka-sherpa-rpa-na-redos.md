# Установка Sherpa RPA на RedOS

Перед установкой программных продуктов платформы Sherpa RPA ознакомьтесь с [системными требованиями к компьютеру](../#sistemnye-trebovaniya-dlya-sherpa-rpa-dlya-linux).

> Для установки необходимы права sudo.

Ссылки на дистрибутивы можно найти здесь:

{% embed url="https://docs.sherparpa.ru/ssylki-na-distributivy/distributivy-sherpa-rpa-linux" %}

## 1. Установка .NET **Core 8**

* Установите .NET Core 8. \
  \
  Общие инструкции по установке приведены на сайте Microsoft:

{% embed url="https://docs.microsoft.com/ru-ru/dotnet/core/install/linux-debian" %}

{% embed url="https://docs.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.2" %}

* Выполните в терминале следующие команды (для этого поочередно скопируйте команды, вставьте в окно терминала и нажмите на клавишу "Enter"):\
  \
  `wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb`\
  \
  `sudo dpkg -i packages-microsoft-prod.deb`\
  \
  `rm packages-microsoft-prod.deb`\
  \
  `sudo apt-get update`\
  \
  `sudo apt-get install -y dotnet-sdk-8.0`\
  \
  `sudo apt-get install -y powershell`

## 2. Установка библиотеки libgdiplu**s**

* Для работы эмуляции клавиатуры и мышки необходимо установить библиотеку `libgdiplus`, для этого выполните в терминале команду: `sudo apt install libgdiplus`

> Если Вы получили сообщение, что пакет не найден, то необходимо добавить репозиторий. Это можно сделать в программе "Менеджер пакетов Synaptic".

`deb https://dl.astralinux.ru/astra/frozen/2.12_x86-64/2.12.45/repository stable main contrib non-free`

## 3. Установка Tesseract

Для работы с Tesseract выполните в терминале следующую команду:\
\
`sudo apt install tesseract-ocr-rus`

## 4. Установка Python

Для работы с Python выполните в терминале команду:\


`sudo apt-get install -y libpython3.7-dev`

> Если установка завершилась с ошибкой, то необходимо установить пакеты «Средства разработки». Это можно сделать в программе "Менеджер пакетов Synaptic".

## 5. Установка плагина в Yandex Browser

Для работы Робота с Yandex Browser необходимо установить в него плагин:

* Откройте браузер и зайдите в раздел “Дополнения”;
* Затем запустите менеджер файлов и откройте папку с установленным Роботом:\
  \
  `/home/user/sherpa-robot`



* Перейдите в папку Chrome: \
  \
  `/home/user/sherpa-robot/Chrome`



* Перетащите файл `plugin.crx` в окно Yandex Browser;
* Запустите окно терминала в текущей папке и выполните следующие команды:\
  \
  `chmod +x install_host.sh`\
  \
  `./install_host.sh`\

* Запустите браузер.

Если значок плагина Sherpa RPA стал синим, значит плагин успешно установлен.

> Также плагин можно установить с сайта:&#x20;
>
> https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl&#x20;
>
> И после этого выполнить пункты 3, 4, 5.

## 6. Установка плагина в Chromium

* Перейдите по ссылке:&#x20;

{% embed url="https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl" %}

* Установите плагин;
* Перейдите в папку:  `/home/user/sherpa-robot/Chrome` ;
* Запустите окно терминала в текущей папке и выполните в нем следующие команды:\
  \
  `chmod +x install_host.sh`\
  \
  `./install_host.sh`\
  \
  `cp -f $HOME/.config/google-chrome/NativeMessagingHosts/processagent.sherparpa.json $HOME/.config/chromium/NativeMessagingHosts`



* Запустите браузер Chromium.&#x20;

Если значок плагина Sherpa RPA стал синим, значит плагин успешно установлен.

## 7. Скачивание и запуск установщика

Перед запуском необходимо удалить старую версию установщика, для этого:

* Выполните следующую команду: `rm -f SherpaRPA` ;
* Далее скачайте последнюю версию установщика, с помощью команды: \
  \
  `wget https://sherparpa.ru/downloads/linux/SherpaRPA.php -O SherpaRPA` ;



* Выставьте у файла флаг "Выполнения", используя команду: `chmod +x SherpaRPA` ;
* Запустите установщик, выполнив команду: `./SherpaRPA` .

> Для скачивания и запуска установщика можно ввести в терминале эту строку. В ней собраны все выше описанные команды: rm -f SherpaRPA && wget https://sherparpa.ru/downloads/linux/SherpaRPA.php -O SherpaRPA && chmod +x SherpaRPA && ./SherpaRPA

Для установки Sherpa RPA следуйте представленной ниже инструкции:

* Если Робот был установлен ранее, то вы увидите окно, оповещающее об этом. В нём вы сможете выбрать пункт "Установить" (для обновления Робота) или пункт "Удалить" (для удаления Робота);

<figure><img src="../../.gitbook/assets/изображение (1).png" alt=""><figcaption></figcaption></figure>

*   Если установка происходит впервые, или в предыдущем окне вы выбрали пункт "Установить", то появится окно установщика. Вы сможете выбрать:

    * установку ярлыка на рабочий стол,&#x20;
    * создание папки в меню "Пуск",
    * установку Робота для текущего Пользователя / для всех Пользователей;

    <figure><img src="../../.gitbook/assets/изображение (3).png" alt=""><figcaption></figcaption></figure>
* Затем нажать кнопку "Дальше";
* Выбрать папку для установки Робота и нажать на кнопку "Дальше";

<figure><img src="../../.gitbook/assets/изображение (7).png" alt=""><figcaption></figcaption></figure>

* Далее появится окно, где будет виден процесс установки Робота;

<figure><img src="../../.gitbook/assets/изображение (6).png" alt=""><figcaption></figcaption></figure>

* Когда установка завершится, вы увидите окно, в котором сможете сразу запустить Sherpa Designer, нажав на кнопку "Запустить".

<figure><img src="../../.gitbook/assets/изображение (8).png" alt=""><figcaption></figcaption></figure>
