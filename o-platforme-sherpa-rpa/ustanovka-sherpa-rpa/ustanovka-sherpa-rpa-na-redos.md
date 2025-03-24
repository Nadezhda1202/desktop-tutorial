# Установка Sherpa RPA на RedOS

Перед установкой программных продуктов платформы Sherpa RPA ознакомьтесь с [системными требованиями к компьютеру](../#sistemnye-trebovaniya-dlya-sherpa-rpa-dlya-linux).

**Важно!** _Для установки необходимы права sudo._

[Ссылки на дистрибутивы можно найти здесь.](../../ssylki-na-distributivy/distributivy-sherpa-rpa-linux.md)

## **Установка .NET Core 8**

Установите .NET Core 8. Общие инструкции по установке приведены на сайте Microsoft:

[https://docs.microsoft.com/ru-ru/dotnet/core/install/linux-debian\
](https://docs.microsoft.com/ru-ru/dotnet/core/install/linux-debian)

[https://docs.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.2](https://docs.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.2)

Выполните в терминале следующие команды (для этого поочередно скопируйте команды, вставьте в окно терминала и нажмите Enter):

`wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb`

`sudo dpkg -i packages-microsoft-prod.deb`

`rm packages-microsoft-prod.deb`

`sudo apt-get update`

`sudo apt-get install -y dotnet-sdk-8.0`

`sudo apt-get install -y powershell`

## **Установка библиотеки libgdiplus**

Для работы эмуляции клавиатуры и мышки необходимо установить библиотеку libgdiplus, для этого выполните в терминале команду:

`sudo apt install libgdiplus`

**Примечание:** _если Вы получили сообщение, что пакет не найден, то необходимо добавить репозиторий. Это можно сделать в программе "Менеджер пакетов Synaptic"._

`deb https://dl.astralinux.ru/astra/frozen/2.12_x86-64/2.12.45/repository stable main contrib non-free`

## **Установка Tesseract**

Для работы с Tesseract выполните в терминале следующую команду:\
`sudo apt install tesseract-ocr-rus`

## **Установка Python**

Для работы с Python выполните в терминале команду:

`sudo apt-get install -y libpython3.7-dev`

**Примечание:** _если установка завершилась с ошибкой, то необходимо установить пакеты «Средства разработки». Это можно сделать в программе "Менеджер пакетов Synaptic"._

## **Установка плагина в Yandex Browser**

Для работы робота с Yandex Browser необходимо установить в него плагин.

1. Откройте браузер и зайдите в раздел “Дополнения”.&#x20;
2. Затем запустите менеджер файлов и откройте папку с установленным роботом (`/home/user/sherpa-robot`) и перейдите в папку Chrome (`/home/user/sherpa-robot/Chrome`).&#x20;
3. Перетащите файл “plugin.crx” в окно Yandex Browser.
4. Запустите окно терминала в текущей папке и выполните следующие команды:

`chmod +x install_host.sh`

`./install_host.sh`

5. Запустите браузер. Если значок плагина Sherpa RPA стал синим, значит плагин успешно установлен.

**Примечание:** _также плагин можно установить с сайта: https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl И после этого выполнить пункты 3, 4, 5._

## **Установка плагина в Chromium**

1. Перейдите по ссылке: [https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl ](https://chrome.google.com/webstore/detail/sherpa-rpa/bdnlfnchnkjeempadnmcgbbkbacffobl) и установите плагин.
2. Перейдите в папку:  `/home/user/sherpa-robot/Chrome`
3. Запустите окно терминала в текущей папке и выполните в нем следующие команды:

`chmod +x install_host.sh`

`./install_host.sh`

`cp -f $HOME/.config/google-chrome/NativeMessagingHosts/processagent.sherparpa.json $HOME/.config/chromium/NativeMessagingHosts`

4. Запустите браузер. Если значок плагина Sherpa RPA стал синим, значит плагин успешно установлен.

## Скачивание и запуск установщика

Перед запуском необходимо удалить старую версию установщика, выполнив следующую команду:

`rm -f SherpaRPA`

Скачайте последнюю версию установщика, с помощью команды:&#x20;

`wget https://sherparpa.ru/downloads/linux/SherpaRPA.php -O SherpaRPA`

Выставите у файла флаг Выполнения, используя команду:

`chmod +x SherpaRPA`

Запустите установщик, выполнив команду:

`./SherpaRPA`

**Важно!** _Для скачивания и запуска установщика можно ввести в терминале эту строку. В ней собраны все выше описанные команды:_

`rm -f SherpaRPA && wget https://sherparpa.ru/downloads/linux/SherpaRPA.php -O SherpaRPA && chmod +x SherpaRPA && ./SherpaRPA`

Для установки Sherpa RPA следуйте представленной ниже инструкции.

1. Если робот был установлен ранее, то Вы увидите следующее окно.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdy-sfFg__Cb9J_-mmsxjb7yGgs_qbjKwZ6tfwfOU-zWrv_gmveC8G8QYH8kEoSrTIX9GNY360E2Ta4XRJCi97iuZDIOaCqNlx-mqKUhYDGBl3rArVtQm2_ZZ4BSHi-iruj2V9xz8L1CskqsF2rUgWhnviJ5GvYGmgw8eWJPOzj-o4T_Qtjq-o?key=fPVFKdZriH3vWzTKcLpk-wYl" alt=""><figcaption></figcaption></figure>

Вы можете выбрать пункт "Установить" для обновления робота или пункт "Удалить" для его удаления.

2. Если установка происходит впервые или в предыдущем окне Вы выбрали "Установить", то появится следующее окно:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf0L_WqvhWKTFC_qkDzTpX577kpn3RuFaLSwOxnUkzwjq5oMVKyDkqjBT2x6puviql70lgYMMNeGog-UgBLHyYODIznD2qihCaqEfPFm6WN2i207JgrNy90F0GdaxpX0_SwNOKbZROqYpE6W2VEerYA2g6h1ier04P3gIUyVHRyVkIQqql-3yM?key=fPVFKdZriH3vWzTKcLpk-wYl" alt=""><figcaption></figcaption></figure>

Вы можете выбрать установку ярлыка на рабочий стол, а также создать папку в меню "Пуск", а также установить робот для текущего пользователя или для всех пользователей, затем нажмите кнопку "Дальше".

3. В следующем окне необходимо выбрать папку для установки робота и нажать кнопку "Дальше".

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc3G44soeJxdnN-1mFn4n6KQTF4YiZAqT8OA8dT75LD9orCBHUaSNt5EBXVGLUt3v0YWo4VrzwGxRkhpl5yaVMjniwv6EOqAytSBknv9yzuL2v-egKPPwbUdSOiknP6sN315H0rTxID7AWMSmTFzyP4FAuzxtOJkjNn2kxkmqPOQ0KBqbftyww?key=fPVFKdZriH3vWzTKcLpk-wYl" alt=""><figcaption></figcaption></figure>

4. В следующем окне будет производится установка.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc0RJYZjoJ5R1FpA-glOUS61F_E2sqfCxDYE0NjR2KOz84YZOukwIodijXqIjeDr1JN7BVzliIgwidrN7aG82lz-tUW0QI3mWsXWnm248JvAqMNtiQtAqUntpAXwuDcxDFMKXMUF6qWj549-FNB2ZADkXmsr9_fTfxRVmjZMlJKyIEbDYr1Hgs?key=fPVFKdZriH3vWzTKcLpk-wYl" alt=""><figcaption></figcaption></figure>

5. По окончании установки, появится окно, в котором Вы можете сразу запустить Sherpa Designer, нажав кнопку "Запустить".

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf22xRnH7gwCdYoWI87gcio8PXQ1_YUP6xjsQUQhz1POE5LfSUXDBeKPu8RIGh1TTqecwT2wEt_OsdJ5au6uqbOeHNRvPnQIP0tmjowhGCh1it5YWjShOG9zSfl2RNNmjwJXE2_G3yrBsGMfxXWIjwha9SyD_mvKX9hNyw6RBzFigEFyAmgwQw?key=fPVFKdZriH3vWzTKcLpk-wYl" alt=""><figcaption></figcaption></figure>
