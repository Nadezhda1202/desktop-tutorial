# Search Embeddings

Рассмотрим пример робота, который является второй частью проекта “AI Chat With Own Document” (в [первой части](create-embeddings.md) робот вычислил эмбеддинги из фрагментов указанного текстового файла и записал их в файл формата CSV). Данный робот использует ранее полученные эмбеддинги и нейросеть ChatGPT для ответа на любые вопросы по содержимому документа. Т.е., при работе данного робота можно ввести любые запросы на естественном языке, и нейросеть даст ответ, опираясь на содержимое документа.&#x20;

Проект робота состоит из одной диаграммы. Таким образом, если описывать пошагово, то данный робот работает следующим образом:

1. Загружает созданный в первой части проекта CSV-файл фрагментами текста и соответствующими им эмбеддингами.
2. Открывает окно для ввода запроса.
3. Выполняет запрос пользователя.
4. В случае, если  пользователь ввёл строку (слово), получает эмбеддинги по этой строке (слову).
5. Отправляет запрос к GPT модели.
6. Открывает окно с ответом на запрос к GPT модели.
7. После чего, открывает окно для ввода запроса и выполняет запрос пользователя.

Диаграмма проекта выглядит так (для удобства блоки диаграммы пронумерованы):\


<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdAqvEZJ3KaQ8H16JlSOkgr4TcJrdtl6crZpNYDSxGKyEm1LE53JK4sdDsjbIrFbQEN8ku8DPKnLpxvsRyTEgpBBhaP6erkURcmJb5CCRoTkccifsN8s-SU8M6C1Ypb19Ub2O00ASq0lC8-yKFDDxZLChY?key=A0aTFSxqdqslY-UYAcmeGA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfSLDcQoTB7-9ElrTwZUgiQ8Tg89lf1NEDhvDTeE41EZQifX9Z7sWtMeiBClageBYZGqQjA6SdVJ7xALx3sNIZB1rpnSp_B7pzrLvUUl-GUrWXylg-vHvV74cIvBnQ3GiaSZKIV9k83cPR-bd3VmVh40ODd?key=A0aTFSxqdqslY-UYAcmeGA" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. Блок “Загрузить из CSV” позволяет загрузить Таблицу Данных из CSV-документа. Для данного блока указаны следующие свойства:

* Путь к файлу (путь к файлу, из которого необходимо загрузить Таблицу Данных);
* Разделитель (символ разделителя);
* Кодировка (кодировка файла).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfnsix4ZXfEEtwsm4RnZNddE0N6mMqw4s-M1n6njnVMrI93KAoHPBh-17ckRQyiL66G3tN_VibTUO0jhm6fvy-HgqgYpDCREVsSJY6FUYGX2_tmxJ0oTjlXffpERSLlTZ73cpCJ1FfrfVMahUccS_PQp-Qs?key=A0aTFSxqdqslY-UYAcmeGA" alt=""><figcaption></figcaption></figure>

3. **Блок “Окно для ввода текста”** показывает модальное окно, предназначенное для получения информации от пользователя. Для данного блока указаны следующие свойства:

* Заголовок (текст, который будет отражен в заголовке диалогового окна);
* Сообщение (текст, который будет отражен внутри диалогового окна).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfOHLB8bYv11BDhsF68fggWdW20-01tPTQBoc7Hm4sL-CkboFI2qMb6RJZ7i35msfZYemJX92F-XpbqtLuycyceB4SZ8z_Lyy17Cxyzpake4gtEfZKVlSXlscTSd_hzMKsJZx8R-kmxth4CCaYaBMcjJ1ll?key=A0aTFSxqdqslY-UYAcmeGA" alt=""><figcaption></figcaption></figure>

4. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $TextQuery.Length == 0. Т.е., если длина строки равна нулю, то выход “Да”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeLnv36adJubnuarHFIvY7FtnBj1Jedp-HAKq3cKrUwBLqfyDK2lFvYZBzvIS2WV2uKz55u2s1u6cbvCcOYWq97NUULkNzD20-RtTL1I_rCMeHkpybZiBYGSRU7ELqC7YIcljV3_LE6rUF96nSjwgtFpw?key=A0aTFSxqdqslY-UYAcmeGA" alt=""><figcaption></figcaption></figure>

