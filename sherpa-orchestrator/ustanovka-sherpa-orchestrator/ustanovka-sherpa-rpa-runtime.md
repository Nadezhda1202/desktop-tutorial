# Установка Sherpa RPA Runtime

**Sherpa RPA Runtime** — это установщик Робота в учетную запись Пользователя для использования без Дизайнера. Sherpa RPA Runtime используется для развертывания на рабочих местах конечных Пользователей Attended-роботов, Unattended-роботов, а также агентов RDP и Citrix. При установке Sherpa RPA Runtime создаются некоторые задания для Windows, а также некоторые установки в реестр для работы RDP.

Установку программы осуществляет инсталлятор, запускаемый файлом «[SherpaRPARuntime.exe](https://sherparpa.ru/downloads/SherpaRPARuntime.exe)» или «[SherpaRPARuntime.msi](https://sherparpa.ru/downloads/SherpaRPARuntime.msi)» . Сохраните данный файл на компьютер и запустите его.&#x20;

В открывшемся диалоговом окне отметьте необходимые вам параметры установки:

* Режим Робота: “Attended” или “Unattended”;
* Установить для: “Текущего пользователя” или “Всех пользователей”.

Затем нажмите кнопку “Дальше”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXecR_oBYQ_0cVnZDwnenLnMEghFykVGgXR-Dg4SbRWc3AljfH-kW1ssDo9DLJsCQ3TPSil1wfxc0Nd3CvTvqq0vK0Hv8iW6R4-WX9X7YQcGXIjxi0HOL8ZV3rNx8gSu1UadEfw9ZKWVjUooS1uqBdfyS__J?key=UME-n1gaJ6MLFrKkgNPk0w" alt=""><figcaption></figcaption></figure>

После этого инсталлятор начнет установку программы, которая займет несколько минут.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf8VWf7hyU88FzWjR_AgoYqSJzKQmP40Pkjt2jPbgpVybwCNk_Jf50-EstIdK183LFIOavhFILVjJ4Ta1KSUgO1F_z2kxgOzH2GmDikB3jSxHcgZJpUPVfe9XOlGKkIoUlBKNRNambrgqxhmxdtsnH7mMjY?key=UME-n1gaJ6MLFrKkgNPk0w" alt=""><figcaption></figcaption></figure>

Когда установка будет завершена, инсталлятор проинформирует Вас с помощью диалогового окна. в котором можно нажать кнопку “Завершить”, чтобы завершить процесс установки.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeawGiuYYLHsqNPennWLMAhkHPAllQNrtUWyJuB6eawNCqNjkoDZ4lAn1t6JH6agcYeaQ8t6Jfqo-V12g_kCq7hbrBOkAa0k_-Ufb0upYK1_9GcTqfvAGZuekV9mCbJJOb1Rby4EQ54aGFUvWQN12ZiR1A?key=UME-n1gaJ6MLFrKkgNPk0w" alt=""><figcaption></figcaption></figure>

\
**Примечание:** _Sherpa RPA Runtime в режиме Attended может работать как для локального запуска Attended-роботов с использованием активированной Лицензии на рабочем месте, так и для удаленного запуска, работы через RDP-подключение из другого Attended или Unattended-робота, в этом случае Лицензия не нужна._

При установке Unattended-робота в планировщике заданий создается одна Задача с двумя Триггерами. На вход в систему и на удаленное подключение.&#x20;

<figure><img src="https://sherparpa.ru/wp-content/uploads/2023/11/image22-670w285h-3.png" alt=""><figcaption></figcaption></figure>

<figure><img src="https://sherparpa.ru/wp-content/uploads/2023/11/image30-493w274h-3.png" alt=""><figcaption></figcaption></figure>

<figure><img src="https://sherparpa.ru/wp-content/uploads/2023/11/image32-567w240h-3.png" alt=""><figcaption></figcaption></figure>

Когда Робот осуществляет процесс сам, он выполняет Задания и осуществляет Log off.&#x20;

При установке пакета msi и файла exe на рабочем столе появляется ярлык.

<figure><img src="https://sherparpa.ru/wp-content/uploads/2023/11/image23-249w136h-3.png" alt=""><figcaption></figcaption></figure>

При установке msi их можно рассылать по соответствующим машинам, при этом, чтобы указать у них сервер Оркестратора и идентификатор Робота, необходимо разослать или записать в реестр определенные записи групповыми политиками.

<figure><img src="https://sherparpa.ru/wp-content/uploads/2023/11/image16-642w249h-3.png" alt=""><figcaption></figcaption></figure>

Произвести запись: текущий сервер, папка SOFTWARE.

<figure><img src="https://sherparpa.ru/wp-content/uploads/2023/11/image175-328w157h-3.png" alt=""><figcaption></figcaption></figure>

Этот способ используется при рассылке msi.

В случае, простой установки запустить Робота можно с помощью ярлыка на рабочем столе. При появлении ярлыка в системном трее, необходимо правой кнопкой мыши выбрать Оркестратор и войти в него.&#x20;

<figure><img src="https://sherparpa.ru/wp-content/uploads/2023/11/image190-155w186h-3.png" alt=""><figcaption></figcaption></figure>

Далее ввести имя сервера и ID Робота, которого будет использоваться. Далее осуществляем подключение.

<figure><img src="https://sherparpa.ru/wp-content/uploads/2023/11/image179-262w179h-3.png" alt=""><figcaption></figcaption></figure>

На экране Роботы отображаются зеленые индикаторы напротив Координатора и Робота. Индикаторы сигнализируют о том, что Координатор запущен, а выбранный Робот подключен.

<figure><img src="https://sherparpa.ru/wp-content/uploads/2023/11/image173-642w165h-3.png" alt=""><figcaption></figcaption></figure>

В качестве примера создадим Работу на экране Работы. Выберем простую Работу, которая создает ошибку деления на ноль. В результате действий Робот должен запуститься, а в Сообщениях Робота должно прийти сообщение об ошибке.

В карточке Работы выбираем нужного Робота и текущий Процесс. Задачу в нашем примере можно выбрать любую, т.к. Робот ее не будет использовать.&#x20;

<figure><img src="https://sherparpa.ru/wp-content/uploads/2023/11/image171-613w299h-3.png" alt=""><figcaption></figcaption></figure>

В Диспетчере задач среди процессов мы увидим, что Робот запустил сессию.

<figure><img src="https://sherparpa.ru/wp-content/uploads/2023/11/image165-282w125h-3.png" alt=""><figcaption></figcaption></figure>

Далее закрыл ее.

<figure><img src="https://sherparpa.ru/wp-content/uploads/2023/11/image155-308w95h-3.png" alt=""><figcaption></figcaption></figure>

Работа была выполнена Роботом. В окне Сообщения Роботов Оркестратора мы видим, что пришло сообщение о том, что Робот запустился и выдал ошибку.

<figure><img src="https://sherparpa.ru/wp-content/uploads/2023/11/image176-595w153h-3.png" alt=""><figcaption></figcaption></figure>

Статус ошибка будет “Failed”.

<figure><img src="https://sherparpa.ru/wp-content/uploads/2023/11/image163-659w119h-3.png" alt=""><figcaption></figcaption></figure>

Таким образом происходит установка Координатора и самого Робота.

**Примечание:** _можно разными способами записывать в реестр текущего Пользователя два параметра – сервер Оркестратор и ID Робота. Через групповые политики, программу, Power Shell. Это остается на усмотрение системного администратора._

MSI-пакет рассылается также через групповую политику. Машина в любом случае должна авторизоваться, чтобы этот пакет установился. Если Пользователь не совершит вход, установка не произойдет. При входе Пользователя можно инициировать запуск какого-либо скрипта Power Shell, который из какой-либо таблицы возьмет эти данные и запишет в реестр.

Если впоследствии нужно будет поменять ID, это можно будет сделать вручную: залогиниться через RDP в данного Пользователя, запустить Робота, зайти в его настройки (иконка появится в трее) и изменить ID. Также можно сменить ID удаленно.

**Примечание:** _когда робот запускается и его настройки пусты, он считывает информацию о сервере и ID из реестра._

&#x20;

<figure><img src="https://sherparpa.ru/wp-content/uploads/2023/11/image157-263w124h-3.png" alt=""><figcaption></figcaption></figure>

Единожды считав информацию из реестра, Робот записывает ее себе в настройки. Таким образом, если в дальнейшем появится необходимость изменить эти данные, нужно будет зайти на машину, запустить Робота с помощью ярлыка и внести необходимые изменения.
