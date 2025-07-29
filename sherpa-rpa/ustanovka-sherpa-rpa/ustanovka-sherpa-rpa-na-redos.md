# Установка Sherpa RPA на RedOS

> Для установки необходимы права sudo.

## 1. Установка .NET **Core 8**

Общие инструкции по установке приведены на сайте Microsoft:

{% embed url="https://learn.microsoft.com/ru-ru/dotnet/core/install/linux-fedora" %}

{% embed url="https://learn.microsoft.com/en-us/powershell/scripting/install/install-rhel?view=powershell-7.2" %}

**Выполните в терминале:**

* Установите .NET SDK 8.0:

`sudo dnf install -y dotnet-sdk-8.0`

* Установите PowerShell:

`sudo dnf install https://github.com/PowerShell/PowerShell/releases/download/v7.4.2/powershell-7.4.2-1.rh.x86_64.rpm`

## 2. Установка библиотеки libgdiplu**s**

Для работы эмуляции клавиатуры и мышки установите библиотеку libgdiplus.

**Выполните в терминале:**

`sudo dnf install libgdiplus`

## 3. Установка Tesseract

Для работы с Tesseract выполните в терминале следующую команду:\
\
`sudo dnf install tesseract-langpack-rus`

## 4. Установка Python

Для работы с Python выполните в терминале команду:

`sudo dnf install python3-devel.x86_64`

## 5. Установка плагина в Yandex Browser

Для работы Робота с Yandex Browser необходимо установить в него плагин:

* Откройте браузер и зайдите в раздел “Дополнения”;
* Затем запустите менеджер файлов и откройте папку с установленным Роботом:&#x20;

`/home/user/sherpa-robot` ;

* Перейдите в папку Chrome:&#x20;

`/home/user/sherpa-robot/Chrome` ;

* Перетащите файл `plugin.crx` в окно Yandex Browser;
* Запустите окно терминала в текущей папке и выполните следующие команды:

`chmod +x install_host.sh` ;

`./install_host.sh` ;

* Запустите браузер.

Если значок плагина Sherpa RPA стал синим, значит плагин успешно установлен.

Так же плагин можно установить с сайта:&#x20;

{% embed url="https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl" %}

И после этого выполнить пункты 3, 4, 5.

## 6. Установка плагина в Chromium

Перейдите по ссылке и установите плагин:

{% embed url="https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl" %}

* Перейдите в папку:&#x20;

`/home/user/sherpa-robot/Chrome`

* Запустите окно терминала в текущей папке;
* Сделайте файл install\_host.sh исполняемым:

`chmod +x install_host.sh`&#x20;

* Запустите install\_host.sh в текущей директории:

`./install_host.sh`

* Скопируйте конфигурационный файл расширения для Native Messaging:

`cp -f $HOME/.config/google-chrome/NativeMessagingHosts/processagent.sherparpa.json $HOME/.config/chromium/NativeMessagingHosts`

4\)      Запустите браузер.

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

<figure><img src="../../.gitbook/assets/изображение (1) (1) (1) (1) (1) (1) (1).png" alt=""><figcaption></figcaption></figure>

*   Если установка происходит впервые, или в предыдущем окне вы выбрали пункт "Установить", то появится окно установщика. Вы сможете выбрать:

    * установку ярлыка на рабочий стол,&#x20;
    * создание папки в меню "Пуск",
    * установку Робота для текущего Пользователя / для всех Пользователей;

    <figure><img src="../../.gitbook/assets/изображение (3) (1) (1) (1) (1) (1).png" alt=""><figcaption></figcaption></figure>
* Затем нажать кнопку "Дальше";
* Выбрать папку для установки Робота и нажать на кнопку "Дальше";

<figure><img src="../../.gitbook/assets/изображение (7) (1).png" alt=""><figcaption></figcaption></figure>

* Далее появится окно, где будет виден процесс установки Робота;

<figure><img src="../../.gitbook/assets/изображение (6) (1).png" alt=""><figcaption></figcaption></figure>

* Когда установка завершится, вы увидите окно, в котором сможете сразу запустить Sherpa Designer, нажав на кнопку "Запустить".

<figure><img src="../../.gitbook/assets/изображение (8) (1).png" alt=""><figcaption></figcaption></figure>
