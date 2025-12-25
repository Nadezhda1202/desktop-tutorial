# Create Enrollment Order

Рассмотрим пример робота, который предназначен для автоматического формирования и распечатки приказов на зачисление студентов. Входными данными служит реестр студентов (слушателей обучающей программы). Процесс часто используется в учебных заведениях и кадровых агентствах.

Проект робота состоит из двух диаграмм и трех файлов, один из которых в формате xlsx, а остальные – в формате docx.

&#x20;Если описывать пошагово, то данный робот работает следующим образом:

1. Загружает таблицу данных из файла "П1\_Обучение\_шаблон.xlsx".
2. Перебирает ячейки с номером приказа.
3. Переходит к сценарию из диаграммы “CreateEnrollmentOrder\_ProcessCreateWord”, которая вносит данные получает дату и время, преобразовывает их в текст, а затем вносит данные в "П1\_Шаблон приказа о зачислении.docx", отправляет его на печать.
4. Заполняет “Шаблон приказа о зачислении.docx", сохраняет и печатает его.

**Основная диаграмма проекта**

Основная диаграмма проекта выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdPcwkCWPYMUfTMwBYwGZT-2G8lsrjeKsvCMAlbBE5BZLYHLPoUq0EMT_rINn-twLAV2tum0tp6DKDoxVO5N2g6f_QZ7DOSpTVpAOdubbT3VeSoB54sj0a6Pq0nJqtLAFgvMASU4C_jZtBYVLB5ijP5xLEP?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Загрузить Таблицу Данных”** позволяет загрузить “Таблицу Данных” из Excel-документа. Для данного блока указаны следующие свойства:

* Путь к файлу (путь к Excel-документу, из которого необходимо загрузить информацию в Таблицу Данных);
* Заголовок (при установленном флаге первая строка будет использована в качестве заголовка);
* Лист (порядковый номер листа, данные из которого необходимо прочитать в Таблицу Данных).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcRYBZsTdSg9zUKoHktBFyKGXWw8NpklhqXUEbx2LPBEIJAtzSq0CfauvQR6YeNT4TOi0ul-CJpHcsSthnJnvOrJX-njg9IfS6HJVwIYYWLIDVIIoCB41gP5nmnpaGRxUwWWI096BFvS8PU-CPepqInn3tU?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

3. **Блок “Цикл для каждого (Таблица Данных)”** циклично перебирает все строки таблицы данных.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdVPDsSXxFMhzYKTazSK7rm8YirEr8SlcD5RkghuvBzt0IKQeSTRgF8UDvd2w9gPJMT7_UfZiGFVzmA5HMckjUu4PAwMU8-64mq3_GGw2uK8Nm9zDgD8p_m20EooSkhTevK9RYGKsnWfqSvpHIVSPE-EcE?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

4. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXep74ybO3eOkTMAaDSWwHFkK7yh8CVL80sh5NBdBkjDmfQtQ-dDycC961JjPX_nsWyZXhoW5irSClPGAOLZ0E__zLoIFglFRp-3W8YbYqq_wsZVgY70fSUcyhY2AXJ1DaGpLrzhTWbCBQFLCsX6iRp9MAWN?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

5. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: -Not \[string]::IsNullOrEmpty($Row\[0]). Т. е., проверяет, что значение нулевой ячейки в этой строке не пустое.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXefMrdvPilTAKF_1pXT2tVhyHCo4Q1yVy3_us79DGuOEpxIqsy9J90JUbtW8mSrIEM_mq8JBeFTNOo5cabCqUKVFwB3nQ_1C1SnP3gUhLEyrykdaip9WebVKK-mNn-_cAYDjJnqMhbwDzJMN9RkBJNHFik?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

6. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано три значения, которые необходимо присвоить трем переменным, соответственно.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd95tMSnrAx-sMlmf-Wjwww2b7h709hcFwINub1KvJDrjppBKd_o_B3Vc3npEma38-f3oWczsVHzT-C9rSVJxlYqSnWzFL8DP548lHP0NKy5d6lPLTzx6K-BDjJOllfWuQprojGDSR0NNTbXaA6XODiiHVr?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

7. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить конкретной переменной.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc1g5EblVGUnqE3LyxQ8ufT6cPJ-5kxGzO2rqEgLqgYcaDDsC_pswQ952qMHV9vcZUrrHnaXyS73ihOoPRKtw_T4992OnhOT7yHKxsmQhhs2pj2tolBD3kPwkFAZKRC2k9R4UWve3irfXUVXOmHASTeytMX?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

