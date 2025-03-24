# Аккаунты

Инструмент “Аккаунты” позволяет создать несколько независимых областей внутри Sherpa AI Server, каждая из которых будет обладать своими чатами, историями чатов, документами, файлами, пользователями, что позволяет изолировать друг от друга работу разных отделов компании. Ограничений по количеству созданных аккаунтов в Sherpa AI Server нет.

**Важно!** _Аккаунты внутри Sherpa AI Server не являются пользователями. Для определения прав пользователей предусмотрен отдельный инструмент “Пользователи”._

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeygMpHTNZOsmKBKOecDdyutXAsqa8AV-kkqm0LOn5O7aDcWH9FNoO_CGZyCjn1y9cP-Gdh2SK90Rk8iz1Rke1a7QzWWnbxGOc6jPM735QKGPBM8pyXKCwclj5vai-4g9sUEGt1?key=xk5qF7KD0uwXI4O1-mX7Y2Ab" alt=""><figcaption></figcaption></figure>

Для создания нового аккаунта необходимо нажать на кнопку “Создать” в таблице “Аккаунты” и заполнить открывшуюся форму.\
Форма создания нового аккаунта предлагает три варианта аутентификации, из которых можно выбрать нужную с помощью установки флага:&#x20;

* Локальная аутентификация;
* LDAP аутентификация;
* OpenID аутентификация.

Таблица 4 -  Форма создания нового аккаунта

<table data-header-hidden><thead><tr><th width="107"></th><th width="206"></th><th></th></tr></thead><tbody><tr><td><strong>№ п/п</strong></td><td><strong>Элемент интерфейса</strong></td><td><strong>Описание</strong> </td></tr><tr><td>1. </td><td>флаг “Локальная”</td><td>Позволяет установить вариант локальной аутентификации аккаунта.</td></tr><tr><td>1.1</td><td>текстовое поле “Логин аккаунта”</td><td>Логин аккаунта. Обязательное для заполнения поле.</td></tr><tr><td>1.2.</td><td>текстовое поле “Пароль”</td><td>Пароль аккаунта. Обязательное для заполнения поле.</td></tr><tr><td>2.</td><td>флаг “Использовать LDAP аутентификацию”</td><td>Позволяет установить вариант аутентификации аккаунта через LDAP.</td></tr><tr><td>2.1</td><td>поле “Пользователи LDAP”</td><td><p>Позволяет указать пользователя LDAP с помощью выпадающего списка. Данный вариант аутентификации доступен, если в конфиге Sherpa AI Server прописаны данные для подключения к LDAP-серверу. </p><p>Данное поле доступно при LDAP аутентификации.</p></td></tr><tr><td>3.</td><td>флаг “Использовать OpenID аутентификацию”</td><td>Позволяет установить вариант аутентификации аккаунта через OpenID .</td></tr><tr><td>3.1</td><td>текстовое поле “oAuth id”</td><td>Идентификатор oAuth. Обязательное для заполнения поле.<br>Данное поле доступно при OpenID аутентификации.</td></tr><tr><td>4.</td><td>текстовое поле “Компания”</td><td>Название компании, в которой будет создан аккаунт.</td></tr><tr><td>5.</td><td>текстовое поле “Отдел”</td><td>Название отдела/департамента, места работы или расположения аккаунта.</td></tr><tr><td>6.</td><td>текстовое поле “Имя администратора”</td><td>Имя администратора аккаунта.</td></tr><tr><td>7.</td><td>текстовое поле “Фамилия администратора”</td><td>Фамилия администратора аккаунта.</td></tr><tr><td>8.</td><td>текстовое поле “Эл.почта администратора”</td><td>Электронная почта администратора аккаунта.</td></tr><tr><td>9.</td><td>текстовое поле “Телефон”</td><td>Телефон администратора аккаунта.</td></tr><tr><td>10.</td><td>флаг “Может создавать уч. записи”</td><td>Позволяет дать аккаунту право создавать другие аккаунты.</td></tr><tr><td>11.</td><td>флаг “Может создавать партнерские уч. записи”</td><td>Позволяет дать аккаунту право создавать партнерские аккаунты.</td></tr><tr><td>12.</td><td>поле “Язык”</td><td><p>Позволяет выбрать язык, который будет выбран для аккаунта по умолчанию. Возможные варианты:</p><ul><li>Русский;</li><li>English.</li></ul></td></tr></tbody></table>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdRuOdLOlmqkOiJeVoYDO1K6b-li-FODHELKPpFdE0yh79Z5-XFbuXb_n66O2R9dTExmwml_DUfg28w3xAm2TQ3nwvtiwk-zyjzWg_QbG1sde_mgoln_19zHoKgT05o7wg1t49Y?key=xk5qF7KD0uwXI4O1-mX7Y2Ab" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfMI2F-5uacT7gDXcf0yvvArNeQAiw4-2H3EcAEykN0Th14HR2P7KTmQHmisBEOz6W8fW_34MFsSL52U97HiiZiJJlvF7KYw6jrBS0WxdKUsHafXrLeeRrk63sVvGRaPZfTMPLB?key=xk5qF7KD0uwXI4O1-mX7Y2Ab" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcbxqwd-9Ox87Fy_Lq_-NKWh-RgJgQdKVP-3Nm0EhrTDiqSqdlA3RxpGdCVisQLYXrbvfhXMy_9SRmYOl-tUKoCiMgrvwGsZYurCL17wpCNPG8VEln5MYRLQLmghBY7QOAATFQYJg?key=xk5qF7KD0uwXI4O1-mX7Y2Ab" alt=""><figcaption></figcaption></figure>

Для просмотра и редактирования свойств конкретного аккаунта необходимо выбрать его в списке и нажать на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXccBHTpK71p4Qy86Bl2VVz1-PEgJTJ7WzbU5Xjy5lbJDItL7HPAOPrqNr1Tk2CZ0vhEk649YxHXQPhZD6NSAj6EDiUFdXREth483dtMdKukWGUkvlDEar27wuc6MciXRteJukH33Q?key=xk5qF7KD0uwXI4O1-mX7Y2Ab). После этого откроется форма с настройками аккаунта, в которую можно внести необходимые изменения. Новых полей в ранее созданном аккаунте нет.
