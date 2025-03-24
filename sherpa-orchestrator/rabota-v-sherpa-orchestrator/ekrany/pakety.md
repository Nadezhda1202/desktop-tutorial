# Пакеты

**Пакеты** – это собранные с помощью инструмента “Менеджер пакетов” в Sherpa Designer блоки и палитры, созданные пользователем. Пакетами можно обмениваться через файлы (Вкладка «Локальные пакеты») или через Оркестратор (Вкладка «Удаленные пакеты»).Разработчик может создавать свои палитры блоков и использовать аналогичные палитры других разработчиков по согласованию. Возможность обмена реализована через обмен с помощью “Менеджера пакетов”. Этот же инструмент позволяет получать обновления по палитрам и проводить обновление версий блоков.

Экран “Пакеты” имеет структуру аналогичную экрану “Процессы”: “Пакет” и “Версии пакетов”. Для того, чтобы в таблице “Версии пакетов” появился список версий, выберете нужный пакет в списке “Пакеты”. По умолчанию одна из версий является текущей, она отображается в колонке “Текущая версия” таблицы “Проекты”. В таблице “Версии пакетов” текущая версия подсвечивается синим цветом при выборе процесса в таблице “Пакеты”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc1QenAOGAP-e-_BrSUUsalkaRXzWfnhUW7UhkUlxDqdIb0ykCMmj7hh4vsmyMJrtYXmzV2VDMvoF68uU91MaMwTgQxjn6HmFVt2PSbnOEqkn_CpUbBuNx1sfj0CLeqEeGJxSs9R6BAmYN0MWYgWy326QQ?key=meU3_FGQL0j_p3JS1iT-vQ" alt=""><figcaption></figcaption></figure>

## **Создание нового пакета**

Для создания нового пакета в таблице “Пакеты” необходимо нажать на кнопку “Создать” и заполнить открывшуюся форму.

<table data-header-hidden><thead><tr><th width="102"></th><th></th><th></th></tr></thead><tbody><tr><td><strong>№ п/п</strong></td><td><strong>Элемент интерфейса</strong></td><td><strong>Описание</strong> </td></tr><tr><td>1.</td><td>текстовое поле “Имя”</td><td>Имя пакета. Обязательное для заполнения поле.</td></tr><tr><td>2.</td><td>текстовое поле “Запускать на версии Sherpa RPA Runtime не ниже чем”</td><td>Позволяет указать номер версии Sherpa RPA Runtime, ниже которой пакет не будет запускаться.</td></tr><tr><td>3.</td><td>текстовое поле “Описание”</td><td>Описание пакета.</td></tr><tr><td>4.</td><td>текстовое поле "Папка доступа"</td><td>Позволяет указать папку доступа для создаваемого пакета.</td></tr></tbody></table>

<figure><img src="../../../.gitbook/assets/image (43).png" alt=""><figcaption></figcaption></figure>

Для сохранения созданного пакета, после заполнения формы необходимо нажать кнопку “ОК”. В списке появится вновь созданный элемент – Пакет. У вновь созданного пакета нет версий.

<figure><img src="../../../.gitbook/assets/image (44).png" alt=""><figcaption></figcaption></figure>

## **Создание новой версии пакета**

Для создания новой версии пакета необходимо в таблице “Пакеты” выбрать тот пакет, для которого будет создана новая версия. Если пакет не отмечен, то Оркестратор покажет сообщение с предупреждением. &#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcHtfncWrPU0WgGMpacAtZxX0umFiR7B29JqShjDXXlCha58EIkQxg_V84T_AflU_tY7lYzf8wCI-NbS9XaKHLUzEjwPXS_yrsw8AL0hJfT-jQIBIYDlRtLvIje8ybEIGH2Z-2-vr0aCmsPCMhNykPGeBmi?key=meU3_FGQL0j_p3JS1iT-vQ" alt=""><figcaption></figcaption></figure>

В таблице “Версии пакетов” нужно нажать на кнопку “Создать” и заполнить поля в открывшейся форме, также выбрав файл процесса и нажать “ОК”.

