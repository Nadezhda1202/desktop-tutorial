# Установка Sherpa Robot Attended на Astra Linux

> Для установки необходимы права sudo

Если Робот уже установлен, то перейдите к разделу [Скачивание и распаковка Робота](ustanovka-sherpa-robot-attended-na-astra-linux.md#skachivanie-i-raspakovka-robota) для его обновления.

## Установка .NET Core 8

Общие инструкции по установке приведены на сайте Microsoft:

{% embed url="https://docs.microsoft.com/ru-ru/dotnet/core/install/linux-debian" %}

{% embed url="https://docs.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.2" %}

* Загрузите репозиторий Microsoft для Debian 10:

```
wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
```

* Установите репозиторий Microsoft в систему:

```
sudo dpkg -i packages-microsoft-prod.deb
```

* Удалите временный файл установки:

```
rm packages-microsoft-prod.deb
```

* Обновите список пакетов:

```
sudo apt-get update
```

* Установите SDK .NET 8.0:

```
sudo apt-get install -y dotnet-sdk-8.0
```

* Установите PowerShell:

```
sudo apt-get install -y powershell 
```

## Установка libgdiplus

Для работы эмуляции клавиатуры и мышки нужно установить библиотеку libgdiplus. Для этого выполните в терминале:

```
sudo apt install libgdiplus
```

Если Вы получили сообщение, что пакет не найден, то необходимо добавить репозиторий. Это можно сделать в программе "Менеджер пакетов Synaptic".

```
deb https://dl.astralinux.ru/astra/frozen/2.12_x86-64/2.12.45/repository stable main contrib non-free
```

## Установка tesseract

Для работы с tesseract выполните в терминале:

```
sudo apt install tesseract-ocr-rus
```

## Установка python

Для работы с python выполните в терминале:

```
sudo apt-get install -y libpython3.7-dev
```

Если установка завершилась с ошибкой, то необходимо установить пакеты «Средства разработки». Это можно сделать в программе "Менеджер пакетов Synaptic".&#x20;

## Скачивание и распаковка Робота

**Выполните в терминале:**

* Удалите файл sherpa-robot.zip:

```
rm -f sherpa-robot.zip
```

* Скачайте файл sherpa-robot.zip:

```
wget https://sherparpa.ru/downloads/linux/get.php -O sherpa-robot.zip
```

* Распакуйте ZIP-архив:

```
unzip -o sherpa-robot.zip
```

* Перейдите в папку sherpa-robot и установите права на исполнение файлов:

```
cd sherpa-robot && chmod +x Chrome/process-agent-host && chmod +x process-agent && chmod +x sherpa-assistant && cd ../
```

> Для обновления Робота до последней версии можно ввести в терминале эту команду. В ней собраны все описанные выше команды: `rm -f sherpa-robot.zip && wget https://sherparpa.ru/downloads/linux/get.php -O sherpa-robot.zip && unzip -o sherpa-robot.zip && cd sherpa-robot && chmod +x Chrome/process-agent-host && chmod +x process-agent && chmod +x sherpa-assistant && cd ../`

* Запустите Sherpa Assistant

```
./sherpa-robot/sherpa-assistant
```

* Из менеджера файлов зайдите в папку sherpa-robot и сделайте ярлык на файл sherpa-assistant.

## Установка Yandex Browser

Для работы Робота с Yandex Browser необходимо установить в него плагин, для этого:

* Откройте браузер и перейдите в раздел "Дополнения".
* Перейдите в папку с установленным Роботом:

```
/home/user/sherpa-robot
```

* Перейдите в папку Chrome:

```
/home/user/sherpa-robot/Chrome
```

* Перенесите файл plugin.crx в окно браузера.&#x20;
* Добавьте расширение и закройте браузер.
*   Запустите окно терминала в текущей папке. Выполните следующие команды:

    * Сделайте скрипт install\_host.sh исполняемым:

    `chmod +x install_host.sh`

    * Запустите скрипт install\_host.sh:

    `./install_host.sh`
* Запустите браузер.&#x20;

Если значок плагина Sherpa RPA стал синим, значит плагин успешно установлен.

Так же плагин можно установить с сайта:&#x20;

{% embed url="https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl" %}

И после этого необходимо выполнить пункты 3, 4, 5, 6, 7.
