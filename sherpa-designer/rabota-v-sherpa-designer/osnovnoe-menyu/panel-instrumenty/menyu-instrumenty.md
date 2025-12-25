# Меню "Проект"

Меню "Проект" содержит набор инструментов для управления и настройки текущего проекта.

<figure><img src="../../../../.gitbook/assets/image (183).png" alt=""><figcaption></figcaption></figure>

## Документировать..

Кнопка "**Документировать..**" позволяет автоматически сгенерировать прототип документа Process Design Document (PDD) в формате DOCX по выбранному шаблону. Вы можете изменить шаблон документа по умолчанию и использовать собственные шаблоны.

<figure><img src="../../../../.gitbook/assets/image (185).png" alt=""><figcaption></figcaption></figure>

При нажатии на кнопку "Документировать…", если проект открыт, откроется окно "Документировать…", в котором будут доступны следующие элементы:

<figure><img src="https://docs.sherparpa.ru/~gitbook/image?url=https%3A%2F%2F483167589-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FpyvTUnAaOD3OMZ1w2jM6%252Fuploads%252FOIrh9AJIqyJOUJEzP2dR%252Funknown.png%3Falt%3Dmedia%26token%3Ddb6559f0-9f58-4778-a634-c82c91dca494&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=4cc29cf7&#x26;sv=2" alt=""><figcaption></figcaption></figure>

* Поле "Шаблон PDD", которое позволяет выбрать шаблон документации с помощью кнопки "…" для поиска файла на компьютере.
* Флаг "Сокращенную версию (без ИИ)", который включает создание обобщенной версии документации без использования искусственного интеллекта.
* Флаг "Полную версию (с ИИ)" (будет доступен в следующих версиях).
* Кнопка "Генерировать документацию", которая запускает процесс создания документа.
* Кнопка "Отмена", которая закрывает окно без выполнения генерации документации.

При нажатии на кнопку "Генерировать документацию" появится окно "Сохранение", в котором Пользователю необходимо выбрать нужную папку для сохранения будущего файла с документацией.

После выбора папки (и последующего подтверждения) начнется процесс генерации. В начале, в логах появится сообщение: "`Запущено генерирование документации. Пожалуйста, подождите…`". После завершения генерации в логах можно будет увидеть сообщение: "`Генерация завершена. Создан файл "C:\Users\<выбранная папка>\<имя файла>.docx"`".

<figure><img src="https://docs.sherparpa.ru/~gitbook/image?url=https%3A%2F%2F483167589-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FpyvTUnAaOD3OMZ1w2jM6%252Fuploads%252FjhZydMR3oVZp3BeJMAGE%252Funknown.png%3Falt%3Dmedia%26token%3D22d7b2d4-4e39-4d89-8bdd-5234a0dc64ca&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=f2c7132a&#x26;sv=2" alt=""><figcaption></figcaption></figure>

Перейдя в выбранную папку, Пользователь сможет открыть сгенерированный DOCX-файл и просмотреть итоговую документацию.

## Полная проверка блоков

Кнопка “**Полная проверка блоков**” в меню инструментов позволяет выполнить полную проверку свойств блоков во всём проекте.&#x20;

<figure><img src="../../../../.gitbook/assets/image (186).png" alt=""><figcaption></figcaption></figure>

Перед выполнением полной проверки блоков появится диалоговое окно для подтверждения выполнения команды.&#x20;

<figure><img src="../../../../.gitbook/assets/image (187).png" alt=""><figcaption></figcaption></figure>

Для выполнения полной проверки свойств блоков в текущей диаграмме кликните иконку ![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAsAAAAHCAYAAADebrddAAAAZklEQVR4AbSKsQ0AIQhFf4ylhQM4hCNYOJK9pcNYOoCjcQeJRu5qCR/4/GfoqFIKAdhif8Rk3nB3aw05Z/ExRtRa5V5DwdZa9N6RUsIYA865xclWMH+895hzIoTAVukHq/Rj7sEPAAAA//8vbfi3AAAABklEQVQDACDeK+PeNJLBAAAAAElFTkSuQmCC) под кнопкой "Полная проверка блоков"﻿ и выберите пункт "Только в текущей диаграмме"﻿.

<figure><img src="../../../../.gitbook/assets/image (188).png" alt=""><figcaption></figcaption></figure>

## Удалить неиспользуемые переменные

Кнопка “**Удалить неиспользуемые переменные**” позволяет найти и удалить неиспользуемые переменные.&#x20;

<figure><img src="../../../../.gitbook/assets/image (189).png" alt=""><figcaption></figcaption></figure>

Для того, чтобы удалить неиспользуемые переменные только в текущей диаграмме, необходимо нажать иконку ![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAsAAAAHCAYAAADebrddAAAAZklEQVR4AbSKsQ0AIQhFf4ylhQM4hCNYOJK9pcNYOoCjcQeJRu5qCR/4/GfoqFIKAdhif8Rk3nB3aw05Z/ExRtRa5V5DwdZa9N6RUsIYA865xclWMH+895hzIoTAVukHq/Rj7sEPAAAA//8vbfi3AAAABklEQVQDACDeK+PeNJLBAAAAAElFTkSuQmCC) под кнопкой “Удалить неиспользуемые переменные” и выбрать “Только в текущей диаграмме”.&#x20;

<figure><img src="../../../../.gitbook/assets/image (190).png" alt=""><figcaption></figcaption></figure>

При нажатии на кнопку “Удалить неиспользуемые переменные” открывается соответствующее окно для выбора неиспользуемых переменных из списка, которые необходимо удалить.

<figure><img src="../../../../.gitbook/assets/image (191).png" alt=""><figcaption></figcaption></figure>

Если неиспользуемых переменных нет, то список будет пустым.

## Компилировать блоки вызова кода

Кнопка “**Компилировать блоки вызова кода**” позволяет компилировать все блоки вызова кода в проекте. Данное действие ускоряет работу этих блоков.&#x20;

<figure><img src="../../../../.gitbook/assets/image (192).png" alt=""><figcaption></figcaption></figure>

Для того, чтобы скомпилировать блоки вызова кода только в текущей диаграмме, необходимо нажать иконку ![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAsAAAAHCAYAAADebrddAAAAZklEQVR4AbSKsQ0AIQhFf4ylhQM4hCNYOJK9pcNYOoCjcQeJRu5qCR/4/GfoqFIKAdhif8Rk3nB3aw05Z/ExRtRa5V5DwdZa9N6RUsIYA865xclWMH+895hzIoTAVukHq/Rj7sEPAAAA//8vbfi3AAAABklEQVQDACDeK+PeNJLBAAAAAElFTkSuQmCC) под кнопкой “Компилировать блоки вызова кода” и выбрать “Только в текущей диаграмме”.

<figure><img src="../../../../.gitbook/assets/image (193).png" alt=""><figcaption></figcaption></figure>
