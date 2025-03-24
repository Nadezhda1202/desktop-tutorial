# Хранилище

Одним из важных компонентов в экосистеме автоматизации является Хранилище, которое можно рассматривать как аналог популярных облачных сервисов: File Bucket или Google Drive. Хранилище предоставляет Пользователям и Роботам возможность безопасно и удобно сохранять произвольные файлы различного размера и получать к ним доступ.

Экран "Хранилище" состоит из двух таблиц: “Папки” и “Файлы”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXes0uMDabIZu4f6VohO10JTYTcEzMX4aPr9I8BCgucbOHl4qASDlBwPKPyhgD3J3VYNkGVoGZ_TMkMbhfIh4caSLQKJ61Bz2ec08J_oTdzqhx-faky6e8cnJAgA4mzFr8sIxgdEsQ?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt=""><figcaption></figcaption></figure>

<table data-header-hidden><thead><tr><th width="55"></th><th></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeQen14pdiop7RJrYpYOTl9yVKOcPICJ8fH6vRAXjNOh66NSp4wWFFSiy4nQlvs9wkmXPItas_gGsxzuu5J1ypxbhXdUyKiAk1jCPfIv6UdaKCIPWVvaWuVpXSB7o2i6WdUVMacsg?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt="" data-size="line"></td><td>В Хранилище не предусмотрена многоуровневая структура папок. Вся структура – двухуровневая: папка/группа файлов и файлы.</td></tr></tbody></table>

## Таблица "Папки"

Таблица “Папки” включает следующую информацию:

<table data-header-hidden><thead><tr><th width="171"></th><th></th></tr></thead><tbody><tr><td><strong>Название колонки</strong></td><td><strong>Описание</strong></td></tr><tr><td>Имя</td><td>Содержит название для папки.</td></tr><tr><td>Описание</td><td>Может включать в себя информацию о содержании папки.</td></tr><tr><td>Папка доступа</td><td>Указывает на Папку доступа, к которой относится папка. Папка доступа служит средством разграничения доступа, позволяя взаимодействовать с папкой только тем Пользователям, чьи Роли обеспечивают доступ к ней. Таким образом, Папка доступа не только позволяет контролировать, кто может видеть Группу роботов и управлять ими, но и гарантирует безопасность данных, создавая четкую структуру прав Пользователей.</td></tr></tbody></table>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXepe-yCwauJRSo1dtoawFHDO-izseXL8MU54Z80CE35XVpq2lSf_3A5hm95NPWjiveKEabUBq4KsOMiVAm-z71hLq7S-TOOQ9FKnXjktKwQiIvyl9nNSS8Vew1iKdmwyXEMdLFWeA?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt=""><figcaption></figcaption></figure>

Данные о каждой папке в данной таблице можно отредактировать нажатием на чекбокс слева в нужной строке, нажатием на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdBObdllcoLBwD7V2WJiKthZp36DnU-NBUAcgb4raHlKUOgOaLdSGyvrjkbKAIiCqj1n609cKPXY29Ug1qhqrEtYDiWMKE5HxLsw-hnRYKqXMatPr8NptltKvQc-j2s9OYfh-KU_A?key=Xplr0gVoyx3tqpkkXjZLx1lq) и изменением полей во [всплывающей форме](khranilishe.md#redaktirovanie-papki).

Также каждую папку можно удалить из Хранилища, нажатием на чекбокс слева в нужной строке и последующим нажатием на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXddvcQs2Z_rfury5vulyKg4JK6VL930DQ-kFPXoV0a8BkX1cDJ8bIzUJuEgz8JbfHDje-E47tGtCh_JvYP4RlgkuvzKXlI_KgeyixVvWRQy7vcRFjBTyF0F6kSCfCiZSL6hs9vZ?key=Xplr0gVoyx3tqpkkXjZLx1lq), если подтвердить удаление во всплывающем окне:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeD2jJKOHFrlZTdwI7G4Blnby9rSzp_XR_qbCJEXQDZ5VD6edd-8N_914fnrlPpI0El1bfygzMGntBlWn2Iew1tpfiSgfAJmX8O7MBSePhNDFtVVf8CBNC57Aj2R0pHuqbP-uhTSQ?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt=""><figcaption></figcaption></figure>

Над таблицей “Папки” расположены кнопки, описанные в следующей таблице:

