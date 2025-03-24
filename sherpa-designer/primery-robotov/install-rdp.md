# Install RDP

Рассмотрим пример робота, который показывает как установить программу на удаленных компьютерах через RDP, работу с RDP-сессиями последовательно и параллельно, а также подключение к уже открытой RDP-сессии.

Основная диаграмма проекта выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcm4Phb0yVKnLUk2jmGenT44DpCAmlEyeXMk-r2kUNrpNsWm003QMblIfzTJ8IzdWVD_a29T6Cl055Qx809jI_IKq-XIqs5lN2vzeGUMomYIfl2mUW6trpahpxMMfzOl_sAbUb7WQ?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

**Примечание:** _на некоторых диаграммах нет соединительных линий, в данном случае, это говорит о том, что у робота есть три режима работы и, в зависимости от выбранного режима, следует переместить соединительную линию, чтобы посмотреть как будет работать диаграмма в другом режиме._

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Копировать файлы в буфер обмена”** позволяет сохранить в буфер обмена файлы из списка или один файл.  Для данного блока указано одно свойство “Файлы/Файл” (список путей файлов или путь к одному файлу).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXctHwStddHShncG_BcGQ2CHBa2m5cUvcJyyXWU-WjO9HAM20kWec6tgQfI485R4ozoTqfz6ZYuCk05piM5aCoyQ3BXL83hYcNu0Kh0hS6EuAxEMyw4WR0VjORCbhHODMXzXMkcxqw?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

3. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария, в данном случае: Последовательно).&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcoXf3LtwCXGWoPiUGuKAa7cxmWRm61NjUTvTMEfVFuQ1lb7vayDvlGVRIbFeJeFQYcofh1x-YmqayuuQlLRnYRzD-bQb7zsQfq1b0OT8W-_AIKF9niFWiYariRQ6_uU2cVU4NCpg?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

4. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария, в данном случае: Параллельно).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf8FoEvuCx828X6ai9h09bcYzNN8wD0zOgx-QDt-lOKWCnUd5_E5vAsJCLON6PzyF2te0bfONb2nA1gFsoBhvs21iRyH2sxibN7XbIWMgUIqgicfjUtEH_jChP2LN2-AQK9ytVELg?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

5. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария, в данном случае: Подключение).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeYrwZF4mhVoD2NNzTnhMzZKJmGWRviergSSxogLX0je-CKYROBJ3yvkocyBgih2WQIUhgF7T_avYYpDxasXPPAc6Oma4NNlSuVWBSocZQxtF27qfYCLqdgioSKO53zw1QoZWLF?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

6. 7\. и 8. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “Копировать файл на RDP”**\
Данная диаграмма создана частично с помощью функции [“Запись” Sherpa Designer](../rabota-v-sherpa-designer/osnovnoe-menyu/panel-razrabotka/menyu-zapis/zapis-deistvii-polzovatelya/). Диаграмма демонстрирует процесс копирования из буфера обмена файла на RPD.\


<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXckWf1bRFPVJtjJxdNN8xR1zlPFdb6vKiXrEAfjiJEgv3xygTd2jSijVNUNSHaL3ZhOJwXJKW8fU3PmAjNx0ktvpBQOZ8kC_tsj-v-m3Chklw7GJ6NeKEMtCq6YyZMOKTqmwHVa?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Клик мышкой”** позволяет эмулировать клик по заданному селектором элементу приложения. Для данного блока указаны следующие свойства:

* Селектор (идентификатор элемента пользовательского интерфейса);
* Действие (выбор действия, в данном случае, клик левой кнопкой мыши);
* ID процесса (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать);
* Задержка перед (задержка в секундах перед выполнением блока);
* Смещение по X (относительное смещение клика по координате X от левого верхнего угла элемента);
* Смещение по Y (относительное смещение клика по координате Y от левого верхнего угла элемента).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeu64pdEaZg_w64EtXEm9M_o5a2_rPspd1iC6BY6s8T6xQw-WUcFi4WL_c67IPgiJiLmuCbVEUrYHyzzeMmyxtfIKSn1yn-U7Ske6oX8nepiXQhW-Lgl-rM3SCCY06iNRvJ__0iuA?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