<table data-header-hidden><thead><tr><th width="109"></th><th></th><th></th></tr></thead><tbody><tr><td><strong>№ п/п</strong></td><td><strong>Элемент интерфейса</strong></td><td><strong>Описание</strong> </td></tr><tr><td>1.</td><td>текстовое поле “Имя”</td><td><p>Имя версии пакета. Обязательное для заполнения поле.</p><p>Примечание: По умолчанию, в поле “Имя” проставляется наименование пакета, текущая дата и время создания версии. Их можно изменить на актуальное название.</p></td></tr><tr><td>2.</td><td>текстовое поле “Описание”</td><td>Описание версии пакета. В данном поле можно указать, например, изменения в новой версии).</td></tr><tr><td>3.</td><td>кнопка “Выберите файл пакетов”</td><td>Выбор файла пакетов. (файл с расширением .robot). Без файла версия не будет сохранена.</td></tr></tbody></table>

\


<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeVEJ0Mscw7wB_6pZCEZcm4Gz8T_FeZR87penJeL1ogdnIPQFoLPIC2MtDdQ5KVVBmqxNKwY0khEnJvC-ITaG9mkvl_xJPND7isrDxE7QdsU5pUX1DETpAUAxa8XL-2ODqMXDGw54GOZ0_JEnBflZ6tob_L?key=meU3_FGQL0j_p3JS1iT-vQ" alt=""><figcaption></figcaption></figure>

При нажатии на кнопку “Выберите файл пакетов” на Вашем компьютере откроется окно для выбора файла пакетов. Для каждого пакета можно создавать несколько его версий.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc8ZKUvhWP8rf0Rw2MUsDCgFGNix0bAdcMEqY_LBw1--q-Xj22V611mWbqky0sVpJP43YE7ukTT_bIz_EwJgYFe0PcvPCbGiN36xY5OGL2inWDG5uGonIzmimDTW--iT6D94x0QYnXseg_gO8TTwdAax5k?key=meU3_FGQL0j_p3JS1iT-vQ" alt=""><figcaption></figcaption></figure>

## **Редактирование ранее созданного пакета**

Для просмотра и редактирования свойств конкретного пакета необходимо выбрать его в списке и нажать на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeyw4CIkZX5KTc2ck5URlLL7UMx5BFtryDBlG4mh52LTfz9B08JUGWsLCRzfZd30R0FGg4r3DStF5d8RMyS26gtGbCwkrMe45F6KbyUB5TEuDHRZrXyxeepxnUq_XPhr_s9mAWVhr_rgVXSFlfwJAkUSn8?key=meU3_FGQL0j_p3JS1iT-vQ). После этого откроется форма с настройками выбранного пакета, в которую можно внести необходимые изменения. Помимо полей, заполняемых при создании пакета, при редактировании в форме указан GUID (уникальный идентификатор, присвоенный пакету после его создания). Данное поле нельзя отредактировать.

<figure><img src="../../../.gitbook/assets/image (45).png" alt=""><figcaption></figcaption></figure>

## **Редактирование ранее созданной версии пакета**

Для просмотра и редактирования свойств конкретной версии пакета необходимо выбрать его в списке и нажать на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeyw4CIkZX5KTc2ck5URlLL7UMx5BFtryDBlG4mh52LTfz9B08JUGWsLCRzfZd30R0FGg4r3DStF5d8RMyS26gtGbCwkrMe45F6KbyUB5TEuDHRZrXyxeepxnUq_XPhr_s9mAWVhr_rgVXSFlfwJAkUSn8?key=meU3_FGQL0j_p3JS1iT-vQ). После этого откроется форма с настройками выбранной версии пакета, в которую можно внести необходимые изменения. Помимо полей, заполняемых при создании версии пакета, при редактировании в форме указан GUID (уникальный идентификатор, присвоенный  версии пакета после её создания). Данное поле нельзя отредактировать.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd8c0PSQdu5PEyhRld5-EjKDCx5WewTzTOhwSfXCjMtck9CdZ21Lv5WgMN73fAwjIN39GpzEIZsbO9djPQR3h98HJ2vQUIPABnHFbCbftyQYaRPK-Cm84irW7j7jPjmA1P0jhgKye2HZtzHnP6OIEyoof3R?key=meU3_FGQL0j_p3JS1iT-vQ" alt=""><figcaption></figcaption></figure>

В Sherpa Designer можно создавать собственные блоки через редактор и объединять их в палитры. Данный функционал описан [здесь](../../../sherpa-designer/rabota-v-sherpa-designer/glavnaya-panel/bloki/redaktor-blokov.md).