8. **Блок “Выполнить выражение PowerShell”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используется одно выражение: $ListFIO.Add($fio). Оно в список $ListFIO добавляет значение $fio.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeY0X6NTGEmzh1WvxIZXnkKqKiNWGC59bbF6EsRaAP265vvxhctnv8JbufeJMa4xXsx2LxLVmf-0qapve5kOLBPWAjuI87gyyCV7EmjDiTT0cqpTIOXeRvLnTqL9FqDzXPoWMGP07MD1ywYpbHMey_IO5M?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

9. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота сообщение об ошибке.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfLkrrMXZtbMg-X7EXPZaS3EyNqv1AGnqZIx7cW5rj5VzNniQaR6wCDI2E18hwoZ2QTQ8_V34fnGxSkdX2XHo0xrVE4TiAu2Fcdx5VXyI0uCl1k7JTTHAGtuP4TnSrMk94Z1KFpDNQtqwjmeRFWzd97XwUF?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

10. и 11. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “CreateEnrollmentOrder\_ProcessCreateWord”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdss9_9I3JYyp_jKniHGke0hxHY8MFCG-0F8q7XNNCEmpycGGzM_QnEsBkIHTmpHV2isbRB0HJrfoff27E9_43KIW5TTdFNSGg_jqs7FbKnk9TlXqfVQknhNbRu3gcfCGNZsWQ3vpqZBeC5bTjjHuSvm9Ko?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Цикл”** позволяет повторить цепочку действий (блоков) несколько раз и при этом посчитать количество итераций цикла, записывая текущее количество в специальную переменную (указанную в свойстве “Цикл”), которую можно затем использовать в других блоках. При первом входе в блок значение переменной из свойства “Цикл” приравнивается к “Начальному значению” (в данном случае оно равно 0), а затем выполнение сценария продолжается в сторону выхода “Цикл” данного блока (в, так называемое, “тело цикла”). Как только выполнение сценария вновь дойдет до данного блока, значение переменной “Цикл” увеличится на значение “Шаг” (в данном случае, он равен 1), и вновь произойдет переход в сторону выхода «Цикл». Как только значение переменной “Цикл” станет больше или равно “Конечному значению” (в данном случае, оно задано переменной $ListFIO.Count), выполнение сценария продолжится в сторону нижнего выхода блока. Не забудьте соединить выход последнего блока в теле цикла со входом данного блока или какого-либо из предшествующих блоков.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf3sdzcpZ4xW9MhN8QwdIPFJ4g_m18eTYF_N3vbJqf8IW3DBbxkY_TLBinORcrj-pKv_gSmYGQ5fVzO-GG6ZTcqyQFvaVIJ1owZATZ4Snq7ZGp6SiS6H2O67XMb00fbsKGBUkJv80BAd-XjHrgdhCey0_eE?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

3. **Блок “Выполнить выражение PowerShell”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае, используется одно выражение: $ListFIOString += ($Index+1).ToString() + ". " + $ListFIO\[$Index] + \[Environment]::NewLine. Оно добавляет к строке новую строку вида “1. Иванов Иван Иванович\r\n”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfYJuG5b7yMBfr3MnSUIZI85JspoTD1TRFqIPfMCuNN1DS8CLH3xjmjiz0FJMTO6du6MO9FVGUWBqB_dUqI1J-VuHHRimcKSOLqPV_RUm6yKPEyxTaOSph-YP_i-0o76FfEfZIX-EeOxCp598pTO2FT0is?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

4. **Блок “Получить текущие дату и время”** позволяет получить текущие дату и время в соответствии с настройками компьютера пользователя. Для данного блока указано одно свойство – “Результат” (возвращает текущие дату и время).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdN-4fj6g5t8oIGBhCfMWA2MmujLXcHLA3YvDFy2I5DFPds-co2C29Txy_CMxn-UPq2ji0nxhtNxHyYqXu1K_d1xW6n_ZmWVa0M5i9QgcHsHMMvXiZvja6ic1I-0GrKRxW5978wGtnnFZDfSF6GhaBzERE?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

5. **Блок “Преобразовать дату и время в текст”** позволяет привести переменную типа “Дата и время” в формат текста. Для данного блока указаны следующие свойства:

* Значение (дата и время, которые необходимо конвертировать в текст);
* Формат (формат конвертирования даты и времени в текст).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcpnNukh9HdNn5HUHrJXQjmxMLxiUw-ST23C9fv53_ct70rJHZozyAVSbV4j6n0oCDArydDysGliEWlhcDqgAThw1i5rl9zFaU2sK4Zg0k0z-qUGSm_Q1h058i6o7Lm7gmrAhTEL7T_fcHqy4Pp3ha6Ij-Q?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

