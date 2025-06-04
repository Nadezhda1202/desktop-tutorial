# Подключение сторонних сервисов

1. Чтобы подключить один из 9 сторонних сервисов:

* Yandex Cloud,
* Anti Captcha,
* OpenAI,
* OCRSpace,
* Sherpa AI Server,&#x20;
* SberGigaChat,&#x20;
* DaData,
* Claude,&#x20;
* GroqChat,

необходимо запустить программу Sherpa Assistant.

2. Далее, найти в трее иконку Sherpa Assistant, нажать на неё правой кнопкой мыши и выбрать в всплывающем меню строку “Настройки…”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe1TyFDcuLTAbU3mdiAKkngnAU8wr6O2tAadKZKjsUcn2Jfnee08l1LAD5j8GJ_sv3QSt9erm4tPqHtkOuxAPoTn6kFMNRNpOKLZK6D1WE-ynwj4Q5p0PEc1MpiTjmE5vh_Ne1agA?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

3. Далее перейти во вкладку “Сервисы”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd5Z4kqhrufCWodssWQOOSjKgQsXXAkh9OuZ8OVQGA0jPiXBA9U1g8VTwcrYW7D-rZgeD2TIsQPo-yYTsUjxns-SJoNMXF13K3p23VbfNKnEquJTZ8a6PP04ZS-PgaRQAmJ1BTN_Q?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

<table data-header-hidden><thead><tr><th width="54"></th><th width="516"></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXflRROX17KYUHKqEaiSaKrlpBxkvsNDGeib4DqOAKHUZIhbUzsapRwzN5B8n7jkNrVdeT4utKAqR_TzxYTmp5tKvIq0389acR-yl4oNTE6qkSzu8iESHJwdGhg_8NoFbA6svsl4gg?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt="" data-size="line"></td><td>По умолчанию большинство сторонних сервисов функционирует через платформу Sharpa RPA, и дополнительная идентификация не требуется. Чтобы проверить остатки лимитов, нажмите на кнопку «Проверить лимиты». Если информация не отображается, возможно, лимиты еще не использовались, так как подсчет начинается с момента первого использования.</td></tr></tbody></table>

#### Настройка токена

Для подключения стороннего сервиса в соответствующей вкладке необходимо вставить токен, который Пользователь получает при создании аккаунта. Пользователь создает токен самостоятельно, ознакомившись с соответствующей документацией:

* Yandex Cloud

