# Complete Enrollment

Рассмотрим пример робота, который предназначен для автоматического оформления документации при окончании студентами (слушателями) учебного курса. Входными данными для данного робота служит реестр ранее зачисленных студентов (слушателей). Помимо приказа о завершении курса и сертификата о прохождении курса, для каждого студента робот подготавливает нормативную форму реестра ФРДО, установленную законодательством. Данный процесс часто используется в учебных заведениях и кадровых агентствах.

Проект робота состоит из четырех диаграмм и четырех файлов, два из которых в формате xlsx, а остальные – в формате docx. Если описывать пошагово, то данный робот работает следующим образом:

1. Загружает шаблон “П1\_Обучение\_шаблон.xlsx”
2. Перебирает ячейки с номером приказа.
3. Переходит к сценарию из диаграммы “CompleteEnrollmentProcessCreateWord”, которая вносит данные "П1\_Шаблон приказа о завершении.docx"
4. Переходит к сценарию из диаграммы “CompleteEnrollmentPrintCertificate”, который заполняет "П1\_Шаблон удостоверения.docx" и отправляет его на печать.
5. Переходит к сценарию из диаграммы “CompleteEnrollment\_CreateFRDO”, который заполняет "П1\_Форма реестра ФРДО.xlsx" и отправляет ее на указанную электронную почту.

**Основная диаграмма проекта**

Основная диаграмма проекта выглядит так (для удобства блоки диаграммы пронумерованы):\


<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc4mza7KawzH7GKyk0AZBkpau0Ph9Cu4LbtQEV2-Tzv38QXyWCFc1e5f97L9sljKAcHwNrCMUAshFjsg66w-9_kMKiBK_Na3LqMRpPxx9Ac8ofF7_kqOowEby7F6glQ-bXk1G4_5xXsTcwJ8EBFC9lAZCAY?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Загрузить Таблицу Данных”** позволяет загрузить “Таблицу Данных” из Excel-документа. Для данного блока указаны следующие свойства:

* Путь к файлу (путь к Excel-документу, из которого необходимо загрузить информацию в Таблицу Данных);
* Заголовок (при установленном флаге первая строка будет использована в качестве заголовка);
* Лист (порядковый номер листа, данные из которого необходимо прочитать в Таблицу Данных).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdov69fBQb3iTFeJHWM38fO41hKtTYy_r3pd7Sh2DOemiScW6d6rszJqoSf47KQz2Mj94LrRemXRD9SKB8CRCkhVyc7aphjJSfXxcOlcZS2CsDo9ThIUtckQiVpUF90Vl2KEJqVguDgPJtIoyhLcydPyga0?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

3. **Блок “Цикл для каждого (Таблица Данных)”** циклично перебирает все строки таблицы данных.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeIHr5aTgvQYPhkX7dQimANWi-D-mquG-xcdJB_DQldODftemLhIYJ7MKvIjPqd33hHER7sSU5NMuz_oFXyi0XDyPFTk0oeVmwe8LKZdkS4BkMWSPE0-TkqjgPptQlL3pLC90a6aLU-eS_UO8oJfO4VVqFJ?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

4. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария, в данном случае: CompleteEnrollmentProcessCreateWord).&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdtdYgaQtsrScrXnWYaozLtd9jB-XGjsBIj-QNL_xGqc8OwJz60jNjrsjNJ-BS_DpheBvXd6vwnMwVRChTH_VvTFRspuutnYSxlTKOn-2c4XuGc01CGDSoOoTAEocbj7dcHxLqBvSxUFMGRgFFD9q1lBi8?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

5. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария, в данном случае: CompleteEnrollmentPrintCertificate).&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdBlv73Tn-q4actgKD_JtvgK0ZhK4-SZPFkJYINNWxfdLax1co_5kNnjpjPC0vL0UPR3aUC9UXIu-5wG0SvzsvdyQcKbMN_AYxkAEllDaA2FfCrVhjCIWAUWbccB8F7Fhm_wLEOyfFO3cMwdeTvfLzbaIk?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

6. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария, в данном случае: CompleteEnrollment\_CreateFRDO).&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXegB_AXIC8TfnsShatPkWyLqhXJ5Dh93W_-2cgAtcAoGB3SKHX5bkjhD1rQsC-isOxXPKXWBY63NszQLmZmudizCb8hu2H_z8zev-Z59Ujhu4WejgCQ1JVCfdYLUDMWHs7SSJdHr_hhQAsSrGPcPKbXCtZR?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

7. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: -Not \[string]::IsNullOrEmpty($Row\[0]). Т. е., проверяет, что значение нулевой ячейки в этой строке не пустое.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcby1AQs9klLc3bvfTwo6CJzQpGC-UZRNxNdI_rlmA9GcfQtKVIkBRRV6hAXxQk2keOg2xoMEf8HLtYOIoULzp2y7A68tw0vuOCcA65lleokMnyRLn1Jgq2ZrO6KlceaQuJN8so5jHa8fJVS00zkeNAJXk?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

8. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано три значения, которые необходимо присвоить трем переменным, соответственно.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdX0GvSdlv8eURMnesOzmAYie3C2YG8THqrkiNi_VcnihXMTdMlPFpBLu4EePaVdF8CC1zF4Ulcw8vyVM04l4q7o3ua1rB-2F85be4IFmG9-6qRghNjIebAvF_-x4dpc0vt6HNY11ZuZVal3ildWOPFU0y_?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

9. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить конкретной переменной.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfO7WST7F9n9zXIQVvA7FL4GEitPWXr7zYgTX1P_zmKgOJj_Y_w61Kzdoij8qG_aKvu3cPyiruNM7VZoS3E_3_lzsIeRgX9a9tjZiVcVWSIHaK7yemBPdaCgD8Rk1RRP7ZgztNvMGgybO-gV1emqJBIxAAg?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

10. **Блок “Выполнить выражение PowerShell”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используется одно выражение: $ListFIO.Add($fio). Оно добавляет в список $ListFIO добавляет значение $fio.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfIIwQiTFPEArGLUjFdJb9pdTKfogQnFLzCjufc1RhCytaUIcPtOFVZ-XXvNhGvk6a1IQbXScj0PBpeOF4n5-JOV9WE0kKYhI3UfW6yzejilOVrsFfKMcumpHVCwQTABnkI7sXYWX0FKx6dtCp4lYtALUGT?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

11. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
12. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота сообщение об ошибке.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXey_03bottcveDiCgqXkvVMo9oUFFuEeFDFB1Eljia7befl_vJdGtdQMMxzafewNIWCot4mmLt4fgFU9mQ_s_I-qnsvnNiBJDX5duJzzBsYXgyeKj72PlGmU52dOSZkw0_5FBrfbORzOKwwRc0EJgsMMSMj?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

13. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “CompleteEnrollmentProcessCreateWord”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeZr2dutjQe8SiEAxeUQdD31IVKi1bhVpQUGnFt2lWanzsNUDVb8uelAuOPPASDGPMgk3KRKrBWHJavV7v5D5PGXkO3X5YFOiIJRnynxqj68nYg0jhYWaWGLFeFUZH0i9tCAunJz_K6GUR3nzY0WdwapT1V?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Цикл”** позволяет повторить цепочку действий (блоков) несколько раз и при этом посчитать количество итераций цикла, записывая текущее количество в специальную переменную (указанную в свойстве “Цикл”), которую можно затем использовать в других блоках. При первом входе в блок значение переменной из свойства “Цикл” приравнивается к “Начальному значению” (в данном случае оно равно 0), а затем выполнение сценария продолжается в сторону выхода “Цикл” данного блока (в, так называемое, “тело цикла”). Как только выполнение сценария вновь дойдет до данного блока, значение переменной “Цикл” увеличится на значение “Шаг” (в данном случае, он равен 1), и вновь произойдет переход в сторону выхода «Цикл». Как только значение переменной “Цикл” станет больше или равно “Конечному значению” (в данном случае, оно задано переменной $ListFIO.Count), выполнение сценария продолжится в сторону нижнего выхода блока. Не забудьте соединить выход последнего блока в теле цикла со входом данного блока или какого-либо из предшествующих блоков.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXduVQ40JN8fMhlmCJwRDMQCRFRX80ctqvtmfEPuIRTlk-aXyyb_sDgBlaOB63L59QLFI8Z9Wg4H_NPU9w9dA_v7NUOYtkBtl4J4jjFBessgVMH1_1w3r6qABrqybp-9zVtbBgeBUI6q7nhS_LjeZ4tUqXo?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

