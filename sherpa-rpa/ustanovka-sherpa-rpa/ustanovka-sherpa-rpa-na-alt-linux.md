# Установка Sherpa RPA на Alt Linux

> Для установки необходимы права sudo.

## 1. Установка .NET Core 8

Выполняем в терминале:

* Войдите с правами администратора:

`su`

* Загрузите скрипт установки .NET:

`wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh`

* Сделайте скрипт исполняемым:

`chmod +x ./dotnet-install.sh`

* Установите SDK в директорию /usr/share/dotnet:

`./dotnet-install.sh --channel 8.0 --install-dir /usr/share/dotnet`

* Откройте системный файл конфигурации переменных окружения для редактирования:

`mcedit /etc/profile`

* В файле /etc/profile перед строкой `[ -n "$PATH"]`  вставьте следующую строку:

`[ -n "$DOTNET_ROOT" ] || DOTNET_ROOT="/usr/share/dotnet"`

* Добавьте переменную в окружение:

`export DOTNET_ROOT`

* Перед строкой `export PATH` в файле /etc/profile добавьте:

`PATH="$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools"`

<figure><img src="../../.gitbook/assets/изображение (212).png" alt=""><figcaption></figcaption></figure>

* Перезагрузите компьютер;
* Обновите пакеты:

`apt-get update`

## 2. Установка языковых моделей для Tesseract OCR <a href="#id-2.-ustanovka-biblioteki-libgdiplus" id="id-2.-ustanovka-biblioteki-libgdiplus"></a>

Если вы планируете использовать Tesseract OCR или функцию автоматического распознавания угла поворота страницы в Шаблонизаторе, то для улучшения качества результата выполните следующие действия:

* Скачайте архив

`wget` [`https://sherparpa.ru/downloads/traineddata.zip`](https://sherparpa.ru/downloads/traineddata.zip) `-O traineddata.zip`

* Распакуйте его в папку

`unzip -o traineddata.zip -d /usr/share/tesseract/tessdata`

## 3. Установка библиотеки libgdiplu**s** <a href="#id-2.-ustanovka-biblioteki-libgdiplus" id="id-2.-ustanovka-biblioteki-libgdiplus"></a>

Для работы эмуляции клавиатуры и мышки установите библиотеку libgdiplus.

**Выполните в терминале:**

`apt-get install libgdiplus` .

## &#x20;4. Скачивание и запуск установщика

**Выполните в терминале:**

* Удалите старую версию установщика:

`rm -f SherpaRPA` ;

* Скачайте последнюю версию установщика:

`wget https://sherparpa.ru/downloads/linux/SherpaRPA.php -O SherpaRPA` ;

* Добавьте у файла флаг Выполнения:

`chmod +x SherpaRPA` ;

* Запустите установщик:

`./SherpaRPA` ;

> Для скачивания и запуска установщика можно ввести в терминале эту строку. В ней собраны все выше описанные команды: rm -f SherpaRPA && wget https://sherparpa.ru/downloads/linux/SherpaRPA.php -O SherpaRPA && chmod +x SherpaRPA && ./SherpaRPA

* Если Робот был установлен ранее, то вы увидите окно, оповещающее об этом. В нём вы сможете выбрать пункт "Установить" (для обновления Робота) или пункт "Удалить" (для удаления Робота);

<figure><img src="../../.gitbook/assets/изображение (213).png" alt=""><figcaption></figcaption></figure>

* Если установка происходит впервые, или в предыдущем окне вы выбрали пункт "Установить", то появится окно установщика. Вы сможете выбрать:
  * установку ярлыка на рабочий стол,&#x20;
  * создание папки в меню "Пуск",
  * установку Робота для текущего Пользователя / для всех Пользователей;

<figure><img src="../../.gitbook/assets/изображение (214).png" alt=""><figcaption></figcaption></figure>

* Выберите папку для установки Робота и нажать на кнопку "Дальше";

<figure><img src="../../.gitbook/assets/изображение (215).png" alt=""><figcaption></figcaption></figure>

* Далее появится окно, где будет виден процесс установки Робота;

<figure><img src="../../.gitbook/assets/изображение (216).png" alt=""><figcaption></figcaption></figure>

* Когда установка завершится, вы увидите окно, в котором сможете сразу запустить Sherpa Designer, нажав на кнопку "Запустить".

<figure><img src="../../.gitbook/assets/изображение (217).png" alt=""><figcaption></figcaption></figure>

## 5. Установка плагина в Yandex Browser

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

Так же плагин можно установить с сайта:&#x20;

{% embed url="https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl" %}

И после этого выполнить пункты 3, 4, 5.
