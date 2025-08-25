# Установка Sherpa RPA на Astra Linux

> Для установки необходимы права sudo.

## 1. Установка .NET 8.0 <a href="#docs-internal-guid-f9793f2b-7fff-a245-1b5d-b6830db76dae" id="docs-internal-guid-f9793f2b-7fff-a245-1b5d-b6830db76dae"></a>

Общие инструкции по установке приведены на сайте Microsoft:

{% embed url="https://docs.microsoft.com/ru-ru/dotnet/core/install/linux-debian" %}

{% embed url="https://docs.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.2" %}

**Выполните в терминале:**

* Загрузите файл конфигурации:

`wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb`

* Установите пакет:

`sudo dpkg -i packages-microsoft-prod.deb`

* Удалите файл:

`rm packages-microsoft-prod.deb`

* Обновите список пакетов:

`sudo apt-get update`

* Установите .NET SDK 8.0:

`sudo apt-get install -y dotnet-sdk-8.0`

* Установите PowerShell:

`sudo apt-get install -y powershell`

Появится сообщение: “Installation finished successfully”.

## 2. Включение прозрачности для подсветки выбора селекторов

Запускаем панель управления "fly-admin-center". Переходим в пункт "Оформление Fly":

<figure><img src="../../.gitbook/assets/изображение (206).png" alt=""><figcaption></figcaption></figure>

Заходим во вкладку "Эффекты" и убеждаемся, что включены два параметра "Композит-менеджер" и "Прозрачность".

## 3. Настройка библиотеки libgdiplu**s**

Для работы эмуляции клавиатуры и мышки установите библиотеку libgdiplus.

**Выполните в терминале:**

`sudo apt install libgdiplus`

Если Вы получили сообщение, что пакет не найден, то необходимо добавить репозиторий.

Это можно сделать в программе "Менеджер пакетов Synaptic":

`deb https://dl.astralinux.ru/astra/frozen/2.12_x86-64/2.12.45/repository stable main contrib non-free`

## 4. Установка Tesseract

Для работы с Tesseract выполните в терминале следующую команду:

`sudo apt install tesseract-ocr-rus`

Если вы планируете использовать Tesseract OCR или функцию автоматического распознавания угла поворота страницы в Шаблонизаторе, то для улучшения качества результата выполните следующие действия:

* Скачайте архив

`wget` [`https://sherparpa.ru/downloads/traineddata.zip`](https://sherparpa.ru/downloads/traineddata.zip) `-O traineddata.zip`

* Распакуйте его в папку

`sudo unzip -o traineddata.zip -d /usr/share/tesseract-ocr/4.00/tessdata`

## 5. Установка Python

Для работы с Python выполните в терминале следующую команду:

`sudo apt-get install -y libpython3.7-dev`

Если установка завершилась с ошибкой, то необходимо установить пакеты «Средства разработки». Это можно сделать в программе "Менеджер пакетов Synaptic".

## 6. Скачивание и запуск установщика

**Выполните в терминале:**

* Удалите старую версию установщика:

`rm -f SherpaRPA`

* Скачайте последнюю версию установщика:

`wget https://sherparpa.ru/downloads/linux/SherpaRPA.php -O SherpaRPA`

* Добавьте у файла флаг Выполнения:

`chmod +x SherpaRPA`

* Запустите установщик:

`./SherpaRPA`

> Для скачивания и запуска установщика можно ввести в терминале эту строку. В ней собраны все выше описанные команды: rm -f SherpaRPA && wget https://sherparpa.ru/downloads/linux/SherpaRPA.php -O SherpaRPA && chmod +x SherpaRPA && ./SherpaRPA

* Если Робот был установлен ранее, то вы увидите окно, оповещающее об этом. В нём вы сможете выбрать пункт "Установить" (для обновления Робота) или пункт "Удалить" (для удаления Робота);

<figure><img src="../../.gitbook/assets/изображение (208).png" alt=""><figcaption></figcaption></figure>

* Выберите папку для установки Робота и нажать на кнопку "Дальше";

<figure><img src="../../.gitbook/assets/изображение (209).png" alt=""><figcaption></figcaption></figure>

* Далее появится окно, где будет виден процесс установки Робота;

<figure><img src="../../.gitbook/assets/изображение (210).png" alt=""><figcaption></figcaption></figure>

* Когда установка завершится, вы увидите окно, в котором сможете сразу запустить Sherpa Designer, нажав на кнопку "Запустить".

<figure><img src="../../.gitbook/assets/изображение (211).png" alt=""><figcaption></figcaption></figure>

## 7. Установка плагина в Yandex Browser

Для работы Робота с Yandex Browser необходимо установить в него плагин:

* Откройте браузер и зайдите в раздел “Дополнения”;
* Затем запустите менеджер файлов и откройте папку с установленным Роботом:

`/home/user/.config/sherpa-rpa/sherpa-robot` ;

* Перейдите в папку Chrome:

`/home/user/.config/sherpa-rpa/sherpa-robot /Chrome` ;

* Перетащите файл `plugin.crx` в окно браузера;
* Добавьте расширение;
* Закройте браузер;
* Запустите окно терминала в текущей папке и выполните:

`chmod +x install_host.sh` ;

`./install_host.sh` ;

* Запустите браузер.&#x20;

Если значок плагина Sherpa RPA стал синим, значит плагин успешно установлен.

Так же плагин можно установить с сайта:

{% embed url="https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl" %}

И после этого выполнить пункты 3, 4, 5.
