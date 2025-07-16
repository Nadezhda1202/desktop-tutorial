# Установка Sherpa RPA Runtime

**Sherpa RPA Runtime** — это установщик Робота в учетную запись Пользователя для использования без Дизайнера. Sherpa RPA Runtime используется для развертывания на рабочих местах конечных Пользователей Attended-роботов, Unattended-роботов, а также агентов RDP и Citrix. При установке Sherpa RPA Runtime создаются некоторые задания для Windows, а также некоторые установки в реестр для работы RDP.

Установку программы осуществляет инсталлятор, запускаемый файлом [SherpaRPARuntime.exe](https://sherparpa.ru/downloads/SherpaRPARuntime.exe). Сохраните данный файл на компьютер и запустите его.&#x20;

В открывшемся диалоговом окне отметьте необходимые вам параметры установки:

* Режим Робота: “Attended” или “Unattended”;
* Установить для: “Текущего пользователя” или “Всех пользователей”.

Затем нажмите кнопку “Дальше”:

<figure><img src="../../.gitbook/assets/изображение (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1).png" alt=""><figcaption></figcaption></figure>

После этого инсталлятор начнет установку программы, которая займет несколько минут:

<figure><img src="../../.gitbook/assets/изображение (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1).png" alt=""><figcaption></figcaption></figure>

Когда установка будет завершена, инсталлятор проинформирует Вас с помощью диалогового окна. в котором можно нажать кнопку “Завершить”, чтобы завершить процесс установки.

<figure><img src="../../.gitbook/assets/изображение (2) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1).png" alt=""><figcaption></figcaption></figure>

<table data-header-hidden><thead><tr><th width="50"></th><th></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdQDL839etRbMq_WnhDH2Cpc3EczsLiEc-9_tlcovPw79DZvQ5IOU4ORZ9qJI0UByRIStfcKHVDQ1t691kcoje1IXJJmURoZoHwSOFJcVrgZRiX9A764ne83DQwdIXH6yCKYqf2Wg?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt="" data-size="line"></td><td>Sherpa RPA Runtime в режиме Attended может работать как для локального запуска Attended-роботов с использованием активированной Лицензии на рабочем месте, так и для удаленного запуска, работы через RDP-подключение из другого Attended или Unattended-робота, в этом случае Лицензия не нужна.</td></tr></tbody></table>

При установке Unattended-робота в планировщике заданий создается одна Задача с двумя Триггерами. На вход в систему и на удаленное подключение.&#x20;

<figure><img src="../../.gitbook/assets/Безымянный12.png" alt=""><figcaption></figcaption></figure>

Для того, чтобы увидеть данные Триггеры, можно перейти в свойства Задачи:

<figure><img src="../../.gitbook/assets/Безымянный13.png" alt=""><figcaption></figcaption></figure>

После чего перейти во вкладку Триггеры:

<figure><img src="../../.gitbook/assets/Безымянный14.png" alt=""><figcaption></figcaption></figure>

Также Триггеры отображаются в нижней панели Планировщика заданий (во вкладке Триггеры):

<figure><img src="../../.gitbook/assets/Безымянный15.png" alt=""><figcaption></figcaption></figure>

### Добавление машины в Sherpa Orchestrator

1. Войдите в приложение “Подключение к удаленному рабочему столу”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf2-ay3til9gk1zSYVh1ufTSUdITYMAtliGDd7U1TMcRdGR5AtCG-6W6V5E0dO0Sv_1pG-lgmbStwrdVcUXZZQ1tsUaLEHrqqWOMHnok2bQJDxWw_yraYo2DIxsNhkpDgjhziE4?key=VMUG93e2rYGRb3dj-wST4aPm" alt=""><figcaption></figcaption></figure>

2. Введите учетные данные и совершите подключение к удаленному рабочему столу:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd4rQjfo3PKT5L1wcTiZReAiEHq2zOPHinDDIDx-J3U3vYBBX3LWvGoZs_zauYsgAwgryKlxo31aJNCM8VpYyUB8afE8ZPDt63IkL0nUNczGIUGJSp45Ba6z6IAzn8TgkQKfnc-AQ?key=VMUG93e2rYGRb3dj-wST4aPm" alt=""><figcaption></figcaption></figure>

3. Установите [Sherpa RPA Runtime](https://docs.sherparpa.ru/sherpa-orchestrator/razvertyvanie-platformy-pod-upravleniem-orkestratora/ustanovka-sherpa-rpa-runtime) , режим Робота: Unattended.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe6ICV9QU_Fxi7OwBpO_DS0d6s1xtVc0Sm6-iojoI7aLQZIEf6kBK6RJJt3xKNqViaAd43w4O2Mfnw3toIcFfVB4-zgqAFJHHQZyuaM1ifPqMo3M1kMNSFu0TA8QhR_96ES8wD0?key=VMUG93e2rYGRb3dj-wST4aPm" alt=""><figcaption></figcaption></figure>

4. Запустите Sherpa Assistant, найдите значок в трее и нажмите на него правой кнопкой мыши. Во всплывающем меню выберите строку “Оркестратор…”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc7Ef9SStdENXp-yEBoQ5_jYX_tTwivJyZI3JB84vfh-k3VFM9Id8bGY5-kguUq9N0DlS_CSk1_J6uuFDdmShO2WeE2M0CijaiaM7CpdmKRJe2THll1byt8qd-Q2myDYsfLfWUneQ?key=VMUG93e2rYGRb3dj-wST4aPm" alt=""><figcaption></figcaption></figure>

5.  В поле “Домен сервера / IP” вставьте адрес вашего оркестратора, например: `https://ваш-домен-или-ip`.\


    <figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe_rrUOeb-1xaMiplUUByNO9lod37cEWJ9jKf_WkAbFiYy8wgNrPDxhvNMDYN_euMUpBnBWT1o0Ls2rXHnndJeDlDbarBvgN9kvuZNtDZP6V9G5qM3RGyLvsZiZZLpUeBtzXVzj1Q?key=VMUG93e2rYGRb3dj-wST4aPm" alt=""><figcaption></figcaption></figure>

Для того, чтобы заполнить поле “GUID робота”, войдите в Sherpa Orchestrator во вкладку Роботы. В таблице “Группы роботов” нажмите на строку группу “All Robots”. Над таблицей “Роботы” нажмите кнопку “Создать”. В окне “Робот” в поля:

* “Машина (IP адрес или доменное имя)”,&#x20;
* “Домен (при наличии) и логин учетной записи в формате domain\username”,
* “Пароль учётной записи”

введите учетные данные.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfj_isV9TT6qrGpxhQnZvId_CSZd-nH7d2AFC7GMfesHUzdsrCaaR6LJOGPkkfzZx14uGcr5fWIV6Eyl77IfLFw_VRREUK7FBGKZMJJzl-kNxYpdTPnD2HQdZZIFVt965PrgBJ0?key=VMUG93e2rYGRb3dj-wST4aPm" alt=""><figcaption></figcaption></figure>

Далее в том же окне заполните поля “Координатор” и “Лицензия” нужными данными из выпадающих списков. Нажмите на кнопку “ОК”. После этого данные сохранятся, можно будет выбрать созданного Робота в таблице “Роботы” и справа от его названия нажать иконку “Изменить”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf5kPNhBqwOBl32gacOIAC2CgAFKIvMmsmDWF8fEOomP5nyd1Qco2M27mxUZ2_O_K2fcSIJJjNmyiw-pzThtY2ZOtGCt0AMOznhQjR2ADw82BlynX1_c6lMVP0r9a_kdzlfP6jB?key=VMUG93e2rYGRb3dj-wST4aPm" alt=""><figcaption></figcaption></figure>

Скопируйте данные из поля “GUID записи”, вставьте в нужное поле в окно Sherpa Assistant:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdwO3VYPEmnbsoiQGl_CaTSmF_BufMR2wljPvYhjF9x9bPhZBVtMjfMyAzoYGsAgwEBUKEhfRtey24S2ZnKcsQxlO0gIO8pm0NuPS--VKxzIiwRV7KlnL0pz7oKhwQ1etkF4l3GlQ?key=VMUG93e2rYGRb3dj-wST4aPm" alt=""><figcaption></figcaption></figure>

Нажмите на кнопку “Подключиться”, которая находится под полем “GUID робота”.

Вернитесь в Sherpa Orchestrator и проверьте, что в таблице Роботы в строке вашего Робота появился статус “Готов”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeVHYgkVQjNzSRxT_zYn5U_jmFzI-bb4dXwCE5XJHUPXJtSvuYPLvJnl2YhL_2QFuGIrU-1MIhsXSpAG9z6hE0Mw2GGY9Dzrf0dlgFwMpwtfLDOoP2yYbRRpu0LpXrjFcNSE9zD?key=VMUG93e2rYGRb3dj-wST4aPm" alt=""><figcaption></figcaption></figure>

6. Войдите во вкладку “Процесс”, проверьте, что нужный вам Процесс создан (или создайте его через кнопку “Создать”). При создании Работы будет возможность выбрать данный Процесс из выпадающего списка.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfGhQgSCayaipPxD0FQBFbx9EynMa9JpopTHxyshK0pqMcQvAAyJpgNNOLV1laSTrr_rItC__UX0UUBObPtxUtHq1GedgtDSkb8xovzdqBuWv0PQtaEgDux3Cy82hx6wT8nTW2mpA?key=VMUG93e2rYGRb3dj-wST4aPm" alt=""><figcaption></figcaption></figure>

<table data-header-hidden><thead><tr><th width="61"></th><th width="318" align="center"></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeynomjcePhOOrO_HeLF5y-7owrRvZ27QuQEmC086yBpqIfZUrEF6SK0jePQ3GT6G9kwyqAP8dChkcpb9Z75ldeNNvNhQ8NBqB-4iQdKzu95-wOWPB-aVGV69Qa7sXReS4R8b0Y?key=VMUG93e2rYGRb3dj-wST4aPm" alt="" data-size="line"></td><td align="center"><p>Проверьте в Sherpa Designer, что в сценарии предусмотрено логирование в Sherpa Orchestrator:</p><p><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcQlkjxRqmVY4c-6Cl0bH-W3LxcWpRrlW2nxQQ85KPD9en3CkZrMTunCAGof9n_arjGIJTJFOtR9WxZ2NSVkFrLurGBcLd7DKb4cCSSRHlITs3MkUw0qMQ0Uklc3K8pdepTAI3hcA?key=VMUG93e2rYGRb3dj-wST4aPm" alt="" data-size="original"></p><p><br></p></td></tr></tbody></table>

Войдите во вкладку “Работы”, нажмите кнопку “Создать”. В поле “Процесс” введите название Процесса, в поле “Робот” название Робота. Нажмите на кнопку “ОК”.

Нажмите кнопку “Обновить”, проверьте, что статус изменился на “В процессе”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc09nT1ogdZXhbIai7qKJbOzesoFRLdmdLlxhfn_wnjJvxh0xkdBa6Y4kmxEZP47qNN7wB3eCWdLmIbcgzWgKZmxjQcG_qKQQVdnQEG8fiFX5P0BvGsXimgYUW8SPMygdh1RbSIqg?key=VMUG93e2rYGRb3dj-wST4aPm" alt=""><figcaption></figcaption></figure>

Нажмите кнопку “Обновить”, проверьте, что статус изменился на “Успешно”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcJETMNUIRF7xTJaWXi18NYEiSKpF_CapdG-kgmon1HjTeMMicbKQ_Nzl4is2UfAvV7IC_S92XAy0nmmaaC2iWSu43xc1k9WgXmOjrSvNkeMLAE1_Orr7YGeh-lCuPlCrHeZbFnJg?key=VMUG93e2rYGRb3dj-wST4aPm" alt=""><figcaption></figcaption></figure>

7. Войдите во вкладку “Сообщения роботов” и проверьте строку с вашим Роботом:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd4lUhJOOuAnNGW-CM8e4TUEPXyGwxp4qTGQjEXkhYRfbmjCiT3Zo6o3QzOIBA1_NA19ED1uTWiSLoDwhNWlUbdI893DgUZWMkRabrdzyi4X-dKPvSHl34bwIMSjTpljzXh-4Om?key=VMUG93e2rYGRb3dj-wST4aPm" alt=""><figcaption></figcaption></figure>

Добавление и настройка машины в Sherpa Orchestrator успешно завершено.