<table data-header-hidden><thead><tr><th width="164"></th><th></th></tr></thead><tbody><tr><td><strong>Название кнопки</strong></td><td><strong>Описание</strong></td></tr><tr><td>Создать</td><td>Инициирует процесс создания новой папки. При нажатии открывается форма, где Пользователь может заполнить необходимые поля.</td></tr><tr><td>Обновить</td><td>Используется для обновления списка папок на экране. </td></tr><tr><td>Удалить выбранное</td><td>Удаляет выбранные папки из системы. При нажатии на кнопку появляется диалоговое окно для подтверждения действия.</td></tr><tr><td>Импорт из CSV</td><td>Позволяет Пользователю импортировать данные о папке из файла формата CSV.</td></tr><tr><td>Экспорт в CSV</td><td>Позволяет Пользователю экспортировать данные о существующих папках в файл формата CSV.</td></tr></tbody></table>

## Таблица "Файлы"

Таблица “Файлы” включает следующую информацию:

<table data-header-hidden><thead><tr><th width="175"></th><th></th></tr></thead><tbody><tr><td><strong>Название колонки</strong></td><td><strong>Описание</strong></td></tr><tr><td>Имя</td><td>Содержит название для файла.</td></tr><tr><td>Описание</td><td>Может включать в себя информацию о содержании файла.</td></tr><tr><td>Создана</td><td>Дата и время создания файла. Данное поле нельзя редактировать.</td></tr><tr><td>Изменена</td><td>Дата и время последнего изменения файла. Данное поле нельзя редактировать.</td></tr></tbody></table>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdraroySK-js5R7R8DH50OJF8-GXoo7I1xfmiCKuCJkiNfVMDBsbR17Wu1Q8VhBhSsAQtuOvn38RBLAv7abC_sb4m2hifafg-XiU8eqNHma2ZmdBtTIneg0o54mHxKAPv7LQI26nw?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt=""><figcaption></figcaption></figure>

Данные о каждой папке в данной таблице можно отредактировать нажатием на чекбокс слева в нужной строке, нажатием на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdBObdllcoLBwD7V2WJiKthZp36DnU-NBUAcgb4raHlKUOgOaLdSGyvrjkbKAIiCqj1n609cKPXY29Ug1qhqrEtYDiWMKE5HxLsw-hnRYKqXMatPr8NptltKvQc-j2s9OYfh-KU_A?key=Xplr0gVoyx3tqpkkXjZLx1lq) и изменением полей во [всплывающей форме](khranilishe.md#redaktirovanie-faila).

Также каждый файл можно удалить из Хранилища, нажатием на чекбокс слева в нужной строке и последующим нажатием на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXddvcQs2Z_rfury5vulyKg4JK6VL930DQ-kFPXoV0a8BkX1cDJ8bIzUJuEgz8JbfHDje-E47tGtCh_JvYP4RlgkuvzKXlI_KgeyixVvWRQy7vcRFjBTyF0F6kSCfCiZSL6hs9vZ?key=Xplr0gVoyx3tqpkkXjZLx1lq), если подтвердить удаление во всплывающем окне:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfnie9WwGTOzWJ000ypsDYSibNpdz9ceXD1wi0FoaR3LzqTGpUuDTW1ijem7jRekPML4IMm2TncvzJAwJICxcJ1yyJ4TOOl6F5fDEsFS_Bib2_Xl-qq-RW5U6V4kQ43A9na1QO40w?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt=""><figcaption></figcaption></figure>

Если нажать на иконку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXfAHeB46ajxhJqIt_RtoCialivG7vUeTTXZzB_iuFfvSFVxSxRmIrfCbNneyHsNYBSgsxPsH5fOjNT-Sz1tcROBJR5wjvQo3MhAyPhE_66jDa3D55yl9FPU-FAFBb8UhgIWFQLnlA?key=Xplr0gVoyx3tqpkkXjZLx1lq) (“Просмотр”/”View”), то откроется онлайн-инструмент для просмотра файлов (форматов PDF, TXT, DOCX, XLSX) и ознакомления с их содержанием. Например,&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd4pYtfhtCSV_sDJr4qIB2v0nb0DJeQB0ryYP87QXAJ9hr9NbjmvpBn7XB-7f9-GWGLsJ2qRKmOraGI0q-bvmSgmMDzVHADeBZJVPwLE3UQDIGu-QkxOzKVISPZj2SZGPmZq8re?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt=""><figcaption></figcaption></figure>

