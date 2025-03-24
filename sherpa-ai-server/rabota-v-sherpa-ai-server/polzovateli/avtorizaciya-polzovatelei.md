# Авторизация пользователей

## **Локальная авторизация**

Для создания пользователя с локальной авторизацией необходимо установить флаг “Локальная” в форме создания нового пользователя, а затем в соответствующих полях указать логин аккаунта и\
пароль к нему.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf1a3w683u2UI1q9aXXXILVpTqMcykSnfkpA_8dppTb-dIBsSMgTeFPoWxLWvvED_ASqjkXETMxbr66RCAj5lTHwvLOFRY9-oYJS91yEc_nTHIRTAAf7DZ8rzRLd-hAiQlSqBuK71mkLx9Wz5uSgCYbaKRm?key=_l5eTmGODtHue1TmFAH_Aw" alt=""><figcaption></figcaption></figure>

## **LDAP-аутентификация**

Для создания пользователя с методом входа в систему “LDAP-аутентификация” необходимо\
установить флаг “Использовать LDAP аутентификацию”, а затем заполнить поле\
“Пользователи LDAP”.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcIRa1kbPdgy14oaUQzyaIr5ZCVB_RTO9V38LsxMo2lsDppVlQQ9gGL-6fe_bZBeV1VQx7DdoGmehhW8ki3sNrlviazK3m48E5aJlSehrvoyc9MMIeFW01kRCePcIOYjbozWC7r9y2Xsxf4CeXg7GIo0aa_?key=_l5eTmGODtHue1TmFAH_Aw" alt=""><figcaption></figcaption></figure>

Для использования AD-аутентификации необходимо в файле `config.ini`, расположенном `/opt/SherpaOrchestrator/backend/config/config.ini`, заполнить соответствующие параметры:

* ldap\_server;
* ldap\_port;
* ldap\_encryption;
* ldap\_base\_dn;
* ldap\_group.

Затем перезапустить контейнер для установки через Docker (при локальной установки по\
необходимости перезагрузить сервер).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdWh5k7ppQ26NDh0y-lbfSCXSz_kM8QvN87vNdWckmNlHiWi1kXI25RKyctrBo7RrGN328xO_sf1rzDMfmGehqAUbBd5Cv_xfxddAW3vZmF_XwJRmHe5eA7Y_AdnVAfiiGJXolR97Wt5rufJUOqmIA_CzU3?key=_l5eTmGODtHue1TmFAH_Aw" alt=""><figcaption></figcaption></figure>

## **OpenID-аутентификация**

Для создания пользователя с методом входа в систему “OpenID-аутентификация” необходимо\
установить флаг “Использовать LDAP-аутентификацию”, а затем заполнить поле “oAuth id”.\


<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf8mmuOCUUZ7AA7-Et2E9byhSvyCFHUzahfkQOGrxyqWTKlBkuVI-2Ky-ogd-22mO0slF2_KVPxWKfvrPro0_cETBJP9yu7QY5HCkL2DUj-V8tmT58inC7gZ04_d63EsxQ783G3oGMYEOM80lm3j8-NW6qZ?key=_l5eTmGODtHue1TmFAH_Aw" alt=""><figcaption></figcaption></figure>

Для подключения OpenID аутентификации необходимо в файле `config.ini,` расположенном по пути `/opt/SherpaOrchestrator/backend/config/config.ini`, заполнить соответствующие параметры:

* oAuthClientId;
* oAuthClientSecret;
* oAuthAuthUri;
* oAuthTokenUri;
* oAuthUserInfoUri.

При запросе токена Оркестратор передает параметр `‘redirect_uri’`.\
Если необходимо, то указать Callback URL вручную:

`yourDomainURL/api/gui/system/oAuthHook`

В настройках аккаунта или пользователя выберите “Use OpenID authentication” и укажите идентификатор пользователя в системе OpenID.

На рисунке ниже пример заполнения для аутентификации через Яндекс.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdh2M7oeOkeutAHyPqjkmdwn-9miwv4DN_qp8JNY-jgXMvZuBNDXYZN9tJ52KvciKFLVx4k-BFXjyJaFo21d5-DNB2ZRQ6Hd9XoUsMhEIrd6UVn7DB9ZEDVZYWVyvjQnTV1KsIRjVnts84xoMK1Zekom5M?key=_l5eTmGODtHue1TmFAH_Aw" alt=""><figcaption></figcaption></figure>

В некоторых случаях, кроме настроек в Keycloak, может потребоваться добавить в `setup.ini` следующую  настройку: `oAuthUserLinkField="preferred_username".`
