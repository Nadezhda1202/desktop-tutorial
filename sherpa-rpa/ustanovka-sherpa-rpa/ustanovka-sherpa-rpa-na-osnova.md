# Установка Sherpa RPA на ОСнова

> Для установки необходимы права sudo.

Необходимо отключить защиту памяти.

Для постоянного отключения в конфигурационном файле /etc/default/grub дописать в строку GRUB\_CMDLINE\_LINUX\_DEFAULT="quiet mprotect=off" с последующим вызовом

&#x20;

sudo update-grub

Перезагружаемся!

&#x20;

Добавляем репозиторий Debiаn для установки библиотеки libgdiplus

Для ОСнова 2

sudo wget https://dl.nppct.ru/onyx/stable/misc/apt/sources.list.d/zz-debian-10-buster.list

-P /etc/apt/sources.list.d/

Для Основа 3

sudo wget https://dl.nppct.ru/onyx3/stable/misc/apt/sources.list.d/zz-debian-12-bookworm.list

-P /etc/apt/sources.list.d/

&#x20;

sudo apt update

## 1. Установка .NET **Core 8**

Общие инструкции по установке приведены на сайте Microsoft:

{% embed url="https://docs.microsoft.com/ru-ru/dotnet/core/install/linux-debian" %}

{% embed url="https://docs.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.2" %}

**Выполняем в терминале:**

*   Скачайте установочный файл:

    * Для ОСнова 2:

    `wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb`

    * Для ОСнова 3:

    `wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb`
* Установите скачанный файл:

`sudo dpkg -i packages-microsoft-prod.deb`

* Удалите временный установочный файл:

`rm packages-microsoft-prod.deb`

* Обновите список пакетов:

`sudo apt update`

* Установите .NET SDK версии 8.0:

`sudo apt install -y dotnet-sdk-8.0`

* Установите PowerShell:

`sudo apt install -y powershell`

## 2. Установка библиотеки libgdiplu**s**

Для работы эмуляции клавиатуры и мышки установите библиотеку libgdiplus.

**Выполните в терминале:**

`sudo apt install libgdiplus`

## 3. Установка Tesseract

Для работы с Tesseract выполните в терминале следующую команду:\
\
`sudo apt install tesseract-ocr-rus`

## 4. Скачивание и запуск установщика

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
