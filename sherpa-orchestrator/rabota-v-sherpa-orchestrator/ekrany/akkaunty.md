# Аккаунты

**Аккаунты** – это отдельные пространства внутри Оркестратора, каждое из которых обладает собственным набором Работ, Процессов, Ресурсов, Роботов, Очередей и Пользователей. Аккаунты абсолютно изолированы друг от друга: по Роботам, Процессам и прочим объектам.

С помощью Аккаунтов Оркестратор может быть поделен на несколько логических, не связанных друг с другом, областей (например, по департаментам), и для каждой из них вести отдельный учет и раздельное использование всех объектов.

Аккаунты представляют собой изолированные друг от друга пространства для хранения сущностей Оркестратора, доступ к которым осуществляется по логину и паролю Пользователя.

<table data-header-hidden><thead><tr><th width="54"></th><th></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfULVh2I8ZLLI93Na4MtacqNRJq83fWlbfE6mb2yQrWIqk4AVRUlPsZzbxcQCeEJTVoVZrRGe7Tt1_1XKxES5tqkNaOjAIeGUxaEHrTcRnqmS3mCR6DweV1dDlvmnnqdr9ArLjWug?key=6sbXsIGaTS3XX9nMXq1GDfiN" alt="" data-size="line"></td><td>Аккаунты внутри Оркестратора не являются Пользователями. Для определения прав Пользователей предусмотрен отдельный экран “Пользователи”.</td></tr></tbody></table>

Часто используется два Аккаунта, чтобы поделить Оркестратор и управляемых им Роботов на используемые в тестовых целях (test road) и занятые реальными бизнес-задачами. При небольшом количестве Роботов для выполнения текущих Задач одного аккаунта вполне достаточно.

Экран “Аккаунты” содержит таблицу “Аккаунты”:

<figure><img src="../../../.gitbook/assets/2025-04-21_23-04-18.png" alt=""><figcaption></figcaption></figure>

## **Создание нового Аккаунта**

Для создания нового Аккаунта необходимо нажать на кнопку “Создать” в таблице “Аккаунты” и заполнить открывшуюся форму:

<figure><img src="../../../.gitbook/assets/2025-04-21_23-22-16.png" alt=""><figcaption></figcaption></figure>

Форма создания нового Аккаунта предлагает три варианта аутентификации, из которых можно выбрать нужную с помощью установки флага:&#x20;

* Локальная аутентификация;
* LDAP аутентификация;
* OpenID аутентификация.