3. **Блок “Получить путь к файлу”** получает полный путь к файлу с указанным именем. Для данного блока указано одно свойство “Имя файла” (имя файла вместе с его форматом).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcA5vt5TwRg8V7ozFV63gKrtYh-juQkZm_o17qxIIvZ27LrN3RHvnJi7YCu_lS2rpBLIthTjPtZfN0bAD72pAQKOE2wsUEPsGf7hmp-R9FDgPykwAfJXq2xpNHInH9A8vyplVEkS-G5LxIOwPll9DvpkRV9?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

4. **Блок “Открыть документ”** позволяет открыть Word-документ. Для данного блока указаны следующие свойства:

* Использовать COM (при установленном флаге работа будет производиться с помощью установленного Word);
* Путь к файлу (путь к Word-файлу, который требуется открыть).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc1G1WfHULIeuQrU1aBJU_dxVilkI3AJb1lpqyMNqwtfYMCypa9SLoifvD9AmiBeqSiXaD8TZDfh11fd6VBnHb3mdjgpf1PDfva-FkwCucPY_Cgx50LwawQU8DrhtAJuixvkIWbA2vZYSJabUdxBbrLbbcN?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

5. **Блок “Заменить все переменные в тексте”** позволяет осуществить замену всех переменных %variable%  в Word-документе. Для данного блока указаны следующие свойства:&#x20;

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на открытый Word-документ, в котором в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdLEZCB8xKjybOmc7Jq9aFu1h73kvwBh7itZxQbMKpKla8Iln_3KNN-4ArsmNHuhlLHIc22Z2EppaGI7qebYNV2wNguzTxBE3AkVvDpXUyeIwT0PycJMv7rsBmF-sOCGGWrhrWtRlfpRuqY7Zf0gphPI03E?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

6. **Блок “Получить путь к файлу”** получает полный путь к файлу с указанным именем. Для данного блока указано одно свойство “Имя файла” (имя файла вместе с его форматом).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXetaCApxUqIAz8kjQWSk4QGd-eRVhJqhW1nNNLFNeXSb8tG_1rGn0f68VYBzQ9uvsHRAR8vRlIw8C-O9Qgo98iXxMV4DvZZcr0Ba1_OawevX20OiWcKBrgC-yyszs9GH1EP15Zmhvru0fvYHKCp0j7-_Px5?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

7. **Блок “Сохранить документ”** позволяет сохранить Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа, название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо сохранить. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Путь к файлу (путь к Word-документу).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfI6u9q5qNwXsW4y1BaYDvMOoTAC9689PpRm34Hdkjp5d0HDFn_JnGszXoYUS5MEP3CiuS1jdRQ8EaPWAr2IeiRgIBqDy-DBlC5WXTgmXDkgYCC4FOZhnoP9IlCgTNpXEE3r3irjYpq2jJkilBqRB20VAvQ?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

8. **Блок “Распечатать документ”** позволяет отправить на печать Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на открытый Word-документ, в котором в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd5XUsgSdI8jMafPAEq4tOjhkmVzQgEWuXnv7BeXQrChugwwBp2zSFLI5RSWZRLgCK65MgMDDatrxTkGqJjIlOGNmr6BcP9nbf-aM0va1Tw4-ZXnoqaNdj34i8qH3PYxi2CzqkAITEDy4fGMZpCqlA-Uq8w?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

