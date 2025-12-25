# Установка Sherpa Coordinator на ОС Astra Linux

> Для установки необходимы права sudo

Если программа уже установлена, то перейдите к разделу [Скачивание и распаковка](ustanovka-sherpa-coordinator-na-os-astra-linux.md#skachivanie-i-raspakovka-koordinatora) для ее обновления.&#x20;

## Установка .NET Core 8 и Powershell

Общие инструкции по установке приведены на сайте Microsoft:

{% embed url="https://docs.microsoft.com/ru-ru/dotnet/core/install/linux-debian" %}

{% embed url="https://docs.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.2" %}

**Выполните в терминале:**

* Загрузите файл конфигурации:

```
wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
```

* Установите загруженный пакет:

```
sudo dpkg -i packages-microsoft-prod.deb
```

* Удалите временный файл:

```
rm packages-microsoft-prod.deb
```

* Обновите список пакетов:

```
sudo apt-get update
```

* Установите .NET SDK 8.0:

```
sudo apt-get install -y dotnet-sdk-8.0
```

* Установите PowerShell:

```
sudo apt-get install -y powershell
```

## Установка программы xfreerdp

Чтобы Координатор смог создавать удаленные подключения к Unattended-роботам необходимо установить программу xfreerdp. Для этого необходимо выполнить команду:

```
sudo apt-get install freerdp2-x11
```

## Скачивание и распаковка Координатора

Для скачивания и распаковки Координатора необходимо выполнить ряд команд.

**Выполните в терминале:**

* Удалите файл sherpa-coordinator.zip:

```
rm -f sherpa-coordinator.zip
```

* &#x20;Загрузите файл sherpa-coordinator.zip:

```
wget https://sherparpa.ru/downloads/linux/get-coordinator.php -O sherpa-coordinator.zip
```

* &#x20;Распакуйте ZIP-архив:

```
sudo unzip -o sherpa-coordinator.zip -d /usr/lib
```

* Дайте права на исполнение для файла sherpa-coordinator:

```
sudo chmod a+x /usr/lib/sherpa-coordinator/sherpa-coordinator
```

> Для установки или обновления Координатора до последней версии можно ввести в терминале эту команду. В ней собраны все выше описанные команды: `rm -f sherpa-coordinator.zip && wget https://sherparpa.ru/downloads/linux/get-coordinator.php -O sherpa-coordinator.zip && sudo unzip -o sherpa-coordinator.zip -d /usr/lib && sudo chmod a+x /usr/lib/sherpa-coordinator/sherpa-coordinator`

## Первичная настройка

Для автоматического запуска Координатора необходимо создать Пользователя и включить у него автоматический вход в систему.

* Создайте нового Пользователя с именем sherpacoordinator;
* Запустите центр управления. Для этого введите команду:&#x20;

```
sudo fly-admin-center
```

* Зайдите в "Безопасность" → "Политика безопасности" или выберите в меню "Пуск" → "Системные" → "Политика безопасности".&#x20;
*   **Выполните в терминале:**

    * Добавьте Пользователя sherpacoordinator в группу sudo:

    `sudo usermod -aG sudo sherpacoordinator`

    * Добавьте Пользователя sherpacoordinator в группу astra-admin:

    `sudo usermod -aG astra-admin sherpacoordinator`
*   Включите автозапуск у вновь созданной учетной записи. Запустите центр управления командой:&#x20;

    `sudo fly-admin-center`

    Или же выберите пункт меню "Пуск" → "Панель управления" → раздел "Система" → "Вход в систему".
* На вкладке "Дополнительно" включите опцию "Разрешить автоматический вход в систему" и выберите созданного ранее Пользователя.
* Перезагрузите сервер.

## Настройка Координатора

Настройка производится в созданной ранее учетной записи:

* Создайте ярлык на автозагрузку Координатора,
* Укажите сервер Оркестратора,
* Укажите GUID Координатора в настройках сервера Оркестратора.
*   **Выполните в терминале:**

    * Измените права файла sherpa-coordinator:

    `sudo chmod a+x /usr/lib/sherpa-coordinator/sherpa-coordinator`

    * Запустите файл sherpa-coordinator:

    `/usr/lib/sherpa-coordinator/sherpa-coordinator`

После первого запуска появится сообщение об ошибке. Необходимо указать настройки.

*   **Выполните в терминале:**

    * Откройте файл setting.ini в редакторе kate для редактирования настроек, связанных с конфигурацией Координатора:

    `kate /home/sherpacoordinator/.config/sherpa-rpa-data/coordinator/setting.ini`
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
