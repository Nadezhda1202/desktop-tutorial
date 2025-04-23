# API

Раздел "API" представляет собой справочник по доступным API-методам в формате Swagger. В данном разделе представлены следующие вкладки:

* Ключ (API Key)
* Робот
* Группы Роботов
* Процесс
* Версия Процесса
* Работа
* Очередь
* Задача
* Триггер
* Ресурс
* Хранилище
* Лог
* Аккаунт

## Ключ (API Key)

В этом разделе пользователь может увидеть свой уникальный ключ доступа к API,  который необходимо передать в HTTP-заголовке, в поле Ключ. Также при изменении данного поля необходимо подтвердить действие нажатием одной из кнопок:

&#x20; ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdUwoo5AApulBnrl8HQFGNMRjuKkLmLaJcbYvcuJQXF1jeiynnVt91nZQlkzUEDmOPbVkeZjaCVISncQ91L98qvXW_KZZNfdiwK0SfAQdAIP6EHiKLMNPHFoy2cSNErcJt3zo_ccw?key=o0FHaGHt8wdv-FpDKfCXmTRa)(Assignment) - Назначить новый ключ;

&#x20; ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdM1_SevWweGyGRBOI0ejtche7yIIQxxIbutVqaHCyVm_sdUBkL39T4i7fdlnFbqlc8pohzKSJRBawUwqFfhOFxQkhm28k5BPL8Qhf1E1yVguY40db3BEQxZar_PUYfFFJlERka7g?key=o0FHaGHt8wdv-FpDKfCXmTRa) (Refresh) - Обновить текущий ключ.

Ниже расположено информационное поле "Authorization", которое используется для предоставления токена доступа, подтверждающего, что Пользователь имеет право на выполнение запрашиваемого действия.

Пример:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfTw_GFtctIyw7virluPsOkadkwu9Iv5fVh7JEs5RPfL1N6QMhJMhhoNQe1xAcAJ8TcHUW3G6hXtrbH4oYeWyX1Jnx6avT8CdpDutcV8TCObnnIPTZoPiiAXs4NaBzSp-gMB7E4kg?key=o0FHaGHt8wdv-FpDKfCXmTRa" alt=""><figcaption></figcaption></figure>

“Bearer” — тип токена,

“Y2Y5M2U3OGUtMDk1ZC00MGNjLTkwNWUtZTYyNjUwMTg5YjU2” — сам токен, который сервер будет использовать для идентификации Пользователя.

Запросы к API осуществляются с обязательной передачей API Key, который хранится в настройках Учетной записи. Подробные примеры запросов приведены в разделе по каждому блоку отдельно.

Коды ответов:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXepIfjanO0OANtvmFvAcp9yk6l-kJYlkaXAjsNpUmzET9-ZIm2-UoUcKp8H61tDNcLtOPKP1YUrHigpb3i37ynQ3tftqo0HgnK8CYiVBXBlI4RRH-48ctzwC_iOpwUDFlBb5bCBtQ?key=o0FHaGHt8wdv-FpDKfCXmTRa" alt=""><figcaption></figcaption></figure>
