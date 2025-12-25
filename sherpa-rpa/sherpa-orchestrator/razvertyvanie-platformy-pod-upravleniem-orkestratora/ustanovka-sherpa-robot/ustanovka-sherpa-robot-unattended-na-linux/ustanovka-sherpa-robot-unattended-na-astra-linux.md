# Установка Sherpa Robot Unattended на Astra Linux

> Для установки необходимы права sudo

Если Робот уже установлен, то перейдите к разделу [Скачивание и распаковка Робота](ustanovka-sherpa-robot-unattended-na-astra-linux.md#skachivanie-i-raspakovka-robota) для его обновления.

### Установка .NET Core 8 и Powershell

Общие инструкции по установке приведены на сайте Microsoft:

{% embed url="https://docs.microsoft.com/ru-ru/dotnet/core/install/linux-debian" %}

{% embed url="https://docs.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.2" %}

* Загрузите репозиторий Microsoft для Debian 10:

<pre><code><strong>wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb 
</strong></code></pre>

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

## Установка сервера RDP

Для подключения к машине Координатора необходимо установить сервер xrdp.

**Выполните в терминале:**

* Установите xrdp:

```
sudo apt-get install xrdp
```

* Перезапустите xrdp:

```
sudo systemctl restart xrdp
```

* Активируйте автоматический запуск xrdp при загрузке системы:

```
sudo systemctl enable xrdp --now
```

* Перезагрузите систему:

```
sudo reboot
```

## Скачивание и распаковка Робота

**Выполните в терминале:**

* Удалите файл sherpa-robot.zip:

```
rm -f sherpa-robot.zip
```

* Скачайте файл sherpa-robot.zip:

```
wget https://sherparpa.ru/downloads/linux/get-robot.php -O sherpa-robot.zip
```

* Распакуйте ZIP-архив:

```
sudo unzip -o sherpa-robot.zip -d /usr/lib
```

*   Перейдите в папку sherpa-robot и установите права на исполнение файлов:

    * Сделайте скрипт install\_host.sh исполняемым:

    `sudo chmod a+x /usr/lib/sherpa-robot/Chrome/install_host.sh`

    * Сделайте файл process-agent-host исполняемым:

    `sudo chmod a+x /usr/lib/sherpa-robot/Chrome/process-agent-host`

    * Сделайте файл process-agent исполняемым:

    `sudo chmod a+x /usr/lib/sherpa-robot/process-agent`

    * Сделайте файл sherpa-assistant исполняемым:

    `sudo chmod a+x /usr/lib/sherpa-robot/sherpa-assistant`

    * Сделайте файл sherpa-assistant-console исполняемым:

    `sudo chmod a+x /usr/lib/sherpa-robot/sherpa-assistant-console`

> Для установки или обновления Робота до последней версии можно ввести в терминале эту команду. В ней собраны все выше описанные команды: `rm -f sherpa-robot.zip && wget https://sherparpa.ru/downloads/linux/get-robot.php -O sherpa-robot.zip && sudo unzip -o sherpa-robot.zip -d /usr/lib && sudo chmod a+x /usr/lib/sherpa-robot/Chrome/install_host.sh && sudo chmod a+x /usr/lib/sherpa-robot/Chrome/process-agent-host && sudo chmod a+x /usr/lib/sherpa-robot/process-agent && sudo chmod a+x /usr/lib/sherpa-robot/sherpa-assistant && sudo chmod a+x /usr/lib/sherpa-robot/sherpa-assistant-console`

## Добавление Пользователей для запуска Unattended-роботов

**Выполните в терминале:**

* Запустите центр управления:&#x20;

```
sudo fly-admin-center
```

* Зайдите в "Безопасность" → "Политика безопасности" или выбираем пункт в меню "Пуск" → "Системные" → "Политика безопасности".
*   Первичная настройка для:

    * Добавления ярлыка для Sherpa Assistant,
    * Добавления ярлыков в автозагрузку для Unattended-роботов,
    * Указания сервера Оркестратора для Unattended-роботов,
    * Указания GUID Роботов для учетных записей Unattended-роботов.

    Предварительно необходимо создать учетные записи, на которых будут запускаться Unattended-роботы:

    * Сделайте файл post-configure исполняемым:

    `sudo chmod a+x /usr/lib/sherpa-robot/post-configure/post-configure`

    * Запустите файл post-configure с правами администратора:

    `sudo /usr/lib/sherpa-robot/post-configure/post-configure`

Вы увидите главное меню с командами:

<figure><img src="../../../../../.gitbook/assets/2025-07-25_17-14-32.png" alt=""><figcaption></figcaption></figure>

1. Команда создает ярлыки на Sherpa Assistant на рабочем столе, а так же в меню "Пуск" → "Разработка".
2. Команда удаляет ярлыки Sherpa Assistant.
3. Команда создает ярлык в автозагрузке у Пользователя на запуск Unattended-робота.
4. Команда удаляет ярлык на запуск Unattended-робота.
5. Команда позволяет ввести сервер Оркестратора и указать GUID Роботов.

Все команды могут выполняться или для всех учетных записей, или выборочно:

<figure><img src="../../../../../.gitbook/assets/2025-07-25_17-15-32.png" alt=""><figcaption></figcaption></figure>

## Установка Yandex Browser

Для работы Робота с Yandex Browser необходимо установить в него плагин.

Данное действие нужно выполнять для каждой учетной записи отдельно.

* Откройте браузер и перейдите в раздел "Дополнения".
* Запустите менеджер файлов и перейдите в папку:

```
/usr/lib/sherpa-robot/Chrome
```

* Перенесите файл plugin.crx в окно браузера.&#x20;
* Добавьте расширение и закройте браузер.
* Запустите окно терминала в текущей папке:

```
./install_host.sh
```

* Запустите браузер.&#x20;

Если значок плагина Sherpa RPA стал синим, значит плагин успешно установлен.

Так же плагин можно установить с сайта:&#x20;

{% embed url="https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl" %}

И после этого выполнить пункты 4, 5, 6.
