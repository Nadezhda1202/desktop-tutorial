# Установка Sherpa Robot Attended на Astra Linux

Для установки необходимы права sudo

&#x20;

Если робот уже установлен, то перейдите к разделу «Скачивание и распаковка робота» для его обновления.

&#x20;

### Установка .NET Core 8

Общие инструкции по установке приведены на сайте Microsoft:

[https://docs.microsoft.com/ru-ru/dotnet/core/install/linux-debian](https://docs.microsoft.com/ru-ru/dotnet/core/install/linux-debian)

[https://docs.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.2](https://docs.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.2)

Выполняем в терминале:

wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

sudo dpkg -i packages-microsoft-prod.deb

rm packages-microsoft-prod.deb

sudo apt-get update

sudo apt-get install -y dotnet-sdk-8.0

sudo apt-get install -y powershell

&#x20;

### Для работы эмуляции клавиатуры и мышки нужно установить библиотеку libgdiplus

Выполняем в терминале:

sudo apt install libgdiplus

&#x20;

Если Вы получили сообщение, что пакет не найден, то необходимо добавить репозиторий.

Это можно сделать в программе "Менеджер пакетов Synaptic".

deb https://dl.astralinux.ru/astra/frozen/2.12\_x86-64/2.12.45/repository stable main contrib non-free

&#x20;

### Для работы с tesseract устанавливаем его.

Выполняем в терминале:

sudo apt install tesseract-ocr-rus

&#x20;

### Для работы с питоном устанавливаем его.

Выполняем в терминале:

sudo apt-get install -y libpython3.7-dev

&#x20;

Если установка завершилась с ошибкой, то необходимо установить пакеты «Средства разработки». Это можно сделать в программе "Менеджер пакетов Synaptic".

&#x20;

### Скачивание и распаковка робота

Выполняем в терминале:

rm -f sherpa-robot.zip

&#x20;

wget https://sherparpa.ru/downloads/linux/get.php -O sherpa-robot.zip

&#x20;

unzip -o sherpa-robot.zip

&#x20;

&#x20;cd sherpa-robot && chmod +x Chrome/process-agent-host && chmod +x process-agent && chmod +x sherpa-assistant && cd ../

&#x20;

Внимание. Для обновления робота до последней версии можно ввести в терминале эту команду. В ней собраны все выше описанные команды:

&#x20;

rm -f sherpa-robot.zip && wget https://sherparpa.ru/downloads/linux/get.php -O sherpa-robot.zip && unzip -o sherpa-robot.zip && cd sherpa-robot && chmod +x Chrome/process-agent-host && chmod +x process-agent && chmod +x sherpa-assistant && cd ../

&#x20;

Запускаем Sherpa Assistant

./sherpa-robot/sherpa-assistant

&#x20;

Из менеджера файлов можно зайти в папку «sherpa-robot» и сделать ярлык на файл «sherpa-assistant»

### Для работы робота с Yandex Browser необходимо установить в него плагин.

1\) Открываем браузер. Идем в раздел "Дополнения".

2\) Идем в папку с установленным роботом (/home/user/sherpa-robot).  Переходим в папку Chrome (/home/user/sherpa-robot/Chrome).

3\) Перетаскиваем файл plugin.crx в окно браузера. Добавляем расширение. Закрываем браузер.

4\) Запускаем окно терминала в текущей папке. Выполняем:

chmod +x install\_host.sh

./install\_host.sh

5\) Запускаем браузер. Если значок плагина Sherpa RPA стал синим, значит плагин успешно установлен.

Так же плагин можно установить с сайта https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl

И после этого выполнить пункты 3, 4, 5
