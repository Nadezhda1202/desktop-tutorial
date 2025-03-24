# Actions. Часть 2 - Заведение приходной накладной

Данный пример робота является второй частью проекта, который демонстрирует работу с Действиями в Оркестраторе ([первая часть здесь](actions.-chast-1-raspoznavanie-prikhodnoi-nakladnoi.md)) и демонстрирует работу с Действиями в Оркестраторе, как это выглядит на стороне Оркестратора можно посмотреть [здесь](../../../sherpa-orchestrator/rabota-v-sherpa-orchestrator/ekrany/deistviya/primer-sozdaniya-deistviya-i-ego-nastroiki.md). На этом этапе робот получает задачу из очереди ($QueueGuid) с тегом "1CModified" ($TaskTag).

Данный тег появляется у задачи после сохранения формы сохранить Действия в Оркестраторе. Итогом работы данного робота будут проверены и, при необходимости, исправленные данные “Приходной накладной” после ее распознавания из pdf-файла.

После получения задачи происходит внесение данных в уже открытую 1С "Управление небольшой фирмой учебная (демо)".

Вторая часть проекта робота состоит из двух диаграмм.

Таким образом, если описывать пошагово, то данный робот работает следующим образом:

1. Получает из указанной очереди задачу, добавленную в нее на предыдущем этапе проекта.
2. Меняет статус полученной задачи на “В процессе”.
3. Запускает диаграмму “ДобавлениеНакладной”.
4. После выполнения сценария добавления накладной, меняет статус выполненной задачи на “Успешно”.

**Основная диаграмма проекта** выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdpuFckPoa_h0RF3Nwuy59XMvjq63jnWra8fxMmN6nUkEjJimy3jwTJ9PPK4_Eo-vsXln_ZIKsQl5If2ZfaKSno9NSwImDkyj71gDZUcZcD406TaC1QKSQ_2dmLHq787k2aoiF38KFxZtT8vQ_LU4GDwiY?key=AUJ9n9XuDPP2hhhE8Kng6Q" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Получить задачу из очереди”** получает задачу из указанной очереди. Для данного блока указаны следующие свойства:

* GUID/Имя очереди (GUID очереди в Оркестраторе, из которой необходимо получить задачу);
* Статус задачи (фильтр задачи по статусу);
* Приоритет задачи (фильтр по приоритету задачи);
* Фильтр по тегам (фильтр по тегам);
* Перезаписывать объект параметров;
* Ошибка при отсутствии задач.

На выходе получены следующие свойства:

* GUID задачи (возвращает GUID задачи);\
  Название (возвращает название задачи);
* Параметры (возвращает параметры задачи);
* Объект задачи.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfdCv2J5OXk0FopX839HcdQHo8GsDey0Q_Frl41SV3UUZkLOpzN50CQIsmAVtxgqeylXl7_AE7SXwxAJ4TQSN3t2J-9Y8lROCFaPhlciLHPRoOnA8Vu44_3Wg33f1pebActOqU7Ht9NKWGSTBBPndbNNKg?key=AUJ9n9XuDPP2hhhE8Kng6Q" alt=""><figcaption></figcaption></figure>

3. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае в свойствах указаны три значения, которые необходимо присвоить переменным: значение ячеек “Товары” , “Поставщик” и “Заказ”. Переменным 1, 2 и 3 присваиваются Значения 1, 2 и 3 соответственно.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfCgGz_sZ6mAzGCY98qtfPITSF7HbEL64vLXZCaTsoGI9EkwIBQqenik8ov6heOVNxGJs39UdmF4dvjbE_Zt4k43IdNXG2FqC_b59_FOCVM-2UYKJNUCXkzmC72fnwEuGkpy97hMCsT__cJJs0ed2x9tOcU?key=AUJ9n9XuDPP2hhhE8Kng6Q" alt=""><figcaption></figcaption></figure>

4. **Блок “Изменить задачу”** позволяет изменить статус задачи с текущего на статус “В процессе” (In Progress). Для данного блока указаны следующие свойства:

* GUID/Имя задачи (GUID задачи, статус которой необходимо изменить);
* Статус (статус задачи, который необходимо присвоить задаче).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdm4XDW8FZIyCMdEXEY7PlgDwwB4kI6u3W01BEBGtghKree5qp1U3hLf6W2n1sRJV0KyrUjIhsAmhVhzLUEWsL4wL-jVGTUQunWODatNwlzcBG8J0QcFA1BbfG_oUcXVgaEoIfr8ojlprgePScNfZf9oE4X?key=AUJ9n9XuDPP2hhhE8Kng6Q" alt=""><figcaption></figcaption></figure>

5. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdtUisGpTa53r8qH0AZIn3UIzHqIZy33uXx-kXsEz2YDnjNgPtAT5OF1UxaC3tyByNtpxR8qgRwg9AcmbJRgK3sGx0dew-rFA9oXnX3EEor3mjwx1jtI6T0QPAREjJHBPwCZTN4Hj39ghw9PC-CWDihfXnY?key=AUJ9n9XuDPP2hhhE8Kng6Q" alt=""><figcaption></figcaption></figure>

6. **Блок “Изменить задачу”** позволяет изменить статус с текущего на статус “Успешно” (Success). Для данного блока указаны следующие свойства:

* GUID/Имя задачи (GUID задачи, статус которой необходимо изменить);
* Статус (статус задачи, который необходимо присвоить задаче).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf38ccGc9p47n0caA8_nRCqyu1igzI4wBvMZfJ4FcI0_v3lORV5tzmFOerRUPfymqxLqIrxzA6qIAv9yRP0ksWZ8cbLo5VyeLOkDHV85UV6YMkxLrRyry4zIQAToF1VNvk60ndnhLR0BOYw9D4-kXvL30sr?key=AUJ9n9XuDPP2hhhE8Kng6Q" alt=""><figcaption></figcaption></figure>

7. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

Диаграмма "ДобавлениеНакладной"

После извлечения данных из pdf-файла на первом этапе проекта робот создает накладную. Данная диаграмма создана частично с помощью функции “Запись” Sherpa Designer. Подробнее о ней [здесь](../../rabota-v-sherpa-designer/osnovnoe-menyu/panel-razrabotka/menyu-zapis/zapis-deistvii-polzovatelya/).&#x20;

Рассмотрим подробнее блоки данной диаграммы (для удобства блоки пронумерованы):

\


<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdT3pT4lwpYgT0vKJDJt_LVnX61ro5c0MGyq5vsNxt8R7tDX_IBXNp1u2VvpaE6l0aBR0IsKbwov6qR73KauZOE6SSA_DLg4lcgWt9rDSIWDZKX6eWhacmN2X7xnCEh1ValEydEWNQSJ7MIyN2lZWpqtuyI?key=AUJ9n9XuDPP2hhhE8Kng6Q" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeBxxFSGaJOQ3ZyccBxzRahBDVwI-a71qdhgvS0fbKcO9RQ3tdnYvGde0Wof5WwBeV0YGV9rg2EQe0TJzDI5f0XtkofhbPvs0o-AFUvFp9qN5m2XYI3tMB-7poLQzCy1VAcIzw3STk5_Ikkp7TR2IqK_TII?key=AUJ9n9XuDPP2hhhE8Kng6Q" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение” и уровень сообщения при отправке лога в Оркестратор. Здесь данный блок записывает в лог робота сообщение “Создаем номенклатуру”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfEKLNl1aFhe_fE9VoZu_dPMssJuwVMPpmkdFIv3Wl0QFP33wErEyffnW0aWBmE_ozxZsqhNMctmmn4mfZiSEWC5WeIzrnaXg3YjekHR-ndh_yq3rVp-Qbp4hhZuKGlL3600H8rIIsF5bw3Dzfh0i6bIeU5?key=AUJ9n9XuDPP2hhhE8Kng6Q" alt=""><figcaption></figcaption></figure>

3. **Блоки “Проверить наличие элемента”** (проверяет наличие заданного элемента пользовательского интерфейса на экране), “Клик мышкой” (производит клик по заданному элементу приложения), “Нажать клавиши” (эмулирует нажатие клавиш на клавиатуре) и “\[ENTER]” (эмулирует нажатие клавиши “Enter” на клавиатуре) добавлены в диаграмму с помощью функции “Запись”. Каждый из блоков использует селектор. Подробнее о работе с селекторами [здесь](../../rabota-v-sherpa-designer/paneli-svoistv-i-peremennykh-i-rabota-s-nimi/panel-svoistv/nastroika-selektorov/).
4. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае в свойствах указаны одно значение, которое необходимо присвоить конкретной переменной.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdNMH_qeKxHKl5eYJYCQC0gPfh5Rue3yB92gqTacwop4mm6QeNv1x95MtJXyy-2xj7su41Yc7CP75voEeF0VTAxIDhGm-SoQJpshDNmwOUmVHnCv4vIt02XNTbrf2BjxqxId7-KUnI847J-wGIGvgfS_QM?key=AUJ9n9XuDPP2hhhE8Kng6Q" alt=""><figcaption></figcaption></figure>

5. **Блок “Цикл для каждого (Таблица Данных)”** циклично перебирает все строки таблицы данных.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc9hYsfjAErrPFQkuBzLTvontKeeYP2yZQGj7QKRYffPu-LJ7bpU_W1GTPTmPn8p3uheJNhrPcuvR-zjp34AGOGS18hx7YXUkHjFABlii9Wr_Je916lRBYJGq_uISlal-0WDuW7I7liYIn_8oOOeR1XOjY?key=AUJ9n9XuDPP2hhhE8Kng6Q" alt=""><figcaption></figcaption></figure>

6. **Блок “Клик мышкой”** (производит клик по заданному элементу приложения) добавлен в диаграмму с помощью функции “Запись”.
7. **Блок “Пауза”** приостанавливает выполнение работы сценария на заданное время. Для данного блока указаны следующие свойства:

* Единица измерения (единица измерения, в которой задана длительность паузы);
* Длительность ( количество секунд, на которое будет приостановлена работа сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdd7iUAj3SeSM0s2ZuUyTQpkA1GvXqkOkoNlZic3X4k_itqaqQ4qaai53-A2bo_eD8tFCtaItO6xoX110nr08D_NQBem-RLqOAxGjGYvy_sEMPMuhOGQyu4GNjuN9ZOG9BcvHbwBbRRacWLSGOBD-LZ9z4U?key=AUJ9n9XuDPP2hhhE8Kng6Q" alt=""><figcaption></figcaption></figure>

8. **Блоки “Клик мышкой”** (производит клик по заданному элементу приложения), **“Нажать клавиши”** (эмулирует нажатие клавиш на клавиатуре) и “\[ENTER]” (эмулирует нажатие клавиши “Enter” на клавиатуре) добавлены в диаграмму с помощью функции “Запись”. Каждый из блоков использует селектор.&#x20;
9. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используется одно выражение.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcDjI2KviWrJ25OtT-3HZAYiyItaJNnttBRzQN6TBQmfL5vlntLohBpimE4NELiEEg_GQxfYPC-YawGO5Hau9uX2oGxX3KXbdJtXYOKd2keZbCdCzO0xJdWM0OSQxbSsiNrAp5VfzjPtrPGTFObABGGypsH?key=AUJ9n9XuDPP2hhhE8Kng6Q" alt=""><figcaption></figcaption></figure>

10. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