<table data-header-hidden><thead><tr><th width="52"></th><th></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeQen14pdiop7RJrYpYOTl9yVKOcPICJ8fH6vRAXjNOh66NSp4wWFFSiy4nQlvs9wkmXPItas_gGsxzuu5J1ypxbhXdUyKiAk1jCPfIv6UdaKCIPWVvaWuVpXSB7o2i6WdUVMacsg?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt="" data-size="line"></td><td>Если иконка “Просмотр” имеет светло-серый цвет: <img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcocVVYInZ0EyfkMl_PEwkSe9QTsIAFh3UcBvUj1-9d9W7v_VrTxJQ4-_C9rIbVHgfWnOOAa-1vkolQZOFDD1xItuHd2e4NdeJDb-XP6G2lmF_dfg6H7ADmgf9r3Irhq-X-LkXm9Q?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt="">, то открыть файл для онлайн-просмотра нельзя.</td></tr></tbody></table>

\
Над таблицей “Файлы” расположены кнопки, описанные в следующей таблице:

<table data-header-hidden><thead><tr><th width="164"></th><th></th></tr></thead><tbody><tr><td><strong>Название кнопки</strong></td><td><strong>Описание</strong></td></tr><tr><td>Создать</td><td>Инициирует процесс создания нового файла. При нажатии открывается форма, где Пользователь может заполнить необходимые поля.</td></tr><tr><td>Обновить</td><td>Используется для обновления списка файлов на экране. </td></tr><tr><td>Скачать</td><td>Используется для скачивания выбранных в списке файлов. При нажатии появляется всплывающее предупреждение: <img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXerEDvw4yVrMIN3Ku-30iNHIZDDO8ZQvso88xtroKgHLT1BjXEe-3ORGfJ41XmSKw9lpjCuzaQ1EvTRydwyy34hUCLMOoGqDFWNjJAurGE9AmNGsl6wbLgxib_M9VH43mX9II7PiA?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt=""> и файл скачивается на персональный компьютер Пользователя.</td></tr><tr><td>Удалить выбранное</td><td>Удаляет выбранные файлы из системы. При нажатии на кнопку появляется диалоговое окно для подтверждения действия.</td></tr><tr><td>Импорт из CSV</td><td>Позволяет Пользователю импортировать данные о файле из файла формата CSV.</td></tr><tr><td>Экспорт в CSV</td><td>Позволяет Пользователю экспортировать данные о существующих файлах в файл формата CSV.</td></tr></tbody></table>

### Создание новой папки

Для создания новой папки необходимо нажать на кнопку “Создать” в таблице “Папки” и заполнить открывшуюся форму:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf13b_FiJAteHISCpH0E7yoCC8n8rHC-sTFQwhIu5J5WctNQANzQaSR-NulzEpv0EpS4FJGqVlPibxeGzNX96w0WVTPPbWn8C864_XXuplH-5yW8s6LRTdb1HK3tPsfKgChJaOuvg?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt=""><figcaption></figcaption></figure>

Форма содержит поля:

* Имя - имя папки (обязательно для заполнения).
* Описание - описание содержания данной папки.
* Папка доступа - Папка доступа, к которой относится папка.

### Создание нового файла

Для создания нового файла необходимо в таблице “Папки” выбрать папку, в которой будет находиться новый файл. Если папка не выбрана, то Оркестратор покажет сообщение с предупреждением:

​

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfEC3nNVQxueL3rrFvBjIOIt6YlIJAHg-X0o3WxeHrCP9wwWEBDdbqbXKdAEGboMx2xPbeUXKFaYRZkzCDjBbywh6EXCIFicPMh-zt1NsO_y5PZMFyTKu8yUckY2q2T3BJn2-mhnA?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt=""><figcaption></figcaption></figure>

Далее, в таблице “Файлы” нужно нажать на кнопку “Создать” и заполнить поля в открывшейся форме:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfL3ncwRGYqSUWdA_JGlX74kLcoq7C2i5sMatJGswPskxhvNgomEmf3coISYAXhmJnVyKo1HgbJAO_tTkGaMuGOTbm_47Yd-PBA6vEpI0IOSM0pwY_NmcLSpmmLReDJBjlQ_iiG?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt=""><figcaption></figcaption></figure>

Форма содержит две вкладки: “Основные” и “URL файла”.

Вкладка “Основные” содержит следующие поля:

* Имя - имя файла (обязательно для заполнения).
* Описание - описание содержания данного файла.