9. **Блок “Закрыть документ”**  позволяет закрыть Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо закрыть. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeE6VJEd6CRLd9YkCwwh1YTawwC6jpmScTyXrfPxb-KLu5U_bVCSILFwLGdreR5CTwuhWfjfrQtRJl6WVQ5KVvrB7h1kr_o4XYOnJbxhMo2GgX-APl3tMMG_gaT_1W1dnB4RZPGxoCLu1II-PGNoy_mO0k?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

10. **Блок “Выполнить выражение PowerShell”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае, используется одно выражение: $ListFIOString += ($Index+1).ToString() + ". " + $ListFIO\[$Index] + \[Environment]::NewLine. Оно добавляет к строке новую строку вида “1. Иванов Иван Иванович\r\n”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeem4jXFX5zxIKS795aGESX3avBx7rHrySC2PFPo4DU9c9sMkBbKBSVQmlcUwu7Xl7tsyCxGrxck72egRtK6eLKx7VorLxeDl_dwt0C0OgEbxxxcwrE3soJqyWwE0bnPq7B09LMI6juXBsPwoX-TnAVjMrl?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

11. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота сообщение об ошибке.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfBngd6Ihy5ClZ_nT8hTkFyC7PHCl2045wiUZizIrI00xy_ap3Qd98cOeun-gX_dXXpkj1ZvH9_jzZVfE1UvlW9DTFOub5HgTT4xwrl98ZMTT0aGSz6EebE2fIhZ2mSA_PEryLPI9B5gHwYxjpn-rieQZE?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

12. и 13. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “CompleteEnrollmentPrintCertificate”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdSng4BpbBQ15GN6MFIHyXae0bcWggSn3XtqmJwic5U3rJrqwFIilzELkD4j1ckOZWV5_EEBfFfrSbFdNLN8XG00W6qFaFJDE3sIdAxETQ7mD6GlpydczoSmvThjk_dBNr52waAYLHOOIEZZ-KhPuFPFjk?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfPpcj-1ygRYnfbkmuF8UXeJCp_dqIfrDWCEOgiMfm4_WiAxqZnf4Rpf7Qg_OyHjWbYKpDX9odLEp6XOZUK6Ci1XSJmWW-jgjJ6Za6nll9_nst5Y8xYgwi0Rh5MBnvEq2gHH6DL2RyBbujTLCLkUHIjWmgi?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

\


1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Окно с сообщением”** позволяет показать пользователю модальное диалоговое окно с заданным заголовком, текстом и набором кнопок. Если используется окно с несколькими кнопками, блок позволяет записать в переменную текстовую константу, соответствующую нажатой пользователем кнопке. Для данного блока указаны следующие свойства:

* Заголовок (текст, который будет отображен в заголовке диалогового окна);
* Сообщение (текст, который будет отображен  внутри диалогового окна);
* Кнопки (кнопки, которые будут доступны пользователю для нажатия);
* Изображение (изображение, которое будет отображаться в диалоговом окне).&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcM_5803ZP9HxSjAlkpZKrmH3qeily8H4uWwTItmlSWBKfccppxB96-RGA3UCldlA15brbSzHaNznCgqrEzHhJ4kEM9ewLsoGAzxU8F0jLiVUtkr-sSNjV7pUh_8NnKjansKKD24TKP_aS9tmd7QdyarOMx?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

3. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $Result == "Yes". Т. е., значение переменной $Result, которая будет на выходе из предыдущего блока должно быть равно “Yes” (т.е., в открывшемся окне с сообщением пользователь должен нажать кнопку “Yes”).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeFk03wvwhdQcwV8T0SCbOjaGqw9LzkXKosP9aU2L9d1ySk1gz9A-TutE2ER7eHe1xU6E0DJw6mc0moj-9qvxvgkJtOZW-H3khKVP7DiX7UyzqGWvvpp-ZS-lc7l75u0vM57P5UmRgI5nnHEYLqnl2v8dFt?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

4. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
5. **Блок “Цикл для каждого (Таблица Данных)”** циклично перебирает все строки таблицы данных.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXenQWTG9Dt6ypJRsm5YenomsXGMRRk5XKeJmMLazh1lkBOIlA4aUbd5fOCgZCWNfkb_e3YZgIqzgPJFYUMGnivpzKichB0IBQ82BP71BfuipvFh2v9WYHjQMdaie4IwQgt-g8i-mXy1zFPiZbuHjJBVhWAn?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

