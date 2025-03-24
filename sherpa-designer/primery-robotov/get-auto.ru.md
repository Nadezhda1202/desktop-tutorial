# Get Auto.ru

Рассмотрим пример робота, который проверяет на каком месте в поиске находятся автомобили на сайте Auto.ru. Исходными данными является файл Excel. При проверке сохраняется цена, салон в поисковом запросе пока не будет найден заданный в переменной OurSalon салон.

Проект робота состоит из двух диаграмм и одно файла в xlsx-формате.

Основная диаграмма проекта выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdzSeHbk8MjnyxinEgJNR45Hc9erlWibrtIgoF9H2o22JGBhBTVXfr655YQyHS3DvzI-EcG7aBFTq_5NpnFbNK-O7jZVyl-RPnf_MKt-_qzsB9K_pfWpffd5bIYY5narlseSOsp?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Запустить Chrome”** позволяет запустить Google Chrome. Для данного блока указаны следующие свойства:

* URL (адрес открываемой при запуске страницы);
* Время ожидания (время ожидания запуска приложения и загрузки вкладки в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcPtjxHVcjna4-tR9Bge0rg4AAYg-Huwq0Q8WRODxzIwb04ft0dnVvusL4x1ZoIJbRFCCqS7XJ6Ml40EbbwIfRR--TOmzHtsLeKiTzft-tCtl_Rqs5K7GaUQz_Uk_wxXLhAhsHOHQ?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

3. **Блок “Создать документ”** позволяет создать Excel-документ. Для данного блока указано одно свойство “Название листа” (название листа, на котором будут происходить дальнейшие действия).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeoWtyU6LlGkEksb5YsyDLqoNXDZtEmfB4jzmqwt76kjfix7iErQHNn7URfcYhi4asJWX8l1qbDKsCqWzTUlKZjaA5i-aQXYj-2E4SVzvUevlmMlagdHXK1BBOXcEGgnC1AIQdVvQ?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

4. **Блок “Добавить лист”** позволяет добавить лист в Excel-документ. Для данного блока указаны следующие свойства:

* Ссылка на документ (ссылка на документ, с которым в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Название листа (название листа, который необходимо добавить в Excel-документ).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcrZQRetJNYPMmQ5anPykVmSuZ5EjM6CYCPC1f47Pxay-FvN5-JPkfwFci4lasn2WW58vA9691R2LHxt9n9s0IvcZmEz82gxv-nDRB71ekGHRRcM87yoo9UnBhqQzfR1--0EHTD?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

5. **Блок “Открыть документ”** позволяет открыть Excel-документ. Для данного блока указано свойство “Путь к файлу” (путь к Excel-документ, который требуется открыть).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeM6bgJ8wWaFIW7GQOWGyNeDMpj3sAPdGGTfOXCAYlJX1mn0CvNCB8OGiP9eMdn462-ZEVmgqMBx2wyFpGePXMLmKCMlVZIQ7htVUiIlXHAu6JU93ykUJlO96H4n8T-K7owISlpBw?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

6. **Блок “Получить значение ячейки”** позволяет считать значение из ячейки Excel-документа. Для данного блока указаны следующие свойства:

* Ссылка на документ (ссылка на документ, с которым в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Лист (порядковый номер листа, на котором расположена требуемая ячейка. Нумерация начинается с 1);
* Строка (номер строки, на которой расположена требуемая ячейка. Нумерация начинается с 1);
* Столбец (номер столбца, в котором расположена требуемая ячейка. Нумерация начинается с 1).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdjHygyVRw_ngihCCLM3PLaCG9wggulxx7Clayui5Jp7T61IvOennGuA6_sP_201sdPlJq_NYjJ_orfZpcL--EUisOkZjHR6PaFk_4lV7brNTr8z0wIS3FRuljO8gSSSM2V8pLJ2Q?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

7. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено:$SearchAuto == "". Т.е., в случае, если значение пустое, то выход “Да”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdoBa4zdMX2jaa5dCCoCUDWxO-na4wLaVkxL-Xr0Zh8YRQhtUuAp4wK7tiFuyn2xC1RpyNT9e4D7NjgBmRKfLTg41OIlPrrgiNvgbC2Y7j9afQYik2kofMx2EZOtHK53jgLL4dTtQ?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

8. **Блок “Сохранить документ”** позволяет сохранить Excel-документ. Для данного блока указаны следующие свойства:

* Ссылка на Excel (ссылка на процесс обработки Word-документа, название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Excel", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо сохранить. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Путь к файлу (путь к Excel-документу).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeuqmWwwVj98VMCiOIP1TeFwnMQNlEJHiSTRutPLCJVkyZDMzSwyRDabdGKn61WQ4c5QApuGBwOIBZ8-6Q6MuDtAu3pk7bJVeTfMHGk-Fxn0siytmkeTMZDsJh2LFT7CSVbHx2DJw?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

9. **Блок “Закрыть документ”** позволяет закрыть Excel-документ. Для данного блока указаны следующие свойства:

* Ссылка на Excel (ссылка на процесс обработки Excel-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Excel", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо закрыть. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeuupNtJwDTC2lPPLsrHr7UqI-JsLO2aXF4KYHDOBpGfh4sAg_RnMvZFqwNY8QEvyeGVhy5GrcLDDiFW0chI_SX8id1LvgR5fUAL7MYUFSf7nrGwYDdSxzuHpTTklnp1ONuH6v-?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

10. **Блок “Закрыть документ”** позволяет закрыть Excel-документ. Для данного блока указаны следующие свойства:

* Ссылка на Excel (ссылка на процесс обработки Excel-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Excel", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо закрыть. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeYncjdc0mw2eMkRaiPhAxlYLXXQfetXl_4FPqq5ceoO_fKNgexV0fF9nFSGJ_xmk2x3tjLjP3UOpHg6dHMT2hENEaPVqY_pvvCFG13tUx5kEgg3Kkk8vJKTkJo9qr1MbubH_vH?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

11. **Блок “Очистить кэш селекторов”** позволяет очистить внутренний кэш селекторов. При использовании селекторов для ускорения поиска элементов на странице используется внутренний кэш. В кэш заносится информация об элементе после его успешного определения, и в дальнейшем при поиске элемента сначала проверяется кэш. Если в кэше присутствует информация по данному селектору, то она извлекается из него, что существенно ускоряет работу робота. Однако, в некоторых случаях, данный кэш может негативно сказываться на работе сценария. Часто это наблюдается при циклической обработке каких либо однотипных элементов на одной странице, например результатов поиска. В таких случаях рекомендуем очищать кэш при запуске каждой итерации перебора однотипных элементов на странице.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfFLrjoX51sHqgw14XOEYbHOSeKY2N9re83PHAjauMmZqJTqOL_RW3lnmCFpKVVI4iM5FcupFDwB0N_kW0KWSjU_RqEn0BkalFsfMf5roAuxZuh0jzSI0T3MQgpii6oDT5kHrhIUw?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

12. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т. е., данный блок записывает в лог робота сообщение о том, что было прочитано из Excel-файла при каждой итерации.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe233GudGD7amka5Lv2G4mYuzcHPnHhXhUVbcgHXGxqAzs4JJPki_yBB-FXyW75sFhKGbIKS5PmZRxePmJtsExtIKxPio1l6i6RzytcVE1nw3Eqi0f0jTY6obBVDzlBNIZpeivXmQ?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

13. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdYmik_jkqrExCM7QdYkcKK8uAHPkvghgVAOefjMQL6WLUc5uqfMF6Fj7RYUxgt0-o-0zHb2QYB-C3aELbeTi8jhLTvvzmChcqbttx1UZn-HJcNO3L3LhyTaNjv_QQ8CTOB71yd2g?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

14. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано два значения которые необходимо присвоить двум переменным, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcm_8Dop51nHeozhhE2fz-u7se3n9-BqrVkhztGIMpdHKe_OLow830tvBnv6w3QsiXn_ihOmyn3xW3ys5s3z9wP9WE0qSW7LYK7Xj0fwHUVGQSnvcINf3Y_KdTxbZB64KvO1tS_Zw?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

15. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “AutoGetData”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfAmcZ52wYR_FkFacoPcvGXlyOynlEM1gixBGHDPOQyaMAQm3GkegeIWv05ONHdezvBFB5niuM2bcTQTYn2lreY7eL6X4taxwiMK_JdRhLAotNiU-NzA1YYMqELLOxFaP531hdGJg?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

\


<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcCGbshZFSIKnpjMWkSE9_tNLWO8bqiBRpNwdmm6sBeU1U4kTRYtCpNtOcdpkxMYcgeQfxtIFp80RA-dnRo3viwqM31-Zmk99nKblPqdVJEgX1HQX56iTAjZHnFrd4U5IVkyF-o?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Клик мышкой”** позволяет эмулировать клик по заданному селектором элементу приложения. Для данного блока указаны следующие свойства:

* Селектор (идентификатор элемента пользовательского интерфейса);
* Действие (выбор действия, в данном случае, клик левой кнопкой мыши);
* ID процесса (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать);
* Автоскроллинг (установленный флаг включает функцию автоматического скроллинга списка до элемента, находящегося вне видимой области).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfhl_z9z0pYMq8j5-FmKEK8_nY96z09bT9-qOV9yTOHu0Gnjn8nVaMxz_Y28TDtgW18GAdQNX7gyU0psQZXQDGeYZpyYlts55AEtyPUrpAJU5_nAI18FLapBpO1F35pxtI8dZHgaA?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

3. **Блок “Записать значение в ячейку”** позволяет записать значение в ячейку Excel-документа. Для данного блока указаны следующие свойства:

* Ссылка на документ (ссылка на документ, с которым в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Лист (порядковый номер листа, на котором расположена требуемая ячейка. Нумерация начинается с 1);
* Строка (Номер строки, на которой расположена требуемая ячейка. Нумерация начинается с 1);
* Столбец (Номер столбца, в котором расположена требуемая ячейка. Нумерация начинается с 1);
* Значение (переменная, которую необходимо записать в требуемую ячейку).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcoC6_J6JYbbzKTeocjIlo67M1w69WS-YKabt0rdhre-CcDMA8rWLDpUyo1n4w9w0QKmONZ5Nb6dHU9iIvj5KzBHoT35lK73ReiyM6NbdNvNnklvNVdS6NE58jq94O_oXIov3H0XA?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

4. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано три значения, которые необходимо присвоить трем переменных, соответственно.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeJogZRqB2Mt0E6qeMFxa4_ukeTb31QO58P_LI2ZiYJVPip6ES7ppf7J5ypFpD-l_hLBFtXjG037945VTrghshl69kkZLibuQy25NcEIq1klEQzNDKrPd4jfIKOpgmFTY0ELdHI-Q?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

5. **Блок “Клик мышкой”** позволяет эмулировать клик по заданному селектором элементу приложения. Для данного блока указаны следующие свойства:

* Селектор (идентификатор элемента пользовательского интерфейса);
* Действие (выбор действия, в данном случае, клик левой кнопкой мыши);
* ID процесса (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать);
* Автоскроллинг (установленный флаг включает функцию автоматического скроллинга списка до элемента, находящегося вне видимой области).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc51RGdJZaQm-m78qA05i5y2IQLSqrjzao6DoGb8mvcD9YECtCIkulb-hIQFRmoMADdI1nXCeL2nmOK5yNRrvVzJLsD-qvrBLrE7onaoCs8WVbtrHTTufhQfGu1nn3wtaA0S8lm9w?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

6. **Блок “Нажать клавиши”** позволяет эмулировать нажатие клавиш на клавиатуре. Для данного блока указаны следующие свойства:

* Клавиши (текст или клавиши, которые необходимо эмулировать, данное свойство задано переменной);
* ID процесса (переменная, в которой хранится идентификатор процесса и вкладки браузера, используемые данным блоком);
* Интерактивно (при установленном флаге, между нажатиями клавиш будут вставляться паузы);
* Время паузы (пауза между нажатия клавиш в миллисекундах);
* Выбрать все (при установленном флаге, перед началом ввода посылается сочетание клавиш "Выбрать все" (Ctrl+A)).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdD_e02Gu8QKFa37SkPN5jB2ySsSXLFUgHG5PeVqwWDdJSejAjEKv9q9P2QDbCUP61CgVxud0nyQv3bvX7mSyfXsR7gv_Pof6SFW3pzlJ40Y0aOQcYDEwhegYFc3WLtGy5Och7uQQ?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

7. **Блок “Пауза”** позволяет приостановить выполнение работы сценария на заданное время. Для данного блока указаны следующие свойства:

* Единица измерения (единица измерения, в которой задана длительность паузы. В данном случае, секунды);
* Длительность (значение промежутка времени в единицах измерения, на который будет приостановлена работа сценария);
* Запустить сразу (при установленном флаге, задержка будет применена сразу при первом проходе этого блока с момента запуска сценария робота).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdhbZv3F8rJSo0Wk_dybWzIsk3JabEHPmbKI6KXDUGl5Dn2IX8SXhnW742OhDwEiIPZ2QU8ClheIVPR1a6O8-Z9E1C6nC8xP4efHFltmLJWamygr38rZTjLmSdT1AVcYEmke9jXIw?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

8. **Блок “Нажать клавиши”** позволяет эмулировать нажатие клавиш на клавиатуре. Для данного блока указаны следующие свойства:

* Клавиши (текст или клавиши, которые необходимо эмулировать, данное свойство задано переменной);
* ID процесса (переменная, в которой хранится идентификатор процесса и вкладки браузера, используемые данным блоком).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdLGZH2I9T8tArmklH8Sx2qOz_AyoCp8Y6zLQxc1nhNEc8XKtEwGAT53UvKso9KhURnEfjZdQ6AcEX9zWcqRwCVZYaCEUq9sW__wZ4nN_Wn2aMlEnnQk4vu7qDXq0a8PwtG0EE5?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

9. **Блок “Пауза”** позволяет приостановить выполнение работы сценария на заданное время. Для данного блока указаны следующие свойства:

* Единица измерения (единица измерения, в которой задана длительность паузы. В данном случае, секунды);
* Длительность (значение промежутка времени в единицах измерения, на который будет приостановлена работа сценария);
* Запустить сразу (при установленном флаге, задержка будет применена сразу при первом проходе этого блока с момента запуска сценария робота).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeq5EV8VYgN4vund63KS9NUrcuaS85SwjIW9CKpSxjP6tmCtEBvN-BN-GoruEei-rlCc8m-o0Wcyw7iJa-0ai1ktwdVlnTMzQIcG1HBStygZrOrBoy7ZPtPejfCzIfFqb3DZmr9dA?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

10. **Блок “Извлечь данные”** позволяет извлечь однотипные структурированные данные из веб-страниц (результаты поиска, элементы меню, списки, таблицы и т.д.) и поместить их в переменную в виде Таблицы Данных. Для данного блока указаны следующие свойства:

* Селектор (идентификатор окна браузера и элемента веб-страницы, либо набора однотипных элементов (заголовков, ссылок, блоков текста и т.д.), которые необходимо извлечь);
* ID процесса (переменная, в которой хранится идентификатор процесса и вкладки браузера, используемые данным блоком.).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfB3a-IlpfT1OpXoyXo_8YjMw9ZvfVukuDJBkGaUoUCUFbbZbz4zPDOjev3GujZnN9lwF02QnmGduCjrqf4MHY-Q6hANbtYO6RH-HTBXonLAYlks9t9lb2HOEGRb37ZVsLggB61?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

11. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота сообщение формата “Страница 1. Количество 55”  и отображает в статусе (в верхней части экрана) текст этого сообщения.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcovFoUfswuJQzSckI-uzP4QUVzuTT-MDuSQvdKTyF5RrXuX4BXOjq83HzXc0JVA-385cdCWuZ8OjvQnQXzXXcQ8bQaTnQdJOLfcHqCPv3k1DSZwl4rMmdnEQn0UVVrSeQCQ2MEKQ?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

12. **Блок “Цикл для каждого (Таблица Данных)”** циклично перебирает все строки таблицы данных.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeM1BNEs0fS98YDbHbmWQp7jzzEVwHakdBTpEqQ8b_AbcipmUFRBBM9YP1remCDzZx_ZCK56plXwQ0oh1Eiu75Tc_bjivPN9B-Beg-7V-coE51HjYZb_LBEqtZ4uOSRfcAqN5FCLA?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

13. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить конкретной переменной.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXci7uE2DO7_Y2D3of52Y_MG8P3yuZ3ppzCo8hhRp-xnlukv8wHKjob5A4fyr4hNcLaxnYcz-eVHqCnE5YforLRso415PexoyE__WcLuxzxP6k-K0jRPA0hJLv45vaKHYmqWE_BvhA?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

14. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”. В данном случае, в качестве условия установлено: $IndexPage < 5. То есть значение переменной $IndexPage должно быть меньше 5.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe-N5PKDR72XeWpgNyqQHedfxJ0vJXMB5pqGy3mGEkoIslFEpBQoyP2GMkzs7f_d1cgf8oUnzlWvygzg4j47lwdM3fEsJkVfbG4cvAH7Sf6FljTrBPMzDs42jaNxhgQL5wcGDpwVg?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

15. **Блок “Клик мышкой”** позволяет эмулировать клик по заданному селектором элементу приложения. Для данного блока указаны следующие свойства:

* Селектор (идентификатор элемента пользовательского интерфейса);
* Действие (выбор действия, в данном случае, клик левой кнопкой мыши);
* ID процесса (переменная, в которой хранится идентификатор процесса. Указывает, с каким приложением необходимо работать);
* Автоскроллинг (установленный флаг включает функцию автоматического скроллинга списка до элемента, находящегося вне видимой области).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe8aboF-5i5mHmt_JNUnOCDB_dpz0eqY95zv9wS_dMQygXIjoMaTjH-A6e5aZJU9YiP75935KEykmhV2lwd8eSrN6lXBCAvgbwsqKC8ukjKWgXPHZskmPhVxk5B987Q4Jc8z8teTA?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

16. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”. В данном случае, в качестве условия установлено:  $RowSalon\[0] == $OurSalon. Т. е., если значение ячейки 0 в строке равно значению переменной.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXetabKTStPU8Zyl0eSB-zPGpUmlogKFhKvOReHy3rZtDP0AA-tXbHU0mDQfPaW1hH5l4gs7mdn3_9klaiRpufAzPLhdZUFlCwARX_o6OmjgNQfguSXLVAoQFNMQwIfPfHlm1J2Edg?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

17. **Блок “Записать значение в ячейку”** позволяет записать значение в ячейку Excel-документа. Для данного блока указаны следующие свойства:

* Ссылка на документ (ссылка на документ, с которым в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Лист (порядковый номер листа, на котором расположена требуемая ячейка. Нумерация начинается с 1);
* Строка (Номер строки, на которой расположена требуемая ячейка. Нумерация начинается с 1);
* Столбец (Номер столбца, в котором расположена требуемая ячейка. Нумерация начинается с 1);
* Значение (переменная, которую необходимо записать в требуемую ячейку).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeVdTcwKpj4Ff-F-9dakd9QOVMR8RQh0zW6cNEgpF1LXr-I1G3_bmj5aDJ9a0GsPoxbMB6fwRa0RgwH7HVf4wuNoXMKhuGeLqTBEjDJrqOn3Pech1xb34vDdwNbx8RZ-SazOZ3x?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

18. **Блок “Записать значение в ячейку”** позволяет записать значение в ячейку Excel-документа. Для данного блока указаны следующие свойства:

* Ссылка на документ (ссылка на документ, с которым в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Лист (порядковый номер листа, на котором расположена требуемая ячейка. Нумерация начинается с 1);
* Строка (Номер строки, на которой расположена требуемая ячейка. Нумерация начинается с 1);
* Столбец (Номер столбца, в котором расположена требуемая ячейка. Нумерация начинается с 1);
* Значение (переменная, которую необходимо записать в требуемую ячейку).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd4xqdzLpIhBGLEjKIAq6oEiRrkB6j4xno205wYeAYVUjLun8_d5AyOloSuFZDedXq-WrNz2swcBB46TP3-19L7l0KhabveIehWQTkJU4YIN70s9oUybpF1b_G5v1CZqQ0-nMlkTA?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

19. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить конкретной переменной.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeP3l9xfkfzZLSmYfV3VyLnU1PyeBT6ou9jY-Nkygz5080cK4ZsHablrk6kDTvPZYRAqVA3hZgW7hYkA_1DGwJsTs8AYOsHa5PHqbOupKIP5JB36N7IzmyL91316nYOHscXHC1MUw?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

20. **Блок “Записать значение в ячейку”** позволяет записать значение в ячейку Excel-документа. Для данного блока указаны следующие свойства:

* Ссылка на документ (ссылка на документ, с которым в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Лист (порядковый номер листа, на котором расположена требуемая ячейка. Нумерация начинается с 1);
* Строка (Номер строки, на которой расположена требуемая ячейка. Нумерация начинается с 1);
* Столбец (Номер столбца, в котором расположена требуемая ячейка. Нумерация начинается с 1);
* Значение (переменная, которую необходимо записать в требуемую ячейку).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeyOI8uOsuEv8he1ZAiNUxSJ3rko0uSIVcGuHKzM5ZRLdWeXXKYitcodtFGnVfjeIJQ8MNAR_bzi-MopVEs_H4XsSrgbCeiH94xhdL6CrJVCVsynKzBspFPp29hwhj-XQEVhWTW?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

21. **Блок “Записать значение в ячейку”** позволяет записать значение в ячейку Excel-документа. Для данного блока указаны следующие свойства:

* Ссылка на документ (ссылка на документ, с которым в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Лист (порядковый номер листа, на котором расположена требуемая ячейка. Нумерация начинается с 1);
* Строка (Номер строки, на которой расположена требуемая ячейка. Нумерация начинается с 1);
* Столбец (Номер столбца, в котором расположена требуемая ячейка. Нумерация начинается с 1);
* Значение (переменная, которую необходимо записать в требуемую ячейку).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc9RQWE13t-eWs7QpC0eOa_yJU6Xi9-FqoijXiT1DzGAIpoXTqW52Oti7AhoQfUF0EgvY0Nf9x60bPcmsw3_ONkGwZiAUg8PmAh1qRTjWPo4w5rV7SS_0Obv7QarMPjqlYNm2zrww?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

22. **Блок “Записать значение в ячейку”** позволяет записать значение в ячейку Excel-документа. Для данного блока указаны следующие свойства:

* Ссылка на документ (ссылка на документ, с которым в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Лист (порядковый номер листа, на котором расположена требуемая ячейка. Нумерация начинается с 1);
* Строка (Номер строки, на которой расположена требуемая ячейка. Нумерация начинается с 1);
* Столбец (Номер столбца, в котором расположена требуемая ячейка. Нумерация начинается с 1);
* Значение (переменная, которую необходимо записать в требуемую ячейку).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXep850tCk1y2Tyfwy3QWiFDmRgiNlkHvGxYsoSFjKWzq9xv-5N4NWzclOaIOALwvJ9cqZz1hRTl0vw39HLBGft9UYn8Mg0R1-0t2fLpg6crufYVcn1S9D9T5Q2ZQRaB78GS_ZBE?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

23. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить конкретной переменной.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeK4GF_MWuZnUjjgKU0XnKCYR2VEhfMMFEIkcuyldquhzrSiFqCW-5MWoXB9QJqTsgW52EhwJrTf9J6-MR9Wtpl1lec3e_ZKP_XfWHtYTOc66nktUgIa7q3dCzvRSl3rTXWeybGFA?key=EEm2CmjYFTZ-lKSyfuFNo1ar" alt=""><figcaption></figcaption></figure>

24. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