5. **Блок “Получить эмбеддинги”** позволяет получить эмбеддинги по строке или списку строк с использованием сервиса Open AI. Для данного блока указаны следующие свойства:

* Текст (входной текст для которого будут рассчитаны эмбеддинги);
* Модель (модель нейросети для генерации ответа);
* Таймаут (максимальное время ожидания ответа в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXel5PCjUpfZmi-5nhkNz4PxAWPEgFHwEPnjONaVCQT24nY2Y1RBHe6UJBa2YPn91j1KvdFygbTNTjJiPkbpNkCSot2fWov0ONVgjLlCn2nIswSXyZYfo5_bqpkmiKcDbvyXWB4fZZT21kXQ38RPZZgwLhs?key=A0aTFSxqdqslY-UYAcmeGA" alt=""><figcaption></figcaption></figure>

6. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $.Т.е., данный блок записывает в лог робота получившиеся эмбеддинги по строке пользователя, полученные в предыдущем блоке.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcW3ZIV_cG-4s1HEp_ddsafzSDtp9yu0pz3paue9WTHCP_oMt872mj6maXyvQR8lOeTiEEqioQN8yk9MBVVZrRjOX88uoLz-ySkOmdxftXlwoxD5vhB2-3_qSBlPYqBdyeYBpw4fWZWAYAO7zu1ETVLgdFH?key=A0aTFSxqdqslY-UYAcmeGA" alt=""><figcaption></figcaption></figure>

7. **Блок “Найти эмбеддинги”** по заданному запросу-эмбеддингу найти в базе знаний, представляющей собой таблицу объектов и их эмбеддингов, самые похожие строки и возвратить индексы этих строк в виде списка, отсортированного по убыванию похожести. Эмбеддинги и для запроса, и для таблицы эмбеддингов, по которой осуществляется поиск, могут быть получены с помощью блока Получить эмбеддинги. При первом использовании блока происходит построение базы данных векторов и это может занимать длительное время. При последующих вызовах блока с одним и тем же "ID базы" будет использоваться уже созданная база данных векторов и скорость работы блока возрастает многократно. Для данного блока указаны следующие свойства:

* Эмбеддинг запроса (эмбеддинг, для которого необходимо найти похожие строки в таблице);
* База знаний (таблица, по которой будет осуществляться поиск, одна из колонок которой должна содержать эмбеддинги, другие колонки таблицы могут содержать любые пользовательские данные);
* Колонка эмбеддингов (индекс колонки из таблицы (по умолчанию установлено значение 1), указанной в свойстве "База знаний", в которой размещены эмбеддинги.);
* Количество результатов (Максимальное количество возвращаемых блоком строк-результатов из базы знаний (по умолчанию установлено значение 5).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcevNZ4H30NPomOggFsGBuiUg2e_04IL4kGddp0qCF0m46BBrjkGCHjygNSRcmjF5aJnEAFxdWM-6nbhTFSu5GDOTMHSgu4Av9979I-k4ayiI8s4bL3ii24iSc4cyYf7XjIXYMgavNX122QAu_D115ptH0?key=A0aTFSxqdqslY-UYAcmeGA" alt=""><figcaption></figcaption></figure>

8. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных.  В данном случае в свойствах указаны два значения, которые необходимо присвоить переменным: переменной $AIQuery необходимо присвоить значение “Answer the question using only knowledge base listed below.\`nQuestion: {query}\`nKnowledge base: \`n{strresult}", а переменной $strresult – пустое значение (для последующей записи в переменную ответа на запрос пользователя).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfXxOBQofWTwyfKjEC18VKqNd-oek3L1DHaZUzXQ6-1wbfa3CmpZeLIjREPfew81qGL3VHvUnO5YF7lItLoiTClu6efSHf75J7MW_rKHDt_Tp9fqhT9cxHOVcrZQB343hU7snLko0C2mOUUXVFHeNJh-n4?key=A0aTFSxqdqslY-UYAcmeGA" alt=""><figcaption></figcaption></figure>

9. **Блок “Цикл Для каждого (Список)”** циклично перебирает все элементы в заданном списке.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXffjgJ8I97j5hW5qOomYtV9-KYianFSSVIDb0F4FwuqYK0JBwJqf-mityizF-s_fzgO6XIDxoorF8zM-5yOzFf60sNvCGiruPqjjIhlv8CMei_L95sbMyeFB85A-Fo5GoWt5NTFYm_bRr_Zpytkk2txbLNc?key=A0aTFSxqdqslY-UYAcmeGA" alt=""><figcaption></figcaption></figure>

10. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных.  В данном случае в свойствах указано одно значение, которое необходимо присвоить переменной.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfLSr8x5jK8yw9juNhCAmXryd4nEW7fxCRLNPUFwLg8ttu5ev3NlrxL022b_BN3OiF4sumSKias7cv-HrxbJ8rklQCsNeX-Fv08CNi5trrqyEWTLPge99U2HLWrPLNcm5ygoDFnVCHLbKQ9RJyf_-Yy7t6P?key=A0aTFSxqdqslY-UYAcmeGA" alt=""><figcaption></figcaption></figure>

11. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных.  В данном случае в свойствах указано два значения, которые необходимо присвоить указанным переменным.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcbyxvYz6RkogsSrXe1nLvzCISGNe44_6VUeE20hTDI0wXneaalG6Dt3V3jrHUsdhG0RaotAxn2jXcoKuPcZWJmL5SNjzSp8kQQOn9ayMdR7B0YUt2ExMZ-cvKg4FVI7QVISWScHf6pTVx_ytFvvgcBdEQ?key=A0aTFSxqdqslY-UYAcmeGA" alt=""><figcaption></figcaption></figure>

12. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $.Т.е., данный блок записывает в лог робота значение переменной $AIQuery (получившийся запрос к GPT). В свою очередь переменная $AIQuery включает в себя текст пользователя и Базу Знаний.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcg8zqQWeIurBNRqRZsN8jZe7yMtoO-zGoL-gAfLvTDQg3g1GzNsDpCdCJfzucsvaAoe0WDwUqae2IGRA4-ZRjGr2XJa78g6IsNZZ-opiUAENNXpevMY5u8eA4nJhbMvQUokQS5GTpjCeJzZDuGh7IKWTS2?key=A0aTFSxqdqslY-UYAcmeGA" alt=""><figcaption></figcaption></figure>

13. **Блок “Запрос к GPT модели”** позволяет отправлять запросы к классическим генеративным моделям Open AI до ChatGPT и получать ответ. Для данного блока указаны следующие свойства:

* Запрос (запрос на естественном языке);
* Модель (модель для генерации текста);
* Температура (десятичное дробное число от 0 до 1, показывающее степень "случайности" или "креативности" результата, где 0 - наименее креативный результат, а 1 - максимально случайный);
* Таймаут (максимальное время ожидания ответа в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfs87PUP3qoXJNCjZ4rfCckgFus6xiKcwmJlm4dPY6vshzvLrgkbcJydslUeEv-fkT8yHeBIPLpTqaTsSBbyrvt4v7hpUGP0NHupy-PiDtK1gRW_8OqMYYmeSOB1D0I5yDSpmetBpyi7iM7yZIdhWdOe1it?key=A0aTFSxqdqslY-UYAcmeGA" alt=""><figcaption></figcaption></figure>

14. **Блок “Окно с сообщением”**  показывает пользователю модальное диалоговое окно, с заданным заголовком, текстом и набором кнопок. Для данного блока указаны следующие свойства:

* Заголовок (текст, который будет отображен в заголовке диалогового окна);
* Сообщение (переменная, которая будет отображена внутри диалогового окна, в данном случае, это переменная $Response, которая является ответом генеративной модели на запрос);
* Кнопки (кнопки, которые будут доступны пользователю для нажатия).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfRqA6XSOIeQlGxO9tXCfdLQeo4-OSoiWcUAAee4IgxpJuGI1ower4_FOaTHcic1BybgajOVQxWBLw00y-LgdUolwcwadPSvXENbDCUAZq_Eiy3qmRf2oy2GZsmBPsU4vAjAA1dSNPHzUrdcZ6ECAagF_Ma?key=A0aTFSxqdqslY-UYAcmeGA" alt=""><figcaption></figcaption></figure>

\
15\. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
