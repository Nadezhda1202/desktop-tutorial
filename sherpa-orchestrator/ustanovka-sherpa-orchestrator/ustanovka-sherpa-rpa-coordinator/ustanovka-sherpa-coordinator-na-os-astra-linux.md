# Установка Sherpa Coordinator на ОС Astra Linux

**Важно!** _Для установки робота необходимо обладать правами sudo._&#x20;

[Ссылки на дистрибутивы можно найти здесь.](../../../ssylki-na-distributivy/distributivy-sherpa-rpa-linux.md)

Если программа уже установлена, то перейдите к разделу [“Скачивание и распаковка Координатора”](ustanovka-sherpa-coordinator-na-os-astra-linux.md#skachivanie-i-raspakovka-koordinatora) для ее обновления.

## Установка .NET Core 8 и Powershell

Общие инструкции по установке приведены на сайте Microsoft:

[https://docs.microsoft.com/ru-ru/dotnet/core/install/linux-debian](https://docs.microsoft.com/ru-ru/dotnet/core/install/linux-debian)

[https://docs.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.2](https://docs.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.2)

Для установки .NET Core 8 нажмите “Пуск”, выберите пункт “Системные”, а затем – “Терминал Fly”.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXew-AtpEWXYUQmQevOP4Ii_LWKtsQ9-ZlDq2lod0Ve5TaYW8d5vxHJ6qYXLSwwvk-fBAwCVv2Q2oXYVdd-seQVhwUaWgnszcWBxJltOqLfIWyMeg_93oTwuLnbypiRuQVc_x-q2szayDMx67nqPwrlSSBgL?key=nlgkY3mhJI-1P6fWzuQXlw" alt=""><figcaption></figcaption></figure>

Далее в терминале необходимо выполнить следующие команды: (для этого скопируйте поочередно скопируйте команды, вставьте в окно терминала и нажмите Enter):

`wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb`

`sudo dpkg -i packages-microsoft-prod.deb`

`rm packages-microsoft-prod.deb`

`sudo apt-get update`

`sudo apt-get install -y dotnet-sdk-8.0`

`sudo apt-get install -y powershell`

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfiaXTIXCSVaRScpy-STAcgQhd0_f5qK9VgJvDvyyqpjpscqbddih_Did89SwTln6nIJyJHiUmSkdunLjeWCODqhAQ_0iX0POmwK7-W3KTNhveIK41gdIDOE_xb2_OEmceUCShT1_Q6WEeho5Sk3XvgSkRD?key=nlgkY3mhJI-1P6fWzuQXlw" alt=""><figcaption></figcaption></figure>

## Установка xfreerdp

Для того, чтобы Координатор мог создавать удаленные подключения к Unattended роботам необходимо установить программу xfreerdp. Для установки выполните в терминале следующую команду:

`sudo apt-get install freerdp2-x11`

## Скачивание и распаковка Координатора

Выполните последовательно следующие команды:

rm -f sherpa-coordinator.zip

wget https://sherparpa.ru/downloads/linux/get-coordinator.php -O sherpa-coordinator.zip

sudo unzip -o sherpa-coordinator.zip -d /usr/lib

sudo chmod a+x /usr/lib/sherpa-coordinator/sherpa-coordinator

Также для установки или обновления Координатора до последней версии можно ввести терминале следующую команду (в ней собраны все вышеописанные команды):

rm -f sherpa-coordinator.zip && wget https://sherparpa.ru/downloads/linux/get-coordinator.php -O sherpa-coordinator.zip && sudo unzip -o sherpa-coordinator.zip -d /usr/lib && sudo chmod a+x /usr/lib/sherpa-coordinator/sherpa-coordinator

### Первичная настройка Координатора

Для автоматического запуска координатора необходимо создать пользователя и включить у него автоматический вход в систему.

1. Создание нового пользователя&#x20;

Для удобства рекомендуется создать пользователя с именем “sherpacoordinator”.

Чтобы создать нового пользователя необходимо открыть окно “Управление политикой безопасности”. Нажмите “Пуск”, выберите пункт “Системные”, а затем – “Политика безопасности”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfHQrxmNOf4NW9OAc3vx4w0nWMD7PBrkRWte6Cdq5wB9QFvqr2C4FLxexFbZ39EK6aSHqCuCY6oChwSds6U85mzlo1RO74QpfORGHoccDdcLVb3Ly1OyirwDLpqOeXMztyiPQG9hBNSsB1csQrMcR-RMN0?key=nlgkY3mhJI-1P6fWzuQXlw" alt=""><figcaption></figcaption></figure>

Далее выберите пункт “Пользователи” и с помощью кнопки ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcvvXvaNVMUzUAipGhA7ILBnSvf-3iwT1gBJQadgIRaIRyObqvKcOgaHMzaZnmAzn9r18Jd1ytRPuUvXFhGx4w5LkDfXRhECVk0iiX3FIcynXQMlzra2EqzKa2miLVdFACXjSnPbUHrCYCZaOY7YQqARNLY?key=nlgkY3mhJI-1P6fWzuQXlw) добавьте пользователя.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdB-ox4KzsV8OqvwhZi6LWiePeW6uLbFTK2cYL-jWMwPuHTQPy0ou_uo4c8yztHjnJmMBfeu8cg9MjNiqg2naY7rFsEOahj7hiT7FY4vOvr4WvFthnCa5ui9iJEwqiH_Ply_9fFGAUzEVdqMNANYM83KQZt?key=nlgkY3mhJI-1P6fWzuQXlw" alt=""><figcaption></figcaption></figure>

После нажатия кнопки ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcvvXvaNVMUzUAipGhA7ILBnSvf-3iwT1gBJQadgIRaIRyObqvKcOgaHMzaZnmAzn9r18Jd1ytRPuUvXFhGx4w5LkDfXRhECVk0iiX3FIcynXQMlzra2EqzKa2miLVdFACXjSnPbUHrCYCZaOY7YQqARNLY?key=nlgkY3mhJI-1P6fWzuQXlw) задайте в появившейся форме  имя нового пользователя, нажмите ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdore8AVXz2yKN2W_yCLnq2ZHxriUOgLCHTeUyA9JnQu8SmEFvBrUUv8Lz64_MdhyGx-n8y_3-2doqBN2BuYMt_SkXDaJZudUDrFCnK7LwVLFWUqDsHZ5YN2SHUoS6KJVJ9hYdqbcFcbMNzglUVyyLtIadV?key=nlgkY3mhJI-1P6fWzuQXlw)

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeo-wSZipjrqCbYvTlpgL1fVPidSfXyFrxWw4CuwfHGkznKGUJ7IKqx51-ImoD73RqwRHDSTrKzTuez_fn6mupKyCTkgHjXFndxB7K5cIYVD1qtju8zIRqmGtWuOjUjbVQCCX8exiu0uoSCdxRFTuqLPUg?key=nlgkY3mhJI-1P6fWzuQXlw" alt=""><figcaption></figcaption></figure>