6. **Блок “Получить путь к файлу”** получает полный путь к файлу с указанным именем. Для данного блока указано одно свойство “Имя файла” (имя файла вместе с его форматом).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfpyGtZKiU08PgCe3qP295c6TCrmT9-GW1xC7k4qBSbU944g4VT0cU14PGqbqW4gz7sffj-9fd-bSWMVEBKKNU_ESE_WENmPBbDXzyncFFVWzRq5id4n4MEo6hyf0Q8ySjuIwzBgLyDEAxLRmLXPjA-Z6_G?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

7. **Блок “Открыть документ”** позволяет открыть Word-документ. Для данного блока указаны следующие свойства:

* Использовать COM (при установленном флаге работа будет производиться с помощью установленного Word);
* Путь к файлу (путь к Word-файлу, который требуется открыть).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXflShroef1cY5801_AWfxc_zksmtDy5mG_AfdFOCaM2HSXFBKNHBRVCOjUAIc9b_7RKcWom_UAAQTkBkQZB6o3GDxAKMczFBpxGvULCqRWW7Tdub_-ZSWrN-cyTqOqx1B9UVSe4Dn2Mp-PF1_Xe4jK0RYV8?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

8. **Блок “Заменить все переменные в тексте”** позволяет осуществить замену всех переменных %variable%  в Word-документе. Для данного блока указаны следующие свойства:&#x20;

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на открытый Word-документ, в котором в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdsIihEOTKv7vTCdgouAmCIrx88pjqHdj9BW6Mjn5PyioqVhFAvStXSN13PHnD6wUTceMNURfE4qtfduiB178x5Z9pKL-59IbLi353a1MLLaJxHXELk2X3nzp8mfMDjj_C5Iz9_A9MGF_s2WgXUUBukVWUH?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

9. **Блок “Получить путь к файлу”** получает полный путь к файлу с указанным именем. Для данного блока указано одно свойство “Имя файла” (имя файла вместе с его форматом).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdekXyta3MwjF99lU-6fMVJ2XQ-9VJQuWexED6iI5fylCOO1KQjNOeyWfu1C8iaL6uYRSJmbtkIwpZwW60-vLKv0DBgGKpqd9PBmaGiRrN7FuezWTyMmrjZeYmGS91pkgpXiRtB5GJ5AUvPuhcQkSlKCAhF?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

10. **Блок “Сохранить документ”** позволяет сохранить Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа, название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо сохранить. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Путь к файлу (путь к Word-документу).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc3ELM8kXdcL7ebcLxQ1lkjgNgvGTmAIisidIBwc7O6U-IJWQY-sF-f76wlcoMiT5yGb3tNvtARHSaUZt58SuPxk21jNGXS5EFi9HVjhHWiSsE1svEioEGG_mGJY8E13XTVRroBHYsnzbqgTuBRdGAgZD10?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

11. **Блок “Распечатать документ”** позволяет отправить на печать Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на открытый Word-документ, в котором в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXczuCO4EJ51TQUyB1exjkusI-x1BiMXPMjeoyPPuEyvFEf47KcQgwt_HlIAEDSKKrh16mZuucl0pa1BvB8s5S3aRIpr6dJqqZ2k6zimBSjV7e-qoUH3hl0ScTj-jdqsJ5-2qrXauaaQx1VGJgyxofgeyQ-Q?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

12. **Блок “Закрыть документ”** позволяет закрыть Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо закрыть. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc-tnPPCln3owM-eb58MEy1fo3q6F637kJOvxgx45pwwHyQZvEa5dmmGHRJBtTeSHHD7n66ANLmDohWMKxNwNvxlitQ83y_omYbY3sU8_k18WMVAjE5KO0cpW2_mSafU6GntJ88f8fZrYc2FN7pCsVTNIzz?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

13. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота сообщение об ошибке.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdR4h1HXcPWf0OeSeN3nUoLEgbeQLeRZko4X4wfPNA4Kw9DOotRS9VgF0PiLPgiFUlpT2w-Sy3N7htGH7p2F2lGmfhyxBlp1ZpwnKuXc4_8zh6rvNbGrpKxBFuiuEm5KR4x_0sHr-lSLf_5xhnfYUXJ_yo8?key=jnp0R80kKn84ibHDSqYCXA" alt=""><figcaption></figcaption></figure>

14. и 15. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