\


6. **Блок “Условие”**  проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.&#x20;

В данном случае, в качестве условия установлено: -Not \[string]::IsNullOrEmpty($Row\[0]). Т.е., проверяет, что значение нулевой ячейки в этой строке не пустое.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdLtd2eOg19V6KjSJZJwILxXbN1hLdiciVdv81RF_vbLLaj6ttD5Mbtqw7V_eqZFV-f6__9ZSNz_5Hfbe6wQDoZp-TP9CW1Vh9WrdPRnD02ny_Si4dkhM2RZkJifN8lbhu8HCNCWnzXDWQYKSkUneKGgTSs?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

7. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано три значения которые необходимо присвоить трем переменным, соответственно.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeofvqINxLv5i4XMKGF6S2OeSXirpzJFjb6wBK4HIYbZTo0fZjfEC1jFNRMiOnKOjoFODJ1E9YTT1J2oRlK6EK1ys33H_ZiI0JVCrEov-Cy88Y8iG81Z90_Qq-UNNkfeILj87WHcqxZ8GcF50FDDn2Jwavv?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

8. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано три значения, которые необходимо присвоить трем переменным, соответственно.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcq9jrF5Dscex9CYgDKCFE0nc2tLmnmvXPoF9-gtid0BxAYcCt3wu55gu1hzwazROG67mEhWnmR-1eTkP9RJFYwTv2NmI_pJn1gCrVGmFIwi9h80Zs6IRa_k4BB1SgRvHcKkeNjWYAhCTHWfzirdb5XYTvt?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

9. **Блок “Получить путь к файлу”** получает полный путь к файлу с указанным именем. Для данного блока указано одно свойство “Имя файла” (имя файла вместе с его форматом).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe_frG9d0QYigMoYTOGzE-4FNV9f35BtPJQxfro1vqZO4N2_74wmyCycrgAh4Qh-nI9M2LHsUvWsUZYkHGVEGdavx2oOH18HwNgHQj9Dd643LMKfrL40NB569MonEcDtJntrbOtHVs8ZdjxjNGgGJqnXhpn?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

10. **Блок “Открыть документ”** позволяет открыть Word-документ. Для данного блока указаны следующие свойства:

* Использовать COM (при установленном флаге работа будет производиться с помощью установленного Word);
* Путь к файлу (путь к Word-файлу, который требуется открыть).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeB0h3ixgmKL8VwoRlEvgae4S-RjwNQhI9mcBKXFwlKfcUWwhLePRnz2cHIS1u-1gasMjDmUtuOINtXX-WNsW8ztTRcq5znoR4-Y5W2jP3TwPhixebk_MgclY7r9eH0N29-scCvphwD81qtulMu9-y7_mMr?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

11. **Блок “Заменить все переменные в тексте”** позволяет осуществить замену всех переменных %variable%  в Word-документе. Для данного блока указаны следующие свойства:&#x20;

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на открытый Word-документ, в котором в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeocfN7-dFQpMqfU8aGJ-XTHfJErtWKRfYNreWqQAHHgymZ-KoH6q4OYJ-ATQGwrXTtfW0QR8yses_SWavgjF7GIcuuipB5Wtk8duMobsohZtt5jOYPHX_iqWfmtZpYJClsS9HfNA0dPySXzYEbT-Ix4l0?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

12. **Блок “New File”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXewznWWSuOAjmRcqF3nEND2MiQPGnCLrKOQ5Zr2yVgD_vle0nzMdOySkVOcY1Q3nKOsA6qbwvFSoeMpyTWxBMlEGczPXbPjEhnEPW2lI3gCDa1YYRJ4ctHNVd3g99ESWrgo8rFwyrYEUuE31Xm8pTbGbJg?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

