# Документы

Инструмент “Документы” позволяет загружать в хранилище документов Sherpa AI Server собственные файлы и организовывать их в папки. В данном хранилище документов предусмотрена многоуровневая структура папок, каждая папка может иметь неограниченное количество вложений (как подпапок, так и файлов).

<table data-header-hidden><thead><tr><th width="118"></th><th width="217"></th><th></th></tr></thead><tbody><tr><td><strong>№ п/п</strong></td><td><strong>Элемент интерфейса</strong></td><td><strong>Описание</strong></td></tr><tr><td>1.</td><td>кнопка “Создать папку”</td><td>Позволяет создавать новые папки в хранилище документов. </td></tr><tr><td>2.</td><td>кнопка “Загрузить файлы”</td><td>Позволяет загружать собственных файлы в хранилище документов.</td></tr><tr><td>3.</td><td>кнопка “Скачать файлы”</td><td>Позволяет скачать один или несколько файлов на компьютер. Выберите один или несколько файлов с помощью установки флагов в строках с нужными файлами и нажмите данную кнопку. При скачивании нескольких файлов, они формируются в zip-архив.</td></tr><tr><td>4.</td><td>кнопка “Удалить выбранное”</td><td>Позволяет удалить выбранные файлы или папки из хранилища документов. Также, удалить отдельные файлы можно, нажав кнопку <img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfJx59mzayYniK4YiFZgIpP9C-3l5AwTo6IlHO5FrYhk3_jxqZU905mVaDviTgMF46H896CMR5moqcMWLjkWwdR2VcSbSt2Ab13v6zfyOs7kGEGjRUWfX-A-Oc_ii9foQIufLyiiA?key=xk5qF7KD0uwXI4O1-mX7Y2Ab" alt="">в строке выбранного файла или папки. При удалении папки или файла появляется окно для подтверждения удаления.</td></tr><tr><td>5.</td><td>кнопка “Обновить”</td><td>Позволяет принудительно обновить таблицу “Документы”.</td></tr><tr><td>6.</td><td>колонка “Имя”</td><td>Имя файла или папки. Имя можно отредактировать прямо в таблице, для этого дважды кликните по нему левой кнопкой мыши.</td></tr><tr><td>7.</td><td>колонка “Описание”</td><td>Описание файла или папки.</td></tr><tr><td>8.</td><td>колонка “Создан”</td><td>Дата и время создания файла или папки.</td></tr><tr><td>9.</td><td>колонка “Изменен”</td><td>Дата и время изменения файла или папки.</td></tr><tr><td>10.</td><td>колонка “Размер”</td><td>Размер файла.</td></tr><tr><td>11.</td><td>колонка “Статус”</td><td><p>Указывает готовность файла к работе. Возможные значения:</p><ul><li>Pending (в ожидании обработки);</li><li>Processing (в процессе обработки);</li><li>Ready (готов к работе);</li><li>Error Index (ошибка, произошедшая в процессе обработки).</li></ul></td></tr></tbody></table>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdFKVrYRqU6UmZzCFKSgTMi5KUlSLe2A2sn9ibdBgaqGEBuPYBktIBiZYwCURWMXd40VB97q2NXUA7JSiPSxANnXqZLMNKA9VhTfqEsGvV6Yj0cz-aF33150fPYGA8fOqulTkzp2g?key=xk5qF7KD0uwXI4O1-mX7Y2Ab" alt=""><figcaption></figcaption></figure>

Функционал таблицы “Документы” позволяет выполнять те же действия, что и функционал таблицы [“История чатов”](../istoriya-chatov.md).

Для создания новой папки в таблице “Документы” нажмите кнопку “Создать папку” и заполните открывшуюся форму.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdyDZ7NQrgUVb1BwL4j3v0EF0n_mK_nmaiuBwfzOAA1jRwXSnkKWZ8Ta7PZrv4ypGodsrbLk8HEDN93dKrBiZcqwWEq6lKIcIZi-WBhEEPhrBCafEtpPE7fS3v9MtEElF00B4Ic0w?key=xk5qF7KD0uwXI4O1-mX7Y2Ab" alt=""><figcaption></figcaption></figure>

Для просмотра и редактирования свойств конкретной папки необходимо выбрать ее в списке и нажать на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeOEms7zCbwmydJbeLZOQRJ1X5sW0w6KqMhfns_GkKypSdtaGInJV0n46_489hLXdE6aM-EXAaGoX3dvTF0-xz9DGHtwjsnrrIWKsb0-BQYj0e4K4956_I23Kf7swpk9I-RSGnuZw?key=xk5qF7KD0uwXI4O1-mX7Y2Ab). После этого откроется форма с настройками папки, в которую можно внести необходимые изменения. Помимо полей, заполняемых при создании папки, при редактировании в форме указан GUID (уникальный идентификатор, присвоенный папке после ее создания). Данное поле нельзя отредактировать.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcpSau4GG1dhJ63UwYpPp6noFuvVNmdtnvDfgd5yGxF1LCwIKOC3RTwcjZ5a3x2ADna9DIHVR5ShGPrWinIt1J9FpJT55J0sKFfiJ5xp9hQdWe_9RFQlG02HJHxPXbVumky6HyA?key=xk5qF7KD0uwXI4O1-mX7Y2Ab" alt=""><figcaption></figcaption></figure>

