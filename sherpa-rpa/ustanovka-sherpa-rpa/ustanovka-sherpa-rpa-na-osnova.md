# Установка Sherpa RPA на ОСнова

Перед установкой программных продуктов платформы Sherpa RPA ознакомьтесь с [системными требованиями к компьютеру](../#sistemnye-trebovaniya-dlya-sherpa-rpa-dlya-linux).

> Для установки необходимы права sudo.&#x20;
>
> Также необходимо отключить защиту памяти.&#x20;
>
> Для постоянного отключения:
>
> * &#x20;в конфигурационном файле `/etc/default/grub` необходимо дописать в строку `GRUB_CMDLINE_LINUX_DEFAULT="quiet mprotect=off"` ,
> * после этого вызвать `sudo update-grub` ,
> * перезагрузить компьютер.

> &#x20;Для установки библиотеки libgdiplus необходимо добавить репозиторий Debian:
>
> * для ОСнова 2:
>
> `sudo wget https://dl.nppct.ru/onyx/stable/misc/apt/sources.list.d/zz-debian-10-buster.list`
>
> `-P /etc/apt/sources.list.d/`
>
> * для ОСнова 3:&#x20;
>
> `sudo wget https://dl.nppct.ru/onyx3/stable/misc/apt/sources.list.d/zz-debian-12-bookworm.list`
>
> `-P /etc/apt/sources.list.d/`
>
> * после этого вызвать `sudo apt update` .

## 1. Установка .NET **Core 8**

* Установите .NET Core 8.&#x20;
* Общие инструкции по установке приведены на сайте Microsoft:

{% embed url="https://docs.microsoft.com/ru-ru/dotnet/core/install/linux-debian" %}

{% embed url="https://docs.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.2" %}

Выполните в терминале следующие команды (для этого поочередно скопируйте команды, вставьте в окно терминала и нажмите на клавишу "Enter"):

#### 1.1. Для ОСнова 2

`wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb`

#### 1.2. Для ОСнова 3

`wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb`

`sudo dpkg -i packages-microsoft-prod.deb`

`rm packages-microsoft-prod.deb`

`sudo apt update`

`sudo apt install -y dotnet-sdk-8.0`

`sudo apt install -y powershell`

## 2. Установка библиотеки libgdiplu**s**

* Для работы эмуляции клавиатуры и мышки необходимо установить библиотеку `libgdiplus`, для этого выполните в терминале команду: `sudo apt install libgdiplus`

> Если Вы получили сообщение, что пакет не найден, то необходимо добавить репозиторий. Это можно сделать в программе "Менеджер пакетов Synaptic".

`deb https://dl.astralinux.ru/astra/frozen/2.12_x86-64/2.12.45/repository stable main contrib non-free`

## 3. Установка Tesseract

Для работы с Tesseract выполните в терминале следующую команду:\
\
`sudo apt install tesseract-ocr-rus`

## 4. Установка плагина в Yandex Browser

Для работы Робота с Yandex Browser необходимо установить в него плагин:

* Откройте браузер и зайдите в раздел “Дополнения”;
* Затем запустите менеджер файлов и откройте папку с установленным Роботом:\
  \
  `/home/user/.config/sherpa-rpa/sherpa-robot`



* Перейдите в папку Chrome: \
  \
  `/home/user/.config/sherpa-rpa/sherpa-robot /Chrome`



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

## &#x20;4. Скачивание и запуск установщика

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

    <figure><img src="../../.gitbook/assets/изображение (2).png" alt=""><figcaption></figcaption></figure>
* Затем нажать кнопку "Дальше";
* Выбрать папку для установки Робота и нажать на кнопку "Дальше";

<figure><img src="../../.gitbook/assets/изображение (4).png" alt=""><figcaption></figcaption></figure>

* Далее появится окно, где будет виден процесс установки Робота;

<figure><img src="../../.gitbook/assets/изображение (10).png" alt=""><figcaption></figcaption></figure>

* Когда установка завершится, вы увидите окно, в котором сможете сразу запустить Sherpa Designer, нажав на кнопку "Запустить".

<figure><img src="../../.gitbook/assets/изображение (9).png" alt=""><figcaption></figcaption></figure>