[https://yandex.cloud/ru/docs/iam/concepts/authorization/](https://yandex.cloud/ru/docs/iam/concepts/authorization/)&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfKJhWyRC5L0Jp61Ie78DSrpOSVMvWv4czFp-E_naelAYAs24KuuWWp2k1Iik_qknrrb2zJSioWmNVjHZRQM932s26IkjpA3aomH_RA-500le0mdOL265vgZR13sr2v5nx8iJEvew?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

Возможны два варианта заполнения настроек во вкладке “Yandex Cloud” окна “Настройки - Sherpa Assistant”:

1. Заполнение полей “PasswordOauthToken” и “FolderId” (в данном случае не требуется заполнять поле ApiKey):\
   PasswordOauthToken: Это токен, используемый для аутентификации приложения или пользователя при взаимодействии с API Yandex Cloud. Он позволяет получить доступ к ресурсам облака, защищенным OAuth 2.0.\
   FolderId: Уникальный идентификатор папки в Yandex Cloud, который служит для организации и управления ресурсами внутри облачной среды. Каждому проекту или службе может соответствовать своя папка.
2. Заполнение поле “APIKey” (в данном случае другие поля заполнять не требуется):\
   ApiKey: Ключ доступа к API Yandex Cloud, который используется для идентификации и аутентификации приложений при обращении к различным сервисам облака. Позволяет управлять ресурсами и выполнять запросы.

* Anti Captcha

[https://anti-captcha.com/ru/apidoc](https://anti-captcha.com/ru/apidoc)&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXes7Q8il7feD6WfaKhbSqelFMHuCz5HTbz3AwKt9rzj0buLhI_Xbdg--4vfWgD10NTf2yPEQTns4wVuN8bkLwwi626Tank6VN2PAuF-PIecfLVDMjDC5ezi5UTu1LfKjC98MWuT-g?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

Необходимо заполнить поле “Anti Captcha Key” во вкладке “Anti Captcha” окна “Настройки - Sherpa Assistant”:

Anti Captcha Key: Уникальный ключ API, предоставляемый сервисом Anti Captcha. Используется для аутентификации запросов к сервису, который решает капчи, позволяя автоматизировать процессы, связанные с их обходом.

* OpenAI

[https://platform.openai.com/docs/quickstart?api-mode=responses](https://platform.openai.com/docs/quickstart?api-mode=responses)&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcPEsR-otP9_2-GflVm3khs3PXW4J_cn0HCZW7Uc8rO6OIAE2QoDmfmgGIYcI_RdbBSYSo-6fWvd_n44kjXO4R-K1B-ipwQszB2dZWVpB4E6qTyK6uezrlxsrorQ3F2t7OIZC-XUg?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

Необходимо заполнить поле “Token” во вкладке “OpenAI” окна “Настройки - Sherpa Assistant”:

Token: Это уникальный ключ, используемый для аутентификации при доступе к API OpenAI. Токен позволяет авторизовать запросы к моделям и сервисам, предоставляемым OpenAI.

* OCRSpace

[https://ocr.space/OCRAPI/#curl](https://ocr.space/OCRAPI/#curl)&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe_LLwqOkERdzJV_1CQNIyj0_ZF3U1Jwm-71BjX0DVhhZQIIizHyTsrQyo15RQ8T3hMSe6k7_kAW5sBJd3GI2CrAaDtpRQ21vAR-7JBIoIcXcrgJeYmFnx3OHYP3QjYJxWxX38Gcg?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

Необходимо заполнить поле “API Key” во вкладке “OCRSpace” окна “Настройки - Sherpa Assistant”:

API Key: Уникальный ключ, необходимый для доступа к API OCRSpace, который предоставляет услуги оптического распознавания текста. Он используется для аутентификации и отслеживания использования API.

* Sherpa AI Server

[https://docs.sherparpa.ru/sherpa-ai-server/avtorizaciya-polzovatelya-v-sherpa-ai-server](https://docs.sherparpa.ru/sherpa-ai-server/avtorizaciya-polzovatelya-v-sherpa-ai-server)&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXenPHNSCfJwOBD4kuQx3ZrQWD_MGYSLa97elZ2mdvDBNdRe2n7WA6mcksx55Y-Pvh3EkfjkqL0hJYnHy6hOkABTkbEm6Pr7mRCllSzRqXCoeZa2ciDCgT0_CBHjmxvET8tglBwPZw?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

Необходимо заполнить поля “Домен сервера / IP” и “Token” во вкладке “Sherpa AI Server” окна “Настройки - Sherpa Assistant”:

1\. Домен сервера / IP: Домен или IP-адрес, по которому доступен Sherpa AI Server.

2\. Token: Аутентификационный токен, используемый для доступа к  Sherpa AI Server. Он позволяет удостовериться в том, что запросы поступают от авторизованного Пользователя.

* SberGigaChat

[https://developers.sber.ru/docs/ru/gigachat/api/reference/rest/post-token](https://developers.sber.ru/docs/ru/gigachat/api/reference/rest/post-token)

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXckODyeCrSJmPKZeJOXOoPUSRMDiOn0tftFH9lSRd2O3fpQuBD9FkPQ7YYt0a8ZB9F3yZvVSIBxYEGYbLOFTGNIDjnRZ0hClsv0hrZsq_k5PX-c_nsuI4_kmxFV5q2temV1Cxw-gQ?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

Необходимо заполнить поля “Client Id”, “Client Secret” и “Scope”во вкладке “Sber GigaChat” окна “Настройки - Sherpa Assistant”:

1\. Client Id: Уникальный идентификатор клиента, используемый для аутентификации приложения при доступе к API Sber GigaChat. Он позволяет системе распознать, какое приложение делает запрос.

2\. Client Secret: Секретный ключ, связанный с Client Id, который используется для дополнительной защиты и аутентификации запроса.&#x20;

3\. Scope: Определяет область доступа, запрашиваемую приложением при аутентификации. Содержит информацию о том, к каким ресурсам и функциям компании будет разрешен доступ.

* DaData

[https://support.dadata.ru/knowledge-bases/4/articles/2155-kak-poluchit-api-klyuch](https://support.dadata.ru/knowledge-bases/4/articles/2155-kak-poluchit-api-klyuch)&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc3g0e9nUcaVtvFUeESBzOVVZ-JPayyiACKNsbCG-p_9xFP8ZuVW9TVG-ab5zF17CTqbpHEUrVjrqNKv15XnyqVkDnaLgSLnxxpr-u9IP-FMoULTiTy5QbsqxzCCMNZnBmq0ne49A?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

Необходимо заполнить поле “Token” во вкладке “DaData” окна “Настройки - Sherpa Assistant”:

Token: Уникальный ключ, предоставляемый сервисом DaData для аутентификации запросов к API. Позволяет использовать функции сервиса для валидации и обработки данных.

* Claude

[https://docs.anthropic.com/en/docs/initial-setup#set-your-api-key](https://docs.anthropic.com/en/docs/initial-setup#set-your-api-key)&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdQGFsLchrbHe3AD45_mWRnMcjN0lH5v_eTrMZFQU_zvv95qTJMbLL2JgZeLUdxzRrMydayc9fmIN7q2whLDMphY_-oiEc2ycv33uoEMHFSPWRCuGqqE0tnntPYPdTMdo4ZCmb18g?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

Необходимо заполнить поле “API Key” во вкладке “Claude” окна “Настройки - Sherpa Assistant”:

API Key: Уникальный ключ, который регулирует доступ к API Claude. Он используется для аутентификации и ограничения доступа к функционалу, предоставляемому системой.

* GroqChat

https://console.groq.com/docs/overview

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeriiFaKmSXmzFdvVaNu1uIqNC72jKDupuiD5zFMrMmhWFiY0Tgh-QKpAy7QYg9GXNUNDkzKlag95KZrA1MJTK4r3cMxRcuVO7D7tECWRHUH67n1KL3SKsTyqGfECb6Z9AxIZZR?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

Необходимо заполнить поле “API Key” во вкладке “GroqChat” окна “Настройки - Sherpa Assistant”:

API Key: Уникальный ключ доступа, который используется для аутентификации и авторизации запросов к API GroqChat. Позволяет идентифицировать приложение и контролировать уровень доступа к ресурсам платформы.

При создании аккаунта нет специфических требований. Пользователь получает токен или идентификатор в зависимости от выбранного сервиса.  Операционная система Пользователя не должна блокировать доступ к следующим адресам:

* Sherpa RPA

[https://sherpa.wiregeo.com](https://sherpa.wiregeo.com)&#x20;

* Yandex

[https://iam.api.cloud.yandex.net](https://iam.api.cloud.yandex.net)

[https://vision.api.cloud.yandex.net](https://vision.api.cloud.yandex.net)

[https://ocr.api.cloud.yandex.net](https://ocr.api.cloud.yandex.net)&#x20;

* Anti Captcha

[https://api.anti-captcha.com](https://api.anti-captcha.com)&#x20;

* OpenAI

[https://api.openai.com/](https://api.openai.com/)&#x20;

* OCR Space

[https://api.ocr.space](https://api.ocr.space)&#x20;

* SberGigaChat

[https://ngw.devices.sberbank.ru:9443](https://ngw.devices.sberbank.ru:9443)

[https://gigachat.devices.sberbank.ru](https://gigachat.devices.sberbank.ru)

* DaData

[https://suggestions.dadata.ru](https://suggestions.dadata.ru)&#x20;

* Claude

[https://api.anthropic.com](https://api.anthropic.com)

* GroqChat

[https://api.groq.com](https://api.groq.com)

<table data-header-hidden><thead><tr><th width="53"></th><th width="495"></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXflRROX17KYUHKqEaiSaKrlpBxkvsNDGeib4DqOAKHUZIhbUzsapRwzN5B8n7jkNrVdeT4utKAqR_TzxYTmp5tKvIq0389acR-yl4oNTE6qkSzu8iESHJwdGhg_8NoFbA6svsl4gg?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt="" data-size="line"></td><td>Если политика безопасности предприятия запрещает доступ, Пользователю нужно передать Системному администратору информацию о необходимости открытия доступа для корректной работы системы.</td></tr></tbody></table>

В момент активации лицензии Пользователю предоставляются определенные [лимиты](https://docs.google.com/document/d/1ewJMGZ-UbDUiokKFO-vQ6c9ypFfH4sfcQl_wS3Jg15U/edit?tab=t.0#heading=h.x4a9bk682hkd). (Например, для сервиса Yandex.Vision предоставляется сумма 300 рублей, что достаточно для тестирования/обучения, учитывая, что распознавание одной страницы документа стоит 13 копеек.) Если этого недостаточно, можно обратиться в [службу поддержки](https://docs.sherparpa.ru/kontakty) для увеличения текущего лимита.

Если требуется настройка [VPN](https://disk.yandex.com/i/6z3Mmisu3Wc2eQ) для доступа к нейросети, Пользователю необходимо настроить его самостоятельно. VPN настраивается индивидуально с использованием стороннего ПО. Или же, Пользователь может быстро настроить прокси прямо в Sherpa Assistant.

#### Приложение Sherpa AI Server

Sherpa AI Server - это веб-сервисное приложение, предназначенное для обучения, использования и дообучения больших языковых моделей (LLM) внутри закрытого контура корпораций.&#x20;

Для установки Sherpa AI Server необходимо обладать правами администратора.  Доменное имя настраивается непосредственно во время установки приложения. Там же происходит и локальная активация AI Сервера. Приложение доступно в браузере. Помимо локальной авторизации пользователя Sherpa AI Server поддерживает также доменную авторизацию (через Active Directory, протоколы LDAP/LDAPS) и OpenID-авторизацию.&#x20;

Токен берется непосредственно в веб-приложении Serpa AI Server во вкладке Аккаунты. Для того, чтобы его получить, необходимо выбрать Аккаунт из предложенного списка или создать новый по кнопке “Создать”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeFh6158_0Ht1melb34zhApvJRFWwcYmtBM2oxkkS73PZYzMa0tjrDV4rBtDEUXWCEt3SUewnaQtW6or9037dFek45Ivmj6wE5YPEU7AcWwvf_PTG1NNxwedfF3MYXKqJfwu-Wt?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

Далее нажать на иконку “Изменить” справа от названия Аккаунта:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXca43NGbsj5Abm-HIZJKrX4g_rm7DN4yx-PqUUJoYi8MEiHM4bmTY9H3xOAd1J4my8cuDo6TUQMi_0WzT5VL62-OKN3Y4-eXnI-UuxmOGR6cCi5rx0X-Iv0u7jcenuF145Bjpr9?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

&#x20;В нижней части всплывающего окна скопировать значение в поле “Ключ API”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXci8OWM1GOsvHoAf8z6vPTAxAAGxN29E34Rjud8SIa9cL2-PX3XgTEOhAFuud1K82Z_WH6M4nK-MRo-nuAoUv8rO4pd2J3Y85Vlh8BCtQtRmxyb1FgVYEgLglhccFcNpjmc-r_tbQ?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

Это и есть токен для заполнения соответствующего поля в окне настроек Sherpa Assistant:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfcYJUYpAW2He_7y56aDDNcdDaEXRvhDiR5Qz9PMNtBtffars3NZWI7C-ljEhFpncJP2RQ9iogR3priWAhePJxE5DT5d-ZYclQ8qBlkUt9BMH98V_y7Cr8AVPlmH3q5nyfvRKBU2Q?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

#### Сервис Wiregeo

Wiregeo — это сервис регистрации, который используется для проверки валидности ключа при его активации. Дополнительные настройки не требуются, так как система автоматически обращается к этому сервису.

#### Сервис Tesseract

Tesseract представляет собой локально устанавливаемый движок для распознавания текста. Его настройка не требует особых усилий. Пользователь может выбрать работу с TesseractOCR в Шаблонизаторе:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf9GBf29l_hgoSdNhI8CCFrvIwGew2mExhGqR-6e50VQyp7vfZpTg6AS4HzdUgDotHkNMCH-JXGBaektd1UUZL0Iq83wCP06FbFmkzystMUgzL7fRP0vaPJ7nC4hAgWZj3kd4OjbQ?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

### Лимиты

Лимит — это оставшийся денежный эквивалент, доступный Пользователю. Расчет производится индивидуально для каждого сервиса. Проверить лимиты можно во вкладке “Сервисы” в Sherpa Assistant:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXePUV6O2YGBlNxn213VJbdJmGio96ZOyNsA4GnjZ9TP-ryqjpAJuBJAVg35vz4ifO0jkUjvfo95PVinvXU7RaD-iVGelOVvimyGfmV0tz124H2pPVrRYI8JkcC3WcZ_0AKm9TfS?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

Например, 1000 токенов для GPT-4 mini стоит 8 копеек, а для GPT-4 — около 5-6 рублей. Если этого недостаточно для задач Пользователя, можно обратиться в [службу поддержки](https://docs.sherparpa.ru/kontakty) для увеличения текущего лимита.

### Таймаут подключения

Некоторые сервисы имеют таймаут подключения, который настраивается на случай, если Задача выполняется дольше установленного времени.  Его можно настроить во вкладке “Сервисы” в Sherpa Assistant:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXckOV1LrgYJd8kX12hzo52EoVlX1uHPj73z0hUBINrFfQuHK_x-bibeLROykcou7pF8m9_r1-NdW8FPLTF5V-FMTOB35QtJ_RpmNw6IQP-ymKlRwmIg7iROGBP0HvMDAZRzrx-N2A?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt=""><figcaption></figcaption></figure>

Например, в данном случае, если Задача не будет выполнена за 120 секунд, Робот не будет ждать потенциального ответа и продолжит работу, чтобы избежать зависания.

#### Варианты обработки Задач (пример)

Пользователь может отправить Задачу, которую сервис должен обработать и вернуть ответ через 60 секунд. В этом случае возможны три варианта развития событий:

1. Первый вариант: Сервис обработает Задачу и вернёт ответ быстро, например за 30 секунд;
2. Второй вариант: Сервис зависнет и будет находиться в состоянии бесконечного ожидания (чтобы его прервать нужен таймаут подключения);
3. Третий вариант: Смешанный. Пользователь направит Задачу, сервис её выполнит, но не за 60 секунд, а за 70. Не зная времени выполнения, Пользователь ограничит себя в ожидании, чтобы избежать варианта 2.

Соответственно, следует установить таймаут подключения 60 секунд в Sherpa Assistant.