Для просмотра и редактирования свойств конкретного файла необходимо выбрать его в списке и нажать на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeOEms7zCbwmydJbeLZOQRJ1X5sW0w6KqMhfns_GkKypSdtaGInJV0n46_489hLXdE6aM-EXAaGoX3dvTF0-xz9DGHtwjsnrrIWKsb0-BQYj0e4K4956_I23Kf7swpk9I-RSGnuZw?key=xk5qF7KD0uwXI4O1-mX7Y2Ab). После этого откроется форма с настройками файла, в которую можно внести необходимые изменения. Помимо полей, заполняемых при создании папки, при редактировании в форме указан GUID (уникальный идентификатор, присвоенный папке после ее создания). Данное поле нельзя отредактировать.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXehW9_d8yo18YDrZoiZ4cUbPqLxpCUPorjr71bv6rtnNmASLuUKVjJ55adf7HkFoaK5qi2gwALvSCo9AxY6c7ERQvAGx_YRRy9zsE-sQHxH_HJJxQzhBAmkfF8eqiRR7-nDLmsqAg?key=xk5qF7KD0uwXI4O1-mX7Y2Ab" alt=""><figcaption></figcaption></figure>

При редактировании карточки файла также доступна функция получения URL-ссылки для скачивания ранее загруженного файла. Для этого необходимо перейти на вкладку “URL файла”, скопировать URL файла и вставить его в поисковую строку браузера.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdPbnT9Ed7ZKfQG81n1EqdTvLT5P2pHxSVcbxkjIRJgeOu6yCq_kCtARfRJ-mEMVM6Yo3egcFztd7cZkMKbK4jX8_mVSOuj8OrRm3enGUXwLqlQV-YKuvSnGyQEgQNZYAj5K-ep7Q?key=xk5qF7KD0uwXI4O1-mX7Y2Ab" alt=""><figcaption></figcaption></figure>

Для загрузки одного или нескольких файлов в конкретную папку установите флаг в строке выбранной папки, затем нажмите кнопку “Загрузить файлы”.  В открывшемся окне выберите нужные файлы и нажмите кнопку “Открыть”.

**Примечание:** _без выбора папки для загрузки – файл будет загружен в первую папку созданную пользователем._

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdKpzP1c5l0j6sG9lX-VPrRLcsGcGY0cGXvEMUMZkvjP4uM4NcW24-VGekD9YqrzniY-CUcqCaH9IT328EhpOtobGWvOgPEpcCsaAY9k8qB-b1lBwwkOT2Tnz8g4rI823b9_3ASNg?key=xk5qF7KD0uwXI4O1-mX7Y2Ab" alt=""><figcaption></figcaption></figure>

При загрузке файлов появится окно с прогрессом по загрузке каждого из загружаемых файлов. Загруженные файлы помечаются иконкой ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcArgPtEWfkpxkqxZ4VQzWSdrgBp-jZN0_Cysy0WY6Kha4uD45lOza-JOltpliBM54IPe8zajVgG7Qpd1FlANROZp1pd09x97tYp-YCZAYIqgZ0I9wDHC5ArZt279dCQcx9AD8U?key=xk5qF7KD0uwXI4O1-mX7Y2Ab). После загрузки всех выбранных файлов нажмите “ОК”

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcUvH2MdSjqgzYhUsRRgvMXYTLpCNz8Tqcrwxs-4ruvlfKlE_FM1tp2Xjxw65BPMWdBtu8CJBb_CfrAEwIZ8VW6J_q0c_Bk8uTeHK_G6nnzFYKqSfwUx_lUzY8j9yhkuw-_RlorGw?key=xk5qF7KD0uwXI4O1-mX7Y2Ab" alt=""><figcaption></figcaption></figure>

Каждый файл после загрузки обрабатывается семантическим движком. В процессе обработки такой файл будет иметь статус “Processing”, затем данные из обрабатываемого файла добавляются в семантический поиск, после чего ими можно оперировать и статус поменяется на “Ready”. В случае, если был загружен некорректный файл (например, без текстового слоя) – в статусе будет отображено “Error Index”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfvCBV1EeDjANl2msPKEp5DbfZGmoBM58gGcfyoyK5pEdyGQG6kPBQIqJxY4-H95tvTtCpy6MdYwXIDULBP82jLcNDIZEYddBtEBjBYi4cNuLa5I9_GQRY4vxPa6Gpch05B5KLZ?key=xk5qF7KD0uwXI4O1-mX7Y2Ab" alt=""><figcaption></figcaption></figure>
