# Установка Sherpa Coordinator на RedOS

**Важно!** _Для установки робота необходимо обладать правами sudo._&#x20;

[Ссылки на дистрибутивы можно найти здесь.](../../../ssylki-na-distributivy/distributivy-sherpa-rpa-linux.md)

Если программа уже установлена, то перейдите к разделу [“Скачивание и распаковка Координатора” ](ustanovka-sherpa-coordinator-na-redos.md#skachivanie-i-raspakovka-koordinatora)для ее обновления.

## Установка .NET Core 8 и Powershell

Общие инструкции по установке приведены на сайте Microsoft:

[https://learn.microsoft.com/ru-ru/dotnet/core/install/linux-fedora](https://learn.microsoft.com/ru-ru/dotnet/core/install/linux-fedora)

[https://learn.microsoft.com/en-us/powershell/scripting/install/install-rhel?view=powershell-7.2](https://learn.microsoft.com/en-us/powershell/scripting/install/install-rhel?view=powershell-7.2)

Для установки .NET Core 8 нажмите “Пуск”, выберите пункт “Системные”, а затем – “Терминал Fly”.&#x20;

Далее в терминале необходимо выполнить следующие команды: (для этого скопируйте поочередно скопируйте команды, вставьте в окно терминала и нажмите Enter):

`sudo dnf install -y dotnet-sdk-8.0`

`sudo dnf install https://github.com/PowerShell/PowerShell/releases/download/v7.4.2/powershell-7.4.2-1.rh.x86_64.rpm`

## Установка xfreerdp

Для того, чтобы Координатор мог создавать удаленные подключения к Unattended роботам необходимо установить программу xfreerdp. Для установки выполните в терминале следующую команду:

`sudo dnf install freerdp2`

## Скачивание и распаковка Координатора

Выполните последовательно следующие команды:

`rm -f sherpa-coordinator.zip`

`wget https://sherparpa.ru/downloads/linux/get-coordinator.php -O sherpa-coordinator.zip`

`sudo unzip -o sherpa-coordinator.zip -d /usr/lib`

`sudo chmod a+x /usr/lib/sherpa-coordinator/sherpa-coordinator`

Также для установки или обновления Координатора до последней версии можно ввести терминале следующую команду (в ней собраны все вышеописанные команды):

`rm -f sherpa-coordinator.zip && wget https://sherparpa.ru/downloads/linux/get-coordinator.php -O sherpa-coordinator.zip && sudo unzip -o sherpa-coordinator.zip -d /usr/lib && sudo chmod a+x /usr/lib/sherpa-coordinator/sherpa-coordinator`

### Первичная настройка Координатора

Для автоматического запуска координатора необходимо создать пользователя и включить у него автоматический вход в систему.

1. Создание нового пользователя&#x20;

Для удобства рекомендуется создать пользователя с именем “sherpacoordinator”.

Чтобы создать нового пользователя необходимо зайти в “Центр управления”, а затем – “Управление пользователями”.&#x20;

Затем выполните в терминале следующие команды:

`sudo usermod -aG wheel sherpacoordinator`

2. Включение автозапуска для созданного пользователя

Отредактируйте файл `/etc/gdm/custom.conf` с помощью команды:

`sudo mcedit /etc/gdm/custom.conf`

`[daemon]`

`WaylandEnable=false`

`TimedLoginEnable = true`

`TimedLogin = sherpacoordinator`

`TimedLoginDelay = 10`

Затем перезагрузите сервер.&#x20;

### Настройка Координатора

Настройка производится в созданной ранее учетной записи пользователя “sherpacoordinator”. После того, как вход в систему был осуществлен под ранее созданной учетной записью пользователя необходимо создать ярлык для автозагрузки Координатора и указать сервер Оркестратора и GUID координатора в его настройках. Для этого выполните в терминале следующие команды:

`sudo chmod a+x /usr/lib/sherpa-coordinator/sherpa-coordinator`

`/usr/lib/sherpa-coordinator/sherpa-coordinator`

После первого запуска в окне терминала появится сообщение об ошибке. Необходимо указать настройки. Для указания настроек выполните в терминале команду:

`mcedit /home/sherpacoordinator/.config/sherpa-rpa-data/coordinator/setting.ini`

Затем, в открывшемся окне настроек укажите:

* OrchestratorServer - сервер Оркестратора;
* OrchestratorRobotGuid - GUID Координатора из Оркестратора.

При необходимости укажите дополнительные настройки:

* OrchestratorTimeout – время подключения к Оркестратору;
* TimeResetHungSessions – время в минутах по истечении которого координатор будет прерывать «зависшие» сессии;
* DesktopWidth – ширина создаваемого RDP-окна;
* DesktopHeight – высота создаваемого RDP-окна.

Закройте окно и сохраните настройки.

Далее необходимо скопировать ярлык из папки установки координатора в папку автозагрузки текущего пользователя, для этого выполните следующие команды:

`mkdir $HOME/.config/autostart`

`cp -f /usr/lib/sherpa-coordinator/sherpa-coordinator.desktop $HOME/.config/autostart`

Перезагрузите сервер. Теперь в Оркестраторе статус Координатора должен быть “Готов”.