3. **Блок “Нажать клавиши”** позволяет эмулировать нажатие клавиш на клавиатуре. Для данного блока указаны следующие свойства:

* Клавиши (клавиши, которые необходимо эмулировать, данное свойство задано переменной);
* ID процесса (переменная, в которой хранится идентификатор процесса и вкладки браузера, используемые данным блоком);
* Интерактивно (при установленном флаге, между нажатиями клавиш будут вставляться паузы);
* Время паузы (пауза между нажатия клавиш в миллисекундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfzdYey023yGHQ63dqGVg0kG7AG17ZbXnYBLLihGp7E6r2EdgeHZoAr6p7c4PdgjMmDh32JoyS33ItTQ7jOhhyhOThn1QfCObwDAT3t4tG1TaxlmAOZqNsB8rZ3AIeBf1P6zJCz?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

4. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “Установить файл”**

Диаграмма “Установить файл” создана с помощью функции “Запись” Sherpa Designer. В данном случае, по умолчанию, нужный файл уже находится на рабочем столе.

**Примечание:** _для указания с какой сессией работать необходимо в переменную $Подключение задать значение $ProcessID сеанса. Сеанс может быть как созданным, так и подключенным._

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcrWngl0rtE8WzR6_mrLbID1zKlPcrjgpbs3PakWgr_JwjV3yfOYJEFnU9FRfe6ZFrQXUzDx6kfFsfETIO5y4J7Adg7NtNNAGaZjIzy-Lx6sj-8GG-vT22xMOPx_yvqCov8dETBTQ?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

**Диаграмма “Подключение”**

Данная диаграмма демонстрирует подключение к уже существующему RDP-сеансами.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdX10yianMtHyVDpdubwZYJVOYfx9zO6msC5FzwvY5TDjBSF5Jil1j4B8Vbuzh7roLbNXmPx71RfxNVSuISl6wEHBM5vJPLZSgNRkmW6dXoE7AJ7DJ84yqcgHhVyUJNnLWcx3tulg?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Подключиться к сеансу”** позволяет подключиться к уже созданному RDP-сеансу. Для данного блока указано одно свойство “Сервер” (имя сервера, с которым инициализировано RDP-подключение, к которому следует присоединиться). На выходе получен ID процесса (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать. Если указанное приложение свернуто или его окно закрыто другими окнами, то оно будет выведено на передний план. При работе с браузерами ID процесса дополнительно указывает на конкретную вкладку браузера, с которой должен работать блок).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXet8XNPP82N_tdIWj3f-mXPE4gO4pyUbt7g9PHKWaQ-QAJGXWwhYafGyI4crKvRawaZ3zOPyecCFXOEF_GW1kp10ckWqDViftZYW-u_ukmrYa7kWhCoPjTHEiXdwECr2OyWjnME3w?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

3. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок в случае ошибки записывает в лог робота следующее сообщение: “Сеанс не найден”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeLObfLCNuLSb1TV8BnEOh39sKt4pjuvk91NM4TG2jDWPz7BbexRz-PINauPWvEgDFBXGJuNSa3JlxImaTuIiI0jgv0pjJaHZ0ZGFGyIM8KgVptxjg6kqwgpsYnb8hQCEH1MwKRMw?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

4. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe3BU5r5Fx0GqCgvH47OPIu5CvzJNZk_usmFQ6qsBAmt2orRtxGAuQb0PrQPbh2sPqGm6kwhI2RfwUhy_ouSa-cm1f8UN0WQ0RnOtP-dnMnz0nlvfEPJnA0OA9Cpj6PgRip62cM?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

5. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcdqG2MD_w2TU2j1GUIY1HbvBilXLmCxfz-iyVFYFAktTwIdzRqKduqHSMZZXpBtU-eZ1buAmjkG6sMlXzabEaiFZOyMrjejjz8nlCQ21PdMv0kg0z32Ywfq2t2qcpJmMwNMDkLVA?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

6. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcXWxNDShUAr5I6Nr-pdnJncNLZ4Ofe_OFNOtc4PxOIS-gC7-dcE4H3Drunn-O-1TjwofgHx45_0dy7U1Ot3PW_ct0jE0_fZL5Bmt9NkNDgt09O1oCo5U9bI_HTAa_8xFzeDB19?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

7. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “Параллельно”**

Данная диаграмма демонстрирует параллельную работу с RDP-сеансами.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfEoOI6VTXZiB2d_kuH_-SO55vyjvlIoJpF5laVH-J3KQ9nxrQOADYBSuiRnSjS_qrEI8Y0E7nzoB9tvA2ejVZghGpuo7sQXeuqAMMuseYCrwrlGlYlLpFVR0q_t_P94-wAf9xl2Q?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfdljREcfeviKkX1GeEmcLXB8Wb-mViJjHlwU4AG1QgO2S7KHBPVP8C2OCmQ0OFYJ9Tpvz6zxufE7MncSekIor4v8bXkv0cyCb4lzgNJ8uflW5OpCt638HbyfqwlGjRKt8GQKKpaQ?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Генерация подключения”** позволяет сгенерировать подключение с удаленным компьютером через RDP. Результатом блока является строка данных, которая идентична содержимому файла .rdp.  В данном случае ,генерируется подключение для сервера "wintest1". Для данного блока указаны следующие свойства:

* Сервер (сервер для подключения,в данном случае указан домен);
* Имя пользователя (имя пользователя для авторизации);
* Пароль (пароль для авторизации);
* Настройка отображения (позволяет выбрать в каком размере будет инициализирован экран удаленного компьютера. Возможные значения: Full screen - полноэкранный режим; остальные значения "Ширина"x"Высота" экрана);
* Перенаправление буфера обмена (при установленном флаге на удаленной машине будет доступен локальный буфер обмена);
* Качество подключения (качество подключения).

На выходе получена строка подключения (строка данных для подключения к удаленному компьютеру. Содержимое строки идентично содержимому файлов .rdp).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfNsy5HeySlI_KU3p-eMWVBaXZvy-PWBZHrOQrqCZtpM5LeF4Foqr7WZ74C-yaVhLEWjXhJUmr_0V3ssXtK_xzfGgwJYLVKmwhxsYXr8q4yJyM1ACx1Dm06p-7Qrhs0FBasr_sknQ?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

3. **Блок “Генерация подключения”** позволяет сгенерировать подключение с удаленным компьютером через RDP. Результатом блока является строка данных, которая идентична содержимому файла .rdp.  В данном случае ,генерируется подключение для сервера "winhome". Для данного блока указаны следующие свойства:

* Сервер (сервер для подключения,в данном случае указан домен);
* Имя пользователя (имя пользователя для авторизации);
* Пароль (пароль для авторизации);
* Настройка отображения (позволяет выбрать в каком размере будет инициализирован экран удаленного компьютера. Возможные значения: Full screen - полноэкранный режим; остальные значения "Ширина"x"Высота" экрана);
* Перенаправление буфера обмена (при установленном флаге на удаленной машине будет доступен локальный буфер обмена);
* Качество подключения (качество подключения).

На выходе получена строка подключения (строка данных для подключения к удаленному компьютеру. Содержимое строки идентично содержимому файлов .rdp).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXda9wIERLrDRULy-26ATf8RncGzaVgtrysoxIuzYZ9IifwztTY5s_UGAArk1x2R2QfnaCHf2ORgS_3BzGIljcQoe368pCMxR460t6sUqCBZ68vm-1NE_7g09HkHZy0_o4GQs-oEsQ?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

4. **Блок “Генерация подключения”** позволяет сгенерировать подключение с удаленным компьютером через RDP. Результатом блока является строка данных, которая идентична содержимому файла .rdp.  В данном случае ,генерируется подключение для сервера "winwork". Для данного блока указаны следующие свойства:

* Сервер (сервер для подключения, в данном случае указан домен);
* Имя пользователя (имя пользователя для авторизации);
* Пароль (пароль для авторизации);
* Настройка отображения (позволяет выбрать в каком размере будет инициализирован экран удаленного компьютера. Возможные значения: Full screen - полноэкранный режим; остальные значения "Ширина"x"Высота" экрана);
* Перенаправление буфера обмена (при установленном флаге на удаленной машине будет доступен локальный буфер обмена);
* Качество подключения (качество подключения).

На выходе получена строка подключения (строка данных для подключения к удаленному компьютеру. Содержимое строки идентично содержимому файлов .rdp).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcFmh4kXK88oxslbSf-5q714LXW4i7lDk-9w98zfQs8a8eAaoVa_ipP_J9JEiki8pJQSnbIvKBSj8_-0MndocsupvUFoO-FJEFRAV7c06BKIrF9cNpjNK-WT7w7oZmDfORGM4e2Bw?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

5. **Блок “Создание подключения”** позволяет создать подключение с удаленным компьютером по протоколу RDP. Для данного блока указано свойство “Строка подключения” (строка подключения к файлу rdp, здесь указывается строка подключения, генерируемая блоком "Генерация подключения" из этой же категории). На выходе получен ID процесса (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать. Если указанное приложение свернуто или его окно закрыто другими окнами, то оно будет выведено на передний план. При работе с браузерами ID процесса дополнительно указывает на конкретную вкладку браузера, с которой должен работать блок).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcanT-RlDrJDsc4hhNkiGxsINRjhTswTPFvL5yGtD1SX3KiN4FlJPUWizgcfty1xGpBr2qs6a974bePv14aY2vwd_0lslkOiW6PHGnFMqzfWppV4dtyduJB-VD4ZxOVsfCBqros?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

6. **Блок “Создание подключения”** позволяет создать подключение с удаленным компьютером по протоколу RDP. Для данного блока указано свойство “Строка подключения” (строка подключения к файлу rdp, здесь указывается строка подключения, генерируемая блоком "Генерация подключения" из этой же категории). На выходе получен ID процесса (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать. Если указанное приложение свернуто или его окно закрыто другими окнами, то оно будет выведено на передний план. При работе с браузерами ID процесса дополнительно указывает на конкретную вкладку браузера, с которой должен работать блок).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdB6xn2e7yyrlJ-qHXR_23h7pGaL-IR8fF8Yb09bouhdPLJGgprgsnexO-RSBD711NFzC6GX4h9Z3E894HyScNK43twWx_cx8ftNtU6WIdsxjjzhxeKt86AgJV6IOQ23VUqzii8?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

7. **Блок “Создание подключения”** позволяет создать подключение с удаленным компьютером по протоколу RDP. Для данного блока указано свойство “Строка подключения” (строка подключения к файлу rdp, здесь указывается строка подключения, генерируемая блоком "Генерация подключения" из этой же категории). На выходе получен ID процесса (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать. Если указанное приложение свернуто или его окно закрыто другими окнами, то оно будет выведено на передний план. При работе с браузерами ID процесса дополнительно указывает на конкретную вкладку браузера, с которой должен работать блок).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf3fI-oBJu5dflsQNm2KtHWyPra6HInN4JxdzHOKqEvamJQcxvcowjx-cUAB-gWG281KdWaNvcjk8BOfPXG9kznHfdLz6Koh09U-T_gTIiGdWD1mEzTRYSIIf4kp7cMpXm174ozGQ?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

8. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfU60GpHqAMamybJhykd3EhzIv13ctcEvnUD3zsihTMpJLmJKPDNdpyErrkhMDisThXKnghCW7o6is-IwtrQPwNFl6Q_wHKUgThaCXyaPrtLr8PXe_GOYkZA6cMOyjHGT-Cau9jCw?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

9. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeshq10yPyQWyXMnBQRLkn7Gjr_pzFdDxGSt4317wb-hSAw1YtV5tvd7n-9MWVsXXsHdtk5ANNkyFCTnNdLxdu85mwdAHroOH_OJs6Q7IYhrREIIlWyo9zTe3WnJkW4XsdSe1Outg?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

10. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcygCPjfYeEa20yFubWxEsX7K6QlUCzK0sJIXhNCPKVel8VP19Effr213EcCx-u5T2MJ6A9o-AXEa9yyB4jPRqbe3-nX-Q8yW3YrFyMsNv5vLf4Wyg7qlpqm9Tv5FnzFy1NTllNLw?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

11. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcTTCWI4gAmgIJyQUjYzO6ZFckDRRBV4NphBMfPiFCEN-J_0KG1BKvKGMuPHVoaxF_RHOl8qCxE8mWnjjmLdtu66SflwuQp82pY-8Qer8rnPLKXugs2x0zYWCSerdmoQS8cVnXB?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

12. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcTTCWI4gAmgIJyQUjYzO6ZFckDRRBV4NphBMfPiFCEN-J_0KG1BKvKGMuPHVoaxF_RHOl8qCxE8mWnjjmLdtu66SflwuQp82pY-8Qer8rnPLKXugs2x0zYWCSerdmoQS8cVnXB?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

13. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcTTCWI4gAmgIJyQUjYzO6ZFckDRRBV4NphBMfPiFCEN-J_0KG1BKvKGMuPHVoaxF_RHOl8qCxE8mWnjjmLdtu66SflwuQp82pY-8Qer8rnPLKXugs2x0zYWCSerdmoQS8cVnXB?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

14. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcLAIiZisc4COUXORV42j7AXcSNne_5e8APKp3W3fp9wREfAV5j7aU853Ko7nabUun-m850ExJO751EHEZ7mguSXNig53drr-atGYNMsfGciuk21Vo6LU312fxWx98ptzv_LrAihQ?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

15. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd9F1DD5_e9iLi0qo8h6Hrc4s0Qd5_zGZKBXqdlUw6zABSKJs7xb__VjmSmeyJTnaa77SbWjVb7Xx8Q8dZ48NgVtiyjs6mcX2X2crw_1DgTGhxDtCcEKYJDDINKNtsGuKAq4vfcHQ?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

16. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcygCPjfYeEa20yFubWxEsX7K6QlUCzK0sJIXhNCPKVel8VP19Effr213EcCx-u5T2MJ6A9o-AXEa9yyB4jPRqbe3-nX-Q8yW3YrFyMsNv5vLf4Wyg7qlpqm9Tv5FnzFy1NTllNLw?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

17. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdzHhQpkA62DaaPRMIhwc40jL3FqnSCg3gkDMkRir0kDN147OXQR_7VtYkSYNVbp-gc-QgPqeCRDGBjO1MQ3nG8UpQjdxqbAnQ9NrLW5AQ4VrE1iZLeYgilrBdS9sK_YAcg4zrz?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

18. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcTTCWI4gAmgIJyQUjYzO6ZFckDRRBV4NphBMfPiFCEN-J_0KG1BKvKGMuPHVoaxF_RHOl8qCxE8mWnjjmLdtu66SflwuQp82pY-8Qer8rnPLKXugs2x0zYWCSerdmoQS8cVnXB?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

19. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfIUNNiAgiaxJey65UNgP3NsV8_wk6NrIvaceqmc8nYs3CBQK3U_-FZLsA_EcvO0w3JjNlL56-37KV5DfHzcqOqjXE01R5npYvfd33pDBlYesWOiBQDu63QCaTP_PeE8HON0wlfHg?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

20. **Блок “Закрыть подключение”** позволяет закрыть указанное RDP-подключение. Для данного блока  указано одно свойство “ID процесса” (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать. Если указанное приложение свернуто или его окно закрыто другими окнами, то оно будет выведено на передний план. При работе с браузерами ID процесса дополнительно указывает на конкретную вкладку браузера, с которой должен работать блок).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc1HQhFzWkj5HFrdq39Cznc9xmqFLrWzxTRvnZbpbeF2Wk2Qpa518IdYgkcEGMK7NlY245aQ-QCwhqBWyyK6Lvm1jms0ao5g6IxnJT_wjBvGRQTbnl7OeUTB26ealQXs8ww9gobMQ?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

21. **Блок “Закрыть подключение”** позволяет закрыть указанное RDP-подключение. Для данного блока  указано одно свойство “ID процесса” (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать. Если указанное приложение свернуто или его окно закрыто другими окнами, то оно будет выведено на передний план. При работе с браузерами ID процесса дополнительно указывает на конкретную вкладку браузера, с которой должен работать блок).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfLZxJ4ef1L7LXZJXacnZ4V0BgGsp0EnUqmzByX7G-FEN6cAAHHgnyxyD2zUit8vAMdnp4syL33lM3Ctr8Koj_WsnLILHzYAH15kuftkGDkUfdhoJgcOnXwst3sfpK03TiqWgyM?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

22. **Блок “Закрыть подключение”** позволяет закрыть указанное RDP-подключение. Для данного блока  указано одно свойство “ID процесса” (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать. Если указанное приложение свернуто или его окно закрыто другими окнами, то оно будет выведено на передний план. При работе с браузерами ID процесса дополнительно указывает на конкретную вкладку браузера, с которой должен работать блок).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdBya5XA4bqq1X4QIPTKpIKqX9n2vTrqR1inrfjLHHKlGapPqpsGwFZvlquejJIQA0ckH9jyylCtBTaBXf9bmroVgVkiOk4ZP4qoD9HfRc7yo1ds7gVnL0cjikrmgga5DHvrGw-9Q?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

23. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “Последовательно”**

Данная диаграмма демонстрирует последовательную работу с RDP-сеансами.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXejd-_uL1lLbPhQQhQ3UxYgvw2y-dvbrjo3FMwko8xb286q1HgsYDW7HjD8dSk5NBiyHTxcmp5ZjWq638XCQl1nTcMEckpDcosUhPXWEEnJ2AEuNTtaVJ7WqRfxa_SaLpLvFyBRnA?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Генерация подключения”** позволяет сгенерировать подключение с удаленным компьютером через RDP. Результатом блока является строка данных, которая идентична содержимому файла .rdp.  В данном случае ,генерируется подключение для сервера "winwork". Для данного блока указаны следующие свойства:

* Сервер (сервер для подключения,в данном случае указан домен);
* Имя пользователя (имя пользователя для авторизации);
* Пароль (пароль для авторизации);
* Настройка отображения (позволяет выбрать в каком размере будет инициализирован экран удаленного компьютера. Возможные значения: Full screen - полноэкранный режим; остальные значения "Ширина"x"Высота" экрана);
* Перенаправление буфера обмена (при установленном флаге на удаленной машине будет доступен локальный буфер обмена);
* Качество подключения (качество подключения).

На выходе получена строка подключения (строка данных для подключения к удаленному компьютеру. Содержимое строки идентично содержимому файлов .rdp).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf7uLTb8SE-Me7h272XQpVC8lI64BKk1Czc0AGag-2sDjLHd4fTI-yyblHtLoMiXT7nlfEjfrLkHOgZ-Jvj4QbEluasttjIA9iprMz7ikMzSHkLJToNO9DOtgbMyiWomYhxpssrZw?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

3. **Блок “Генерация подключения”** позволяет сгенерировать подключение с удаленным компьютером через RDP. Результатом блока является строка данных, которая идентична содержимому файла .rdp.  В данном случае ,генерируется подключение для сервера "winwork". Для данного блока указаны следующие свойства:

* Сервер (сервер для подключения,в данном случае указан домен);
* Имя пользователя (имя пользователя для авторизации);
* Пароль (пароль для авторизации);
* Настройка отображения (позволяет выбрать в каком размере будет инициализирован экран удаленного компьютера. Возможные значения: Full screen - полноэкранный режим; остальные значения "Ширина"x"Высота" экрана);
* Перенаправление буфера обмена (при установленном флаге на удаленной машине будет доступен локальный буфер обмена);
* Качество подключения (качество подключения).

На выходе получена строка подключения (строка данных для подключения к удаленному компьютеру. Содержимое строки идентично содержимому файлов .rdp).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcZE7caHx_fx01LK_MtKd6VQOwt5DkCtzn_j2SEkyRDFJg6RAT0KfFNTpiYbgX-5yGoey_-M8SjMZxeuEEGim7Eq79_7_WuMmEVEcKTNk-Kt8INjz7uotc2Vos-yzQH4Cr1dmtNFQ?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

4. **Блок “Генерация подключения”** позволяет сгенерировать подключение с удаленным компьютером через RDP. Результатом блока является строка данных, которая идентична содержимому файла .rdp.  В данном случае ,генерируется подключение для сервера "winwork". Для данного блока указаны следующие свойства:

* Сервер (сервер для подключения, в данном случае указан домен);
* Имя пользователя (имя пользователя для авторизации);
* Пароль (пароль для авторизации);
* Настройка отображения (позволяет выбрать в каком размере будет инициализирован экран удаленного компьютера. Возможные значения: Full screen - полноэкранный режим; остальные значения "Ширина"x"Высота" экрана);
* Перенаправление буфера обмена (при установленном флаге на удаленной машине будет доступен локальный буфер обмена);
* Качество подключения (качество подключения).

На выходе получена строка подключения (строка данных для подключения к удаленному компьютеру. Содержимое строки идентично содержимому файлов .rdp).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcjlFgn-KOR8P1tauIQYOZnLxQ11wfXqYjFXhe8ePH8m8iL2J9BSULB7rhkgyf3O0rSTU4KJ5iX03hYuQwTkm9N-V2dPG7UlpR71LDma0fz65XVlRNyAGrVHy5I4la0LYSXefG-Ug?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

5. **Блок “Создание подключения”** позволяет создать подключение с удаленным компьютером по протоколу RDP. Для данного блока указано свойство “Строка подключения” (строка подключения к файлу rdp, здесь указывается строка подключения, генерируемая блоком "Генерация подключения" из этой же категории). На выходе получен ID процесса (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать. Если указанное приложение свернуто или его окно закрыто другими окнами, то оно будет выведено на передний план. При работе с браузерами ID процесса дополнительно указывает на конкретную вкладку браузера, с которой должен работать блок).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf9C-xsb5aotgaflpkfgHfaUAjtITNqdtIndAxW7nNUHzw7C1mWrTFrfI5vxJhitREsNLB7Zhs2zd9bZ48dkZ-eGqsqsq4wXlNB5prKThTFsHHDEamzFwkYEFhvlOsqeFYCdS8YNw?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

6. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdIUH5FQUHxMZ2UoNF3va8YzInDoHRf7J64sEHhZKRaPDYrPR6EP0dFQjv2bTCjQq_KsVIBWBA9RxFg-Iy45iLFFdpZBiof3IYRYOlvOk9whdvnXAy_bsdm7kjjGIHATy7rkWBl2A?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

7. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXehgo7Q3BZxWvRT5OBeqaQ3lzg6DLsczSH5MP9FsYigo4NOX5udyivruuR9O8iGl0_w8IvK7hPW_S-xFxWElKGlYofpF0B88z_kQg2irTjbCKR-CsjtVE5imc5J6Kua-MphBCxvmA?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

8. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXenk58-bNA7im6LVy1E6SifG85BnfDRd-R4VimYhy45CXwa9Boh7QSAhx50PivL3TbXAIdf95hKdGjhHNS7XCxowQnCReYryf-jm6s27Y4MJpDtCyEeJ2BxyWCfyUdONEtkVXQm?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

9. **Блок “Закрыть подключение”** позволяет закрыть указанное RDP-подключение. Для данного блока  указано одно свойство “ID процесса” (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать. Если указанное приложение свернуто или его окно закрыто другими окнами, то оно будет выведено на передний план. При работе с браузерами ID процесса дополнительно указывает на конкретную вкладку браузера, с которой должен работать блок).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXebLhPNgMV4VTLpV58o4UaE4s5EHfVDm7uXDUjhOsnPxWx7_r35dc0LGilZd3-QUpMOsceTls7l9eBzXKp5fq35JRZnR47TywEdUmDvVpsQ5TWcXiqrqUKTbYYorHOxdYVmwKkIWg?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

10. **Блок “Создание подключения”** позволяет создать подключение с удаленным компьютером по протоколу RDP. Для данного блока указано свойство “Строка подключения” (строка подключения к файлу rdp, здесь указывается строка подключения, генерируемая блоком "Генерация подключения" из этой же категории). На выходе получен ID процесса (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать. Если указанное приложение свернуто или его окно закрыто другими окнами, то оно будет выведено на передний план. При работе с браузерами ID процесса дополнительно указывает на конкретную вкладку браузера, с которой должен работать блок).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXftVsh_OSaIp0jfpLZlgRq7MhmRmYi9Ed-OcrcG2FvRqN-gX_p_pjUc_S-NbmKSTEle5jkqXJRdpIKfMRnN0uDr4TxiCzv8_aNhkb0_9zV34qOVIcQJLyMjM9n-KzhM79HyzJzCqA?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

11. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfuP9oyFT0m4GeEIMCEISAujqEHntWyHIG9DENz7_RRnVIXRvY2ZMq51xK4IForeEtQUZNhI02dtg-Hpsoym5caQMYXOuekVF9pmcv0fayxyaRKybIOcNAMzggcrWq_At7pmAOV?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

12. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe1p5uXxUMk1UxxJKW1C_i0Cs-VHtaOymT4a10J8_rT9kElIrR2N9ZxXRZSPNqA_TLCMNXEQplbxZevwS6AdXJuXFt2etGeLMe-Bdzd2EPnC2e3YMhe-awbsFXrOA1TcWYSkYADYw?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

13. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfKH08QgYXAvgpZiIbRf8a7a_PKogPbnNfNppnFxRMx4d9FSEJvye4ICJd_vz3l89hPbINQEhaVgWeIdxGTOO3fhbvVjckg8ytTaRS4g2JZHxqSoaW2IJclteGKvyY32REdy0h-nA?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

14. **Блок “Закрыть подключение”** позволяет закрыть указанное RDP-подключение. Для данного блока  указано одно свойство “ID процесса” (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать. Если указанное приложение свернуто или его окно закрыто другими окнами, то оно будет выведено на передний план. При работе с браузерами ID процесса дополнительно указывает на конкретную вкладку браузера, с которой должен работать блок).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc6L7B6yebnRFwnsHP3PKL1VTAapEqvudqyUKAYU-nhJ5NeaD1YO35t0AKCFvpKnhF9f-RCAeDSQ8nDMeV_Uk8kpEgWcMwkIHBPooPOF-9SUj-BwGaOkcVJUZm68oLqwrzIr2VI?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

15. **Блок “Создание подключения”** позволяет создать подключение с удаленным компьютером по протоколу RDP. Для данного блока указано свойство “Строка подключения” (строка подключения к файлу rdp, здесь указывается строка подключения, генерируемая блоком "Генерация подключения" из этой же категории). На выходе получен ID процесса (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать. Если указанное приложение свернуто или его окно закрыто другими окнами, то оно будет выведено на передний план. При работе с браузерами ID процесса дополнительно указывает на конкретную вкладку браузера, с которой должен работать блок).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfh54de0_6-d-kpVwwguFiDa8XatvELmAyqs6mpy80grfVUG34e56WhsT2KBDy9JTozHZVsBd61-hxEo6mJOo-XdLX1kx93qTUv-ozp-wng2wI60vzjFV9Ltn4IcQ82aHKWb9CC9A?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

16. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfzG-5CRn7brVcnelmGZcaxvdFuuKRkejlRfgcGD3c0uUZvST5cJx1XKFuDU0FIlzw49-4ATzx1vy_-kBza94IxoezmLA0qcYcyeP-pnQCnPS70u4_UN9TsA9D3Pw547NI2neucJw?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

17. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcPIba1WwIVdxHk5gWheqVQ98OnBAckCwuTLG_nWxjo9OPsg-baZgf85loasr5oX1WALc0EABoLEjGQhR9o2olZKkos5xEFmmmzGddS2Qk2DMV4fIArWfiQEYZg83gok1DW_e_9SA?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

18. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdJ9QbXjEwc1krzhoGcJH2WMJxRcqDIlA58JZA7RdttQsstGV6CIJf8hzSEApaTjt-llfZuKwZwVbIwD-duhvEVzdhUKTAQI3qcYeiNDFKxI4e7-tn2_jPYAw1bfhHCuGSk2UrXuQ?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

19. **Блок “Закрыть подключение”** позволяет закрыть указанное RDP-подключение. Для данного блока  указано одно свойство “ID процесса” (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать. Если указанное приложение свернуто или его окно закрыто другими окнами, то оно будет выведено на передний план. При работе с браузерами ID процесса дополнительно указывает на конкретную вкладку браузера, с которой должен работать блок).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeUxlgmrXX6nlBwPnaRfzBQZidzCLCpJUOxCf3ZgFOaLmf3SR7cCMLc0GFjrlI9CUkFUAHNVwPXcZWe9UCj-FgCObGnh7N4c_zkQXhGSRVXzwZl4orbcGEY1IeffneJ_6fnMC1buw?key=TMyE3Z4vpe5xrsGss5URen6M" alt=""><figcaption></figcaption></figure>

20. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
