# Установка Sherpa RPA на ОСнова

> Для установки необходимы права sudo.

**Отключите защиту памяти:**

* Для постоянного отключения в конфигурационном файле /etc/default/grub допишите:

`GRUB_CMDLINE_LINUX_DEFAULT="quiet mprotect=off"`&#x20;

* Обновите GRUB:

`sudo update-grub`

* Перезагрузите компьютер.

**Добавьте репозиторий Debiаn для установки библиотеки libgdiplus:**

*   **Для ОСнова 2:**

    * Скачайте файл:

    `sudo wget https://dl.nppct.ru/onyx/stable/misc/apt/sources.list.d/zz-debian-10-buster.list`

    * Сохраните скачанный файл в каталог /etc/apt/sources.list.d/:

    `-P /etc/apt/sources.list.d/`
*   **Для ОСнова 3:**

    * Скачайте файл:&#x20;

    `sudo wget https://dl.nppct.ru/onyx3/stable/misc/apt/sources.list.d/zz-debian-12-bookworm.list`

    * Сохраните скачанный файл в каталог /etc/apt/sources.list.d/:

    `-P /etc/apt/sources.list.d/`

**Скачайте списки пакетов из настроенных репозиториев:**

`sudo apt update`

## 1. Установка .NET **Core 8**

Общие инструкции по установке приведены на сайте Microsoft:

{% embed url="https://docs.microsoft.com/ru-ru/dotnet/core/install/linux-debian" %}

{% embed url="https://docs.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.2" %}

**Выполните в терминале:**

*   Скачайте установочный файл:

    * **Для ОСнова 2:**

    `wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb`

    * **Для ОСнова 3:**

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

Если вы планируете использовать Tesseract OCR или функцию автоматического распознавания угла поворота страницы в Шаблонизаторе, то для улучшения качества результата выполните следующие действия:

* Скачайте архив

`wget` [`https://sherparpa.ru/downloads/traineddata.zip`](https://sherparpa.ru/downloads/traineddata.zip) `-O traineddata.zip`

* Распакуйте его в папку

`sudo unzip -o traineddata.zip -d /usr/share/tesseract-ocr/4.00/tessdata`

## 4. Скачивание и запуск установщика

Удалите старую версию установщика и скачайте новую.

**Выполните в терминале:**

* Удалите старую версию установщика:

&#x20;`rm -f SherpaRPA` ;

* Скачайте последнюю версию установщика:

`wget https://sherparpa.ru/downloads/linux/SherpaRPA.php -O SherpaRPA` ;

* Выставьте у файла флаг "Выполнения":

&#x20;`chmod +x SherpaRPA` ;

* Запустите установщик:&#x20;

`./SherpaRPA` .

> Для скачивания и запуска установщика можно ввести в терминале эту строку. В ней собраны все выше описанные команды: rm -f SherpaRPA && wget https://sherparpa.ru/downloads/linux/SherpaRPA.php -O SherpaRPA && chmod +x SherpaRPA && ./SherpaRPA

Для установки Sherpa RPA следуйте представленной ниже инструкции:

* Если Робот был установлен ранее, то вы увидите окно, оповещающее об этом. В нём вы сможете выбрать пункт "Установить" (для обновления Робота) или пункт "Удалить" (для удаления Робота);

<figure><img src="../../.gitbook/assets/изображение (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1).png" alt=""><figcaption></figcaption></figure>

*   Если установка происходит впервые, или в предыдущем окне вы выбрали пункт "Установить", то появится окно установщика. Вы сможете выбрать:

    * установку ярлыка на рабочий стол,&#x20;
    * создание папки в меню "Пуск",
    * установку Робота для текущего Пользователя / для всех Пользователей;

    <figure><img src="../../.gitbook/assets/изображение (2) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1).png" alt=""><figcaption></figcaption></figure>
* Затем нажать кнопку "Дальше";
* Выбрать папку для установки Робота и нажать на кнопку "Дальше";

<figure><img src="../../.gitbook/assets/изображение (4) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1).png" alt=""><figcaption></figcaption></figure>

* Далее появится окно, где будет виден процесс установки Робота;

<figure><img src="../../.gitbook/assets/изображение (10) (1).png" alt=""><figcaption></figcaption></figure>

* Когда установка завершится, вы увидите окно, в котором сможете сразу запустить Sherpa Designer, нажав на кнопку "Запустить".

<figure><img src="../../.gitbook/assets/изображение (9) (1) (1).png" alt=""><figcaption></figcaption></figure>

## 5. Установка плагина в Yandex Browser

Для работы Робота с Yandex Browser необходимо установить в него плагин:

* Откройте браузер и зайдите в раздел “Дополнения”;
* Перейдите в папку с установленным Роботом:

`/home/user/.config/sherpa-rpa/sherpa-robot` ;

* Перейдите в папку Chrome:&#x20;

`/home/user/.config/sherpa-rpa/sherpa-robot /Chrome` ;

* Перетащите файл `plugin.crx` в окно браузера;
* Добавьте расширение;
* Закройте браузер;
* Запустите окно терминала в текущей папке и выполните следующие команды:

`chmod +x install_host.sh` ;

`./install_host.sh` ;

* Запустите браузер.

Если значок плагина Sherpa RPA стал синим, значит плагин успешно установлен.

Так же плагин можно установить с сайта:&#x20;

{% embed url="https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl" %}

И после этого выполнить пункты 3, 4, 5.