Ниже расположена кнопка “Выберите файл”, которая позволяет добавить файл из выбранной во всплывающем окне директории в Хранилище.&#x20;

<table data-header-hidden><thead><tr><th width="53"></th><th></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeQen14pdiop7RJrYpYOTl9yVKOcPICJ8fH6vRAXjNOh66NSp4wWFFSiy4nQlvs9wkmXPItas_gGsxzuu5J1ypxbhXdUyKiAk1jCPfIv6UdaKCIPWVvaWuVpXSB7o2i6WdUVMacsg?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt="" data-size="line"></td><td>Без выбранного файла запись в таблице “Файлы” не сохранится.</td></tr></tbody></table>

Вкладка “URL файла” содержит поле “URL файла”, которое нельзя изменить. После нажатия на кнопку “Ок” в ней будет отображаться ссылка на файл в Хранилище Оркестратора.

### Редактирование папки

Для просмотра и редактирования свойств конкретной папки необходимо выбрать ее в списке и нажать на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdBObdllcoLBwD7V2WJiKthZp36DnU-NBUAcgb4raHlKUOgOaLdSGyvrjkbKAIiCqj1n609cKPXY29Ug1qhqrEtYDiWMKE5HxLsw-hnRYKqXMatPr8NptltKvQc-j2s9OYfh-KU_A?key=Xplr0gVoyx3tqpkkXjZLx1lq). После этого откроется форма с настройками папки, в которую можно внести необходимые изменения:&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfWmFBFAk5HYlWFw6etmUpHKA6sHfqMfImRV9BzXbQv29Vfki4xRVVSOZclrGNB4BYvq38yBzJvJT33hJa4rBqRPXw4_8IuACaW1Xp45wY3PpO-YI2MPzOzsjHGeSqyqwP1GRjgZg?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt=""><figcaption></figcaption></figure>

Помимо полей, заполняемых при создании папки, при редактировании в форме указан GUID (уникальный идентификатор, присвоенный папке после ее создания) в поле “GUID записи”. Данное поле нельзя отредактировать.

### Редактирование файла

Для просмотра и редактирования свойств конкретного файла необходимо выбрать его в списке и нажать на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdBObdllcoLBwD7V2WJiKthZp36DnU-NBUAcgb4raHlKUOgOaLdSGyvrjkbKAIiCqj1n609cKPXY29Ug1qhqrEtYDiWMKE5HxLsw-hnRYKqXMatPr8NptltKvQc-j2s9OYfh-KU_A?key=Xplr0gVoyx3tqpkkXjZLx1lq). После этого откроется форма с вкладками “Основные” и “URL файла“. Во вкладку “Основные” можно внести необходимые изменения:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd-Dku5g2gBqwH-XLXtz2V8xYgj7sa3ezuuyD5QaZ_TiOytH68hByPCwQ6gjKUHwbVjExXuovsymuIWrp2reOtxT148vcXHiEMJwlt0-8McgkcNn1tkE3HBRULU5H863hBsg-K-?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt=""><figcaption></figcaption></figure>

Помимо полей, заполняемых при создании файла, при редактировании в форме указан GUID (уникальный идентификатор, присвоенный файлу после его создания) в поле “GUID записи”. Данное поле нельзя отредактировать.

Во вкладке “URL файла“ указана ссылка на файл в Хранилище Оркестратора:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXefXBWdmAWyO8hUcmGXvgc5hHx-zpycZpuFGKIUyv3xhNCYwXR6KYzN04TSy4GFfz40s82zo1DwwfLgdGkovC9Y8pfZ22j28zfXu3ODwXKEcvdc-PE0YMsmAIbUClYIu6KEWD0Z7A?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt=""><figcaption></figcaption></figure>

<table data-header-hidden><thead><tr><th width="50"></th><th></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeQen14pdiop7RJrYpYOTl9yVKOcPICJ8fH6vRAXjNOh66NSp4wWFFSiy4nQlvs9wkmXPItas_gGsxzuu5J1ypxbhXdUyKiAk1jCPfIv6UdaKCIPWVvaWuVpXSB7o2i6WdUVMacsg?key=Xplr0gVoyx3tqpkkXjZLx1lq" alt="" data-size="line"></td><td>При редактировании карточки файла также доступна функция получения URL-ссылки для скачивания ранее загруженного файла. Для этого необходимо перейти на вкладку “URL файла”, скопировать URL файла и вставить его в поисковую строку браузера.</td></tr></tbody></table>
