# Установка Sherpa Robot Attended на RedOS

> Для установки необходимы права sudo

Если Робот уже установлен, то перейдите к разделу [Скачивание и распаковка Робота](ustanovka-sherpa-robot-attended-na-redos.md#skachivanie-i-raspakovka-robota) для его обновления.

## Установка .NET Core 8

Общие инструкции по установке приведены на сайте Microsoft:

{% embed url="https://learn.microsoft.com/ru-ru/dotnet/core/install/linux-fedora" %}

{% embed url="https://learn.microsoft.com/en-us/powershell/scripting/install/install-rhel?view=powershell-7.2" %}

* Установите .NET SDK 8.0:

```
sudo dnf install -y dotnet-sdk-8.0
```

* Установите PowerShell:

```
sudo dnf install https://github.com/PowerShell/PowerShell/releases/download/v7.4.2/powershell-7.4.2-1.rh.x86_64.rpm
```

## Установка libgdiplus

Для работы эмуляции клавиатуры и мышки нужно установить библиотеку libgdiplus, для этого выполните в терминале:

```
sudo dnf install libgdiplus
```

## Установка tesseract

Для работы с tesseract, выполните в терминале:

```
sudo dnf install tesseract-langpack-rus
```

## &#x20;Установка python

Для работы с python, выполните в терминале:

```
sudo dnf install python3-devel.x86_64
```

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

* Запустите Sherpa Assistant:

```
./sherpa-robot/sherpa-assistant
```

Из менеджера файлов зайдите в папку sherpa-robot и сделайте ярлык на файл sherpa-assistant.

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

## Установка Chromium

Для работы Робота с Chromium необходимо установить в него плагин:

* Перейдите по ссылке:&#x20;

{% embed url="https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl" %}

* Установите плагин.
* Перейдите в папку:

```
 /home/user/sherpa-robot/Chrome
```

*   Запустите окно терминала в текущей папке:

    * Сделайте скрипт install\_host.sh исполняемым:

    `chmod +x install_host.sh`

    * Запустите скрипт install\_host.sh исполняемым:

    `./install_host.sh`

    * Скопируйте JSON-конфигурационный файл для расширений Native Messaging из Chrome в Chromium:

    `cp -f $HOME/.config/google-chrome/NativeMessagingHosts/processagent.sherparpa.json $HOME/.config/chromium/NativeMessagingHosts`
* Запустите браузер.&#x20;

Если значок плагина Sherpa RPA стал синим, значит плагин успешно установлен.
