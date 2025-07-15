# Установка Sherpa RPA на Astra Linux

## 1. Установка .NET 8.0 <a href="#docs-internal-guid-f9793f2b-7fff-a245-1b5d-b6830db76dae" id="docs-internal-guid-f9793f2b-7fff-a245-1b5d-b6830db76dae"></a>

* Загрузите скрипт установки:

`wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh`

* Сделайте скрипт исполняемым:

`chmod +x dotnet-install.sh`

* Запустите установку .NET 8.0:

`./dotnet-install.sh --channel 8.0`

Появится сообщение: “Installation finished successfully”.

## 2. Настройка переменных окружения

Далее необходимо добавить переменные `DOTNET_ROOT` и обновить `PATH`.

* Войдите как Пользователь с root‑правами: `su` ;
* Откройте файл \`/etc/profile\`: `mcedit /etc/profile` ;
* Перед строкой \``[ -n "$PATH" ]` ...\` добавьте следующие строки:

`[ -n "$DOTNET_ROOT" ] || DOTNET_ROOT="$HOME/.dotnet"`

`export DOTNET_ROOT`

`PATH="$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools"`

`export PATH`

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcz3l4QACRjLcavieJcPW31ALdm6wWV1og5iERUFO0ayeiNYRWsI_rBkZ20UjZbAPrSY2KL_yEMh9gYCsoOvLzxwBf-LPThV-uimTLdTqmqvbDonq4WhYo1D-QFIJItQc8r3QMf-g?key=_oVS3d47PkNC9idSJKbD8g" alt=""><figcaption></figcaption></figure>

* Перезагрузитесь: `reboot`

## 3. Установка или обновление Sherpa RPA

* Скачайте и сделайте исполняемым файл:

`rm -f SherpaRPA && wget https://sherparpa.ru/downloads/linux/SherpaRPA.php -O SherpaRPA && chmod +x SherpaRPA && ./SherpaRPA` ;

* В окне “Установка Sherpa RPA” нажмите на кнопку “Дальше”;
* При необходимости выберите папку установки через нажатие на кнопку “Обзор”, затем нажмите на кнопку “Дальше”;
* Дождитесь окончания установки и нажмите на кнопку “Запустить”.

## 4. Создание ярлыков

Поскольку автоматическая установка не поддерживается вашей ОС, необходимо создать ярлыки вручную:

* Для Sherpa Designer:

`/home/user/.config/sherpa-rpa/sherpa-designer/diagram-designer`

* Для Sherpa Assistant:

`/home/user/.config/sherpa-rpa/sherpa-robot/sherpa-assistant`