Затем задайте пароль для нового пользователя в появившемся окне.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfk8EkxhGEJvw-mogx80UefxaKMVTDn1rMrDjzanr0w0RVt9ibXmHKw7UXMxlJm38l3_iMzW54CWgy4V7o5fljFnXnl7SCO5C2GhFclxVZq8xLL3gUGW25ATlqZDsWmf0V51lLu1hzSqOQthJG8nmrMXA4C?key=nlgkY3mhJI-1P6fWzuQXlw" alt=""><figcaption></figcaption></figure>

Также попасть в окно “Управление политикой безопасности” для создания нового пользователя можно с помощью выполнения в терминале команды sudo fly-admin-center, которая откроет “Панель управления”.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeCWBHnTBb5BN5-2pzuTMNdI240wD72XAYcrHl3Tx7yVmMT1DBLSX9C6vZzaiMNdDlqQpxubraAan1PDGZP4ywwvF7ZrUJvGyqHojX4kktbXWK8oVDTsDyo-5GmNXnZZQ167AVXaerpm8ce-arWGGRwmAzC?key=nlgkY3mhJI-1P6fWzuQXlw" alt=""><figcaption></figcaption></figure>

Выберите в панели управления выберите пункт “Безопасность”, затем “Политика безопасности” и создайте новых пользователей, как это было описано выше.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcq-_gQiBe77BOIzyd752sTEdeKZs9l0KEwpRi5FRp9kBzZ-N4UuwkPxYAT6IyPLptHwGW1Ak5ClouvOJGLTq0QXuHN_MVTvyBdlFqgk2JqvY-b0iFhVTaDoFWAHllkhz-YJNhn2PsL-XV6QCWR8yS4xDqJ?key=nlgkY3mhJI-1P6fWzuQXlw" alt=""><figcaption></figcaption></figure>