13. **Блок “Сохранить документ”** позволяет сохранить Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа, название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо сохранить. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Путь к файлу (путь к Word-документу).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdFXYb4iQmFrrGxTzNwzGlb6Su0mEXzDEZJqlTA1Tc-Qeb1ysjRunQE81b_HgJ_L9b3Zyt70DcyRUxkCi6fi0RndQyUG-KFvB0U0t-owfl_oN-QcpLVf7Hl30rdhC7X2ubxKmchuGAIDblc95h0rFwLUEuP?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

14. **Блок “Распечатать документ”** позволяет отправить на печать Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на открытый Word-документ, в котором в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf4x7ullHOdVRmTWepRs06sRyRlR9KTBcF-pfsjxE5MO-8YJz9VsHZDgm6xqq6S9DHyCo3mDoCsGh7cZKg6hvr4RYdWKQJCNr2oMe2_1Fhf7ljmGi0W4MSKDwLZWf0P5lalrQc1ZC6mapgZvb_kU-u1M0bm?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

15. **Блок “Закрыть документ”** позволяет закрыть Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо закрыть. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcdx3FrPwta7yqRYpR10tiSf4DrOkW7GiwHLso1phhNWPCTO78Z5w3XD76JUkiWpiQ0oQLhfR2PhV5icWp8oAiE55eQ6KILG6T4A2LcEoC_ukUwdo8AMa7V9w_ILK4Fx8TUzdJbsSow3K5Uh08DVqoTWFcQ?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

16. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота сообщение об ошибке.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXczsAyYNdpzHTcTiMSKq-wbaluL92Sm-p5874SkEassfzb1bA2MyXuSwCcqJoZAyErd4iaUIKjyNsspzgTyE5AlenumOoNFFP-2T8OdiSx2yZyswzFTqKuAGqv0HK2_8QSmYt3C4nq1E1bNdKj_NKJtmkRQ?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

17. и 18. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “CompleteEnrollment\_CreateFRDO”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeac7Mcqm72j1jj3bHVXBw96O-KYaGL7kWy5x6sHxopEI9ozIh8dOWoOZayEjd02GtimciXnRiXDFZECJyM84VKQP1q6spOR1pDSwCZj10ESh7Wn79nslT90o4Zst2DtGVcPh6_oKjrcr4lORQMSVlEge_o?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить конкретной переменной.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeY6UJGsC70kaW5DkBF6SwJIwLUUM3tnuDAQB0HuD2EPfV_uQzKmzI94fRntycDA7psM8vWpxaGIlKVSUTBE1dctHdE9l0tgjqX9MIXFiZy1AhAMYepK9MxAOsmAJUhrA3VDgBoky_XXu-xIyNd0VNOSrge?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

3. **Блок “Получить путь к файлу”**  получает полный путь к файлу с указанным именем. Для данного блока указано одно свойство “Имя файла” (имя файла вместе с его форматом).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXclirGH4ONcGWGfDc6Vi0ikqVc-r1d7a6wVdSCQ8mvVvBcSHaW9VV67H8QUy75xJJ_C25mgMq8eISqHc8GiVH5t_aXafDSro9MjJBbzOq1wDr2S_TbrMHxA59ya61YobtrST31RJPdXn_kpKmZPPempxGBx?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

4. **Блок “Открыть документ”** позволяет открыть Excel-документ. Для данного блока указано свойство “Путь к файлу” (путь к Excel-документ, который требуется открыть).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdnAcSkvmns-qPISVTLyzoekddszqX6lH63NN5X8tHLRP3syo5CHCUs5IuQQagdYwc6QPlOWYnc6YLqjlaYixZA6odr_Jz10I9LrLxtXkTloaTnPfm1TT3E82jBKQ8zQLXBSg3vz_fr5lfuMNJXg9ZnGk8h?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

5. **Блок “Цикл для каждого (Таблица Данных)”** циклично перебирает все строки таблицы данных.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfhpBHMN5o-_zc-x9ge6U_pmyO_QzQK7GVWCSqOJEa2TLbfcX5-S6mR5YpzsHYImuiazFrGRgzNyqH_CxrTdhFIueiQLoNN1lZEBTmgZuRTxIhOugx_m84studv7G4WhhVSsBKWxrlpJKbVnKLUowu2B_yq?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

