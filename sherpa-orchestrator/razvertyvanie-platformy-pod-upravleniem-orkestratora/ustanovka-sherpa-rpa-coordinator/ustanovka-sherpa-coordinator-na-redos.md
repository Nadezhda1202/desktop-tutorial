# Установка Sherpa Coordinator на RedOS

> Для установки необходимы права sudo

Если программа уже установлена, то перейдите к разделу [Скачивание и распаковка](ustanovka-sherpa-coordinator-na-redos.md#skachivanie-i-raspakovka-koordinatora) для ее обновления.

## Установка .NET Core 8 и Powershell

Общие инструкции по установке приведены на сайте Microsoft:

{% embed url="https://learn.microsoft.com/ru-ru/dotnet/core/install/linux-fedora" %}

{% embed url="https://learn.microsoft.com/en-us/powershell/scripting/install/install-rhel?view=powershell-7.2" %}

**Выполните в терминале:**

* Установите SDK .NET 8.0:

```
sudo dnf install -y dotnet-sdk-8.0
```

* Установите PowerShell

```
sudo dnf install https://github.com/PowerShell/PowerShell/releases/download/v7.4.2/powershell-7.4.2-1.rh.x86_64.rpm
```

## Установка программы xfreerdp

Чтобы Координатор смог создавать удаленные подключения к Unattended-роботам необходимо установить программу xfreerdp. Для этого необходимо выполнить команду:

```
sudo dnf install freerdp2
```

## Скачивание и распаковка Координатора

Для скачивания и распаковки Координатора необходимо выполнить ряд команд.

**Выполните в терминале:**

* Удалите файл sherpa-coordinator.zip:

```
rm -f sherpa-coordinator.zip
```

* Загрузите файл sherpa-coordinator.zip:

```
wget https://sherparpa.ru/downloads/linux/get-coordinator.php -O sherpa-coordinator.zip
```

* Распакуйте ZIP-архив:

```
sudo unzip -o sherpa-coordinator.zip -d /usr/lib
```

* Дайте права на исполнение для файла sherpa-coordinator:

```
sudo chmod a+x /usr/lib/sherpa-coordinator/sherpa-coordinator
```

> Для установки или обновления Координатора до последней версии можно ввести в терминале эту команду. В ней собраны все выше описанные команды: `rm -f sherpa-coordinator.zip && wget https://sherparpa.ru/downloads/linux/get-coordinator.php -O sherpa-coordinator.zip && sudo unzip -o sherpa-coordinator.zip -d /usr/lib && sudo chmod a+x /usr/lib/sherpa-coordinator/sherpa-coordinator`

## Первичная настройка

Для автоматического запуска координатора необходимо создать пользователя и включить у него автоматический вход в систему.

Для автоматического запуска Координатора необходимо создать Пользователя и включить у него автоматический вход в систему.

* Создайте нового Пользователя с именем sherpacoordinator;
* Зайдите в "Центр управления" → "Управление пользователями".
* "Пуск" → "Системные" → "Политика безопасности".&#x20;
*   **Выполните в терминале:**

    * Добавьте Пользователя sherpacoordinator в группу wheel:

    `sudo usermod -aG wheel sherpacoordinator`
*   Включите автозапуск у вновь созданной учетной записи.&#x20;

    * Отредактируйте файл /etc/gdm/custom.conf:

    `sudo mcedit /etc/gdm/custom.conf`

    * Внесите настройки в custom.conf

    `[daemon]`

    `WaylandEnable=false`

    `TimedLoginEnable = true`

    `TimedLogin = sherpacoordinator`

    `TimedLoginDelay = 10`
* Перезагрузите сервер.

## Настройка Координатора

Настройка производится в созданной ранее учетной записи:

* Создайте ярлык на автозагрузку Координатора,
* Укажите сервер Оркестратора,
* Укажите GUID Координатора в настройках сервера Координатора.

**Выполните в терминале:**

* Измените права файла sherpa-coordinator:

`sudo chmod a+x /usr/lib/sherpa-coordinator/sherpa-coordinator`

* Запустите файл sherpa-coordinator:

`/usr/lib/sherpa-coordinator/sherpa-coordinator`

После первого запуска появится сообщение об ошибке. Необходимо указать настройки.

*   **Выполните в терминале:**

    * Откройте файл `setting.ini` в редакторе `mcedit`, для редактирования настроек:

    `mcedit /home/sherpacoordinator/.config/sherpa-rpa-data/coordinator/setting.ini`
* Укажите сервер Оркестратора:
  * `OrchestratorServer` — сервер Оркестратора;
  * `OrchestratorRobotGuid` — GUID Координатора из Оркестратора.
* При необходимости можно изменить другие настройки:
  * `OrchestratorTimeout` – время подключения к Оркестратору;
  * `TimeResetHungSessions` – время в минутах по истечении которого Координатор будет прерывать зависшие сессии;
  * `DesktopWidth` – ширина создаваемого RDP окна;
  * `DesktopHeight` – высота создаваемого RDP окна.
* Сохраните настройки.
*   **Выполните в терминале:**

    * Создайте директорию autostart в папке конфигурации Пользователя:

    `mkdir $HOME/.config/autostart`

    * Скопируйте файл в папку автозагрузки текущего Пользователя:

    `cp -f /usr/lib/sherpa-coordinator/sherpa-coordinator.desktop $HOME/.config/autostart`
* Перезагрузите сервер и после этого в Оркестраторе статус Координатора должен стать "Готов".