Затем выполните в терминале следующие команды:

`sudo usermod -aG sudo sherpacoordinator`

`sudo usermod -aG astra-admin sherpacoordinator`

2. Включение автозапуска для созданного пользователя&#x20;

С помощью команды `sudo fly-admin-center` откройте “Панель управления”. Выберите пункт “Система”, затем “Вход в систему”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdHPgNKbQIN77MJ_MRbreYjTYmze9F4mT3DdqL6yTW4MxYfFOjleWugCfvoKCqiVd1hyJvzdgQArHOBGTCqptLTcYiasEjufOlaymFaIlfAtZsNGXDmiExvvxThLjVxPmgX5C9c3v47jXkjq5wY0SCgOXFS?key=nlgkY3mhJI-1P6fWzuQXlw" alt=""><figcaption></figcaption></figure>

В открывшемся окне выберите вкладку “Дополнительно”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe4dj8ZOpAcxud0ZRhkij7jtp1segJ9VVU323Pa_LIvlhFgIwKPiXYbKMrovAHCXR1qYayXUmnxB__wm9JsX8poff7JKUofpSHikkrFruviTCSKREiCz-gOA6ArnW-teJdryuotF04GStOliFzlgbHSfR3h?key=nlgkY3mhJI-1P6fWzuQXlw" alt=""><figcaption></figcaption></figure>

Затем установите флаг “Разрешить автоматический вход в систему”, если он не установлен, в выпадающем списке “Пользователь” выберите созданного ранее пользователя “sherpacoordinator”,а также установите флаг “Автоматический вход в систему после сбоя X-сервера”. Нажмите кнопку “Да” и перезагрузите сервер. После перезагрузки вход будет осуществлен под пользователем “sherpacoordinator”.

### Настройка Координатора

Настройка производится в созданной ранее учетной записи пользователя “sherpacoordinator”. После того, как вход в систему был осуществлен под ранее созданной учетной записью пользователя необходимо создать ярлык для автозагрузки Координатора и указать сервер Оркестратора и GUID координатора в его настройках. Для этого выполните в терминале следующие команды:

`sudo chmod a+x /usr/lib/sherpa-coordinator/sherpa-coordinator`

`/usr/lib/sherpa-coordinator/sherpa-coordinator`

После первого запуска в окне терминала появится сообщение об ошибке. Необходимо указать настройки. Для указания настроек выполните в терминале команду:

`kate /home/sherpacoordinator/.config/sherpa-rpa-data/coordinator/setting.ini`

Затем, в открывшемся окне настроек укажите:

* OrchestratorServer - сервер Оркестратора;
* OrchestratorRobotGuid - GUID координатора из оркестратора.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc6vaPtSTFIpBnVUV3FteUf_wMch84ToqjNQVWOPLshWuSwI7MdUYNEXD2MgHbyif8FqszgIi6cv9a6xqKBaS7Mg8jmsI98VmlkLwxiAB2gSaYFIfYhMQ4Vmtsoo3ko9i19DSvRXRVov34gublystdeYUw?key=nlgkY3mhJI-1P6fWzuQXlw" alt=""><figcaption></figcaption></figure>

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