6. **Блок “Получить путь к файлу”** получает полный путь к файлу с указанным именем. Для данного блока указано одно свойство “Имя файла” (имя файла вместе с его форматом).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf0mKMpu4fLl1-cw0lmfaVYB14i8lPwLd23OzOtfhWR7nyxlV6XBs-4c_QN_EaTHM5lHUM_als8X8bW7msGD_saIHj9sfLntolHAyYJG-lkqbqrFrpOraKLmEzYvbe-A7---ehfeXZ9zAuVR_LlTMiSBhVH?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

7. **Блок “Сохранить документ”** позволяет сохранить Excel-документ. Для данного блока указаны следующие свойства:

* Ссылка на Excel (ссылка на процесс обработки Word-документа, название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Excel", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо сохранить. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Путь к файлу (путь к Excel-документу).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeKtDSxHNebsDPHvkHGrkdyTdd1a3pHhDU-pUm4M0m7piPPwBVWP9D2YDHZA-yJIeQ6JeEpGCAEtSA73brSKMRKWa5uLhE8RdriyjYKxK4d04n1Ed_DA66GZTyfF5RWkCBVjweeDCNqGA-z_o6T4-7P4KxS?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

8. **Блок “Закрыть документ”** позволяет закрыть Excel-документ. Для данного блока указаны следующие свойства:

* Ссылка на Excel (ссылка на процесс обработки Excel-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Excel", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо закрыть. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdjArGf8-ZzDiEeJztzE5UnxH_yOlJhLuX1ENo123UeJejulCWEde2GCYRTtrQdm-mYOnnzydW9cveYg1748KQ3hEY9XiJ392R-Dlrn5qqexaB9yzhg6iHf9ox32yUt0UhYB3BeeJcnI9HPM1o5MMk7XIHJ?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

9. **Блок “Добавить элемент в список”** добавляет указанный элемент в конец списка. Для данного блока указаны следующие свойства:

* Список (список в который требуется добавить новый элемент);
* Элемент (элемент, указанный в данном случае переменной, который требуется добавить в список).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXciKuemL96_s7Te0MMFtx8z9YYyGYrQ01kPRwl3WFKJNsKOZ2SmkqY9lk850KfSOt32F11I_imtX9ILwi0hY7qZXvuBJVJdU-uQBXJGSYz8Bwar8u0eg0PBCH_4HBzzJBwNotbgdoh5Ig0gsYs2ANHTvy_F?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

10. **Блок “Отправить письмо”** позволяет отправить письмо с использованием протокола SMTP. Для данного блока указаны следующие свойства:

* Сервер;
* Логин (логин, необходимый для авторизации на сервере);
* Пароль (пароль, необходимый для авторизации на сервере);
* SSL (установленный флаг включает, использование защищенного соединения);
* Email отправителя (указывается E-mail, с которого будет отправлено письмо);
* Email получателя (E-mail получателя, которому необходимо отправить письмо);
* Тема письма (тема письма);
* Текст письма (содержимое письма);
* HTML-разметка (установленный флаг включает функцию отправки содержимого письма как HTML-страницы, которая может содержать теги);
* Вложения (список путей к файлам, которые будут прикреплены к письму);
* &#x20;Timeout (Время ожидания ответа от сервера в милисекундах);\
  Примечание: в более поздних версиях Sherpa Designer данное свойство называется “Время ожидания” и указывается в секундах.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc45r-lzI2DrDrS8MM3ZDrmQov6VqIDlcBa8QfJAT9cMWZdj1-6KM73BZuwUol4kUq5hSF9B-v7HbaeR8XVy-mdVP-m_N7fCiNbUxokuB1-DN-Aq9rdCi72FZg7rcYWFk1Z7GZ5fBkdNKL1stKkHyAL5EGj?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

11. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота файлы вложений, указанные с помощью переменной.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcjMc2Niq23uUJzKUG20qvUYOV5s8AmgQ8Vj_qgHyoXpKnLr9Rd9YXlFHlYxhK3l3ekvk9Gq62t6G4rpruw4dqI8rBsaNlcSMcTVi1A-rXllzJp8nMTZeR4qoVQCzMjW1rjIdT--ocOfS1ZAqMvmaQ6g0_s?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

12. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота сообщение об ошибке.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfziuJqMbV6zqZgtQ1d6R1xvL_Z5HmYf-Ag-euMp_ppny8QRpYPtMbnc_7EXpzspBrVLNnibmNNvBemVrEfZ2PD-c5Lati83tGTBvjQb_fhil7UI_6CBSU3Xep9z-O9Uo-BzmLfkz_XVMDeulExSY22K2O1?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

13. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: -Not \[string]::IsNullOrEmpty($Row\[0]). Т. е., проверяет, что значение нулевой ячейки в этой строке не пустое.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdyBSLPP3unN5p3PVdaejHxsrhviVpLf7NCiVgAFHxgwgtdXpXOu-uXgq_hBpT16WUgqOPSwNlH1sttKa3uw5PP6sy8F33WiPtb46C2N6b5mosgaYjjCBoGWg7KEZ_KPoVyJVaZQwbKalQL6x_ejEHWOx9M?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

14. **Блок “Цикл”** позволяет повторить цепочку действий (блоков) несколько раз и при этом посчитать количество итераций цикла, записывая текущее количество в специальную переменную (указанную в свойстве “Цикл”), которую можно затем использовать в других блоках. При первом входе в блок значение переменной из свойства “Цикл” приравнивается к “Начальному значению” (в данном случае оно равно 1), а затем выполнение сценария продолжается в сторону выхода “Цикл” данного блока (в, так называемое, “тело цикла”). Как только выполнение сценария вновь дойдет до данного блока, значение переменной “Цикл” увеличится на значение “Шаг” (в данном случае, он равен 1), и вновь произойдет переход в сторону выхода «Цикл». Как только значение переменной “Цикл” станет больше или равно “Конечному значению” (в данном случае, оно равно 37), выполнение сценария продолжится в сторону нижнего выхода блока. Не забудьте соединить выход последнего блока в теле цикла со входом данного блока или какого-либо из предшествующих блоков.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe8tG5siJ6NQxWCighczDF6bm5OuCJvi1b1_PXQjIlSPBAm7022gilMYQvMxd_MY6RTj3heM-5g7faRA71VqC99X2LUuKbB10JLk2lvEmwJsjpH-cDhDNhx9IV9hYRsLSXOtu5NI1d6T70RWqWFssrui-8?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

15. **Блок “Выполнить выражение PowerShell”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используется одно выражение: $TableFRDOIndex. Оно прибавляет к переменной единицу.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeAnTJNR_HUfrER0yVqg1g2z-Q-_o1C-VBur3ggayU09ROXPMsOGsdEAFfltRdfLPpYQWluSOZiOo4hcy4JyTg0OfUVAYoY9WeSAy6vrPiwi6iNin_EY2Lvyq2goN9ivb9Pj8p5avoR0V2aVYaejWeayUg?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

16. **Блок “Записать значение в ячейку”** позволяет записать значение в ячейку Excel-документа. Для данного блока указаны следующие свойства:

* Ссылка на документ (ссылка на документ, с которым в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Лист (порядковый номер листа, на котором расположена требуемая ячейка. Нумерация начинается с 1);
* Строка (Номер строки, на которой расположена требуемая ячейка. Нумерация начинается с 1);
* Столбец (Номер столбца, в котором расположена требуемая ячейка. Нумерация начинается с 1);
* Значение (переменная, которую необходимо записать в требуемую ячейку).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfiTZY1dKDDgTBMeqOB92H_DSeZQ7aM3gz7MITV66eZLbrehxeM0lPLgkomhDfeQwdudorRJcYVOTfr-nS4HaHDHFDIy0wlx_U-4Gq9HpO9WbyN-5h_SBVVyKXe9pIF93ZvJUlrrmbq7YoiLsSJA13XYmc?key=8s9Yh27gdK-ptPiMIt6tWA" alt=""><figcaption></figcaption></figure>

17. и 18. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