<table data-header-hidden><thead><tr><th width="103"></th><th width="247"></th><th></th></tr></thead><tbody><tr><td><strong>№ п/п</strong></td><td><strong>Элемент интерфейса</strong></td><td><strong>Описание</strong> </td></tr><tr><td>1. </td><td>флаг “Локальная”</td><td>Позволяет установить вариант локальной аутентификации аккаунта.</td></tr><tr><td>1.1</td><td>текстовое поле “Логин”</td><td>Логин аккаунта. Обязательное для заполнения поле.</td></tr><tr><td>1.2.</td><td>текстовое поле “Пароль”</td><td>Пароль аккаунта. Обязательное для заполнения поле.</td></tr><tr><td>2.</td><td>флаг “Использовать LDAP аутентификацию”</td><td>Позволяет установить вариант аутентификации аккаунта через LDAP.</td></tr><tr><td>2.1</td><td>поле “Пользователи LDAP”</td><td><p>Позволяет указать пользователя LDAP с помощью выпадающего списка. Данный вариант аутентификации доступен, если в конфиге Оркестратора прописаны данные для подключения к LDAP-серверу. </p><p>Данное поле доступно при LDAP аутентификации.</p></td></tr><tr><td>3.</td><td>флаг “Использовать OpenID аутентификацию”</td><td>Позволяет установить вариант аутентификации аккаунта через OpenID .</td></tr><tr><td>3.1</td><td>текстовое поле “oAuth id”</td><td>Идентификатор oAuth. Обязательное для заполнения поле.<br>Данное поле доступно при OpenID аутентификации.</td></tr><tr><td>4.</td><td>текстовое поле “Компания”</td><td>Название компании, в которой будет создан аккаунт.</td></tr><tr><td>5.</td><td>текстовое поле “Отдел”</td><td>Название отдела/департамента, места работы или расположения аккаунта.</td></tr><tr><td>6.</td><td>текстовое поле “Имя администратора”</td><td>Имя администратора аккаунта.</td></tr><tr><td>7.</td><td>текстовое поле “Фамилия администратора”</td><td>Фамилия администратора аккаунта.</td></tr><tr><td>8.</td><td>текстовое поле “Эл.почта администратора”</td><td>Электронная почта администратора аккаунта.</td></tr><tr><td>9.</td><td>текстовое поле “Телефон”</td><td>Телефон администратора аккаунта.</td></tr><tr><td>10.</td><td>флаг “Может создавать уч. записи”</td><td>Позволяет дать аккаунту право создавать другие аккаунты.</td></tr><tr><td>11.</td><td>флаг “Может создавать партнерские уч. записи”</td><td>Позволяет дать аккаунту право создавать партнерские аккаунты.</td></tr><tr><td>12.</td><td><br>поле "Часовой пояс"</td><td>Позволяет выбрать часовой пояс для аккаунта.</td></tr><tr><td>13.</td><td>поле “Язык”</td><td><p>Позволяет выбрать язык для аккаунта . Возможные варианты:</p><ul><li>Русский;</li><li>English.</li></ul></td></tr></tbody></table>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdCARE9YCUztcFwXKyZ_MyMNwYvXyHCLg9wKy0FYN2aZ7xrPSZKjs6OKjJDg0e7N74GMtiIf6QOQO1q-D3mo4mA8VtzcnGs04larHnHi9EbQ1eAx7kflxpSCSodcCnDAPpD2hsUApgKXuDp-lD_LrEkh2A?key=aDsiTVPeT_VJ1jgyAwBobA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe6CCO1Gc7vHtbjk899Yrwb_Jz2c0g_LRuMD86Q-AkYNL8Q4HHyGkP8CkGXt-7tFgGdyA1_yr5aZAR0YUaGTqAyo8WR_lsvbeiTw-qyIoh0FX7bPXkY_z6btctx5n33jJYYBkoZC9IEs1c3AP-1IupoHomB?key=aDsiTVPeT_VJ1jgyAwBobA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcH0I7j24UNF39ViJfxMbCXhWValjyYPYhZcVlCYxaEsJYd_q9RuhNkiRngMHLqsqmuvrILsw0ActOyShcrRRqUPGyfGBGcad0PeM14ZPMtgXhKPce7rZBO0PsfYFhIO9X5Plzla_X3sBmg7K4e13ITSd83?key=aDsiTVPeT_VJ1jgyAwBobA" alt=""><figcaption></figcaption></figure>

## **Редактирование ранее созданного аккаунта**

Для просмотра и редактирования свойств конкретного аккаунта необходимо выбрать его в списке и нажать на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcYOj9kNNkViiiyrDa3B40hfjjOX0t-kqrpVmCvnIDtenVUSpgNuoL9DkLxYN5iRvvaQgyVPwqreIfRmxJT1LlTQAE5hhFdPqAv84uphB0totTgDu3mA20iOjrhVhTMKu0v5dBtoPSJcC7hJvHpFggxHTAg?key=aDsiTVPeT_VJ1jgyAwBobA). После этого откроется форма с настройками аккаунта, в которую можно внести необходимые изменения. Помимо полей заполняемых при создании нового аккаунта в форме редактирования есть дополнительное поле “Ключ API” (уникальный код, используемый для аутентификации при работе с API Оркестратора). Данное поле нельзя отредактировать.&#x20;

<figure><img src="../../../.gitbook/assets/РедактРанСоздАккаунтЛокал.png" alt=""><figcaption></figcaption></figure>
