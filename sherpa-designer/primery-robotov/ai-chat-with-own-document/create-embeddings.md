# Create Embeddings

Рассмотрим пример робота, который берет инструкцию на автомобиль из текстового файла, разбивает ее на фрагменты и для каждого фрагмента вычисляет эмбеддинг - вектор признаков для последующего поиска нужных частей документа по сходству. Фрагменты текста вместе с соответствующими эмбеддингами записываются в CSV-файл. Данный проект является подготовительным для использования проекта [SearchEmbeddings](search-embeddings.md), и должен запускаться один единственный раз.

Проект робота состоит из одной диаграммы. Таким образом, если описывать пошагово, то данный робот работает следующим образом:

1. Считывает содержимое указанного в свойствах файла.
2. Разбивает это содержимое на фрагменты.
3. Вычисляет для каждого элемента эмбеддинг.
4. Записывает полученные эмбеддинги в Таблицы Данных.
5. Сохраняет фрагменты текста с соответствующими эмбеддингами в CSV-файл.

Диаграмма проекта выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeqeFXEghBrEJHcfvZaTCQI1NahBcJyOoAIbOyxr2zvX7kNyLHk16bUBauM79_VAn14Y87DSstQ3cgnFgu-SgTFZflvWzpo6naDc9n8MBYXerk0v_IW29BXiuukSLkr1zjoPDbbkB8lMm38UusKN_b-tyNp?key=2EX7NdvOOR4JJxCrOTqjfg" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Считать строку из файла”** считывает содержимое файла последовательно (строка за строкой). Для данного блока указаны следующие свойства:

* Имя файла (имя файла, из которого будет считываться информация);
* Кодировка (кодировка файла, из которого будет считываться информация);
* Пропускать пустые строки (при установке флага включается функция пропуска пустых строк при считывании информации из файла).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfnauS1JofV8ELk4693-5QZDuuKayN9ePsVQT2RxZ5tDDgShbJfCqFyMewelWsZVVKatZpfZUzOtY1RzVendsUsxfwV9duCCwjxCGwoRZlr-rW1XwxF6vDyJ9RuwoI0v1La_DPDFxGONrUrkQbkO9XAiGxB?key=2EX7NdvOOR4JJxCrOTqjfg" alt=""><figcaption></figcaption></figure>

3. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $Lines.Count > 0, то есть, данное условие проверяет, если значение переменной $Lines больше нуля, то выход “Да”, в противном случае – выход “Нет”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfa-l3C_PRVCFhonw8r-jsJ3SxFNqb7mclAsVC3akc4KC-f183-YOWOaTRich6-ut0XK_3n4NtowI3hX_5a3kyYeO3Kx-43CC0BckGSv09u9t4R13gW1ygndCxls17VZcwQLGpUsrZ3yjF_R-clVU_P9J41?key=2EX7NdvOOR4JJxCrOTqjfg" alt=""><figcaption></figcaption></figure>

4. **Блок “Получить эмбеддинги”** позволяет получить эмбеддинги по строке или списку строк с использованием сервиса Open AI. Для данного блока указаны следующие свойства:

* Текст (входной текст для которого будут рассчитаны эмбеддинги);
* Модель (модель нейросети для генерации ответа);
* Как таблица данных (при установке флага включается функция возвращения результата в виде таблицы данных с двумя колонками: “Text” и “Embeddings”);
* Таймаут (максимальное время ожидания ответа в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfa-l3C_PRVCFhonw8r-jsJ3SxFNqb7mclAsVC3akc4KC-f183-YOWOaTRich6-ut0XK_3n4NtowI3hX_5a3kyYeO3Kx-43CC0BckGSv09u9t4R13gW1ygndCxls17VZcwQLGpUsrZ3yjF_R-clVU_P9J41?key=2EX7NdvOOR4JJxCrOTqjfg" alt=""><figcaption></figcaption></figure>

5. **Блок “Соединить Таблицы Данных”** позволяет соединить две Таблицы Данных в одну. Для данного блока указаны следующие свойства:

* Первая Таблица Данных;
* Вторая Таблица Данных;
* Тип соединения (тип соединения таблиц, если схемы указанных таблиц различаются. В данном случае, тип “Add”, то есть добавить).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcFJzDLfU3eTOlFkjG77aXHdZG0mpHS4ro-l9wr3vK6DVDKXI1fszYBalQRBztSnTPqDM5AK4ZZ90JC19gvtdi7EEuZsBEbOzWdls6glvy-Tt4V9XjCZBN91yeRqWF-7Qo2_TbuxlA37zrQoHvtClQocxzf?key=2EX7NdvOOR4JJxCrOTqjfg" alt=""><figcaption></figcaption></figure>

6. **Блок “Сохранить в CSV”** позволяет сохранить Таблицу Данных в CSV-документ. Для данного блока указаны следующие свойства:

* Таблица Данных (Таблица Данных, которую необходимо сохранить в документе);
* Путь к файлу (путь к файлу, в который необходимо сохранить Таблицу Данных);
* Разделитель (символ разделителя);
* Кодировка (кодировка файла).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdm7Hy8zb6DHe1qizlhP3mMJGD2D6G_pKxSJDZr2WbJe17nOqyUWTjjRGnweZCfvMxUhxBN5EKAKIWx9TgQW9jNAv92qbk00wgC4G216o-nWaZcMfrCIZbiST4HLe3N6trmkfXJEbYer3LUTUXZShKiFNs?key=2EX7NdvOOR4JJxCrOTqjfg" alt=""><figcaption></figcaption></figure>

7. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $.Т.е., данный блок записывает в лог робота сообщение о считывании строки из файла с указанием этой строки с помощью переменной.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdsANztAn7ZTGLAB_TI68D0gBexaQhwPGRSEIxPYsyZx4UKqGy_bh7O1trBk4wdSxYmme8sEKPNKS6HC00El_tsbc1D_vp0ml5zpD1s_AFukl6Gpu-ySXBMc0JDxiqLyc90nZNTqarzzOIa3VXnZ54sfO1q?key=2EX7NdvOOR4JJxCrOTqjfg" alt=""><figcaption></figcaption></figure>

8. **Блок “Добавить элемент в список”** позволяет добавить указанный элемент в конец списка. Для данного блока указаны следующие свойства:

* Список (список в который необходимо добавить новый элемент);
* Элемент (переменная, которую необходимо добавить в список).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc2vHe-GAj8Io3KgP9MxDpR-Q6QyHF1KSvP9O1x0UIGzEEZkh2cv-GQztoce04aIS7Byv7pXB3SO7Ovrt398hxuaNaeJBxFD8ghC_git18fl9Kf6s7ItBALKNZMAByMQLxyHzGuhBcUNLnXNeF72g8BknM?key=2EX7NdvOOR4JJxCrOTqjfg" alt=""><figcaption></figcaption></figure>

9. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $Lines.Count > 20, то есть, если значение переменной $Lines больше 20, то выход “Да”, в противном случае – выход “Нет”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfFmWCp-UTvYnzcBwrKxZjoRb0MJPixptgLJk5e00ihRJwVw2cNhAlysg2351x5h-BrfzqQCJjJGJ2J4GRUo-o84BaDj2e0eufJ5jIKgXycFDZSfNVNCWUElSZAXzxCJTZyXe1Jx71GyHydV3D96Ju2EA-e?key=2EX7NdvOOR4JJxCrOTqjfg" alt=""><figcaption></figcaption></figure>

10. **Блок “Получить эмбеддинги”** позволяет получить эмбеддинги по строке или списку строк с использованием сервиса Open AI. Для данного блока указаны следующие свойства:

* Текст (входной текст для которого будут рассчитаны эмбеддинги);
* Модель (модель нейросети для генерации ответа);
* Как таблица данных (при установке флага включается функция возвращения результата в виде таблицы данных с двумя колонками: “Text” и “Embeddings”);
* Таймаут (максимальное время ожидания ответа в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXepwSilXC_cllvFbDFyFaMVyvVlc2_axeN3z8QrEb4kEj05uMudA4vL91vle05FfBRQ9GRSa7ImDSynQBblmy1fwa0S8RgAXmOoofSD9SJysRvCPnJaynZjLv5YqqPXBHWzNTT2u2LzLJ4WagvaDk83mXi4?key=2EX7NdvOOR4JJxCrOTqjfg" alt=""><figcaption></figcaption></figure>

11. **Блок “Соединить Таблицы Данных”** позволяет соединить две Таблицы Данных в одну. Для данного блока указаны следующие свойства:

* Первая Таблица Данных;
* Вторая Таблица Данных;
* Тип соединения (тип соединения таблиц, если схемы указанных таблиц различаются. В данном случае, тип “Add”, то есть добавить).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfKbeXW7xmQUmm2QUo2SptN_Sy3TmtXvAGKezoGsBV_YZ6m2rViGM2zPrE_oJGoCVb0QOTBWsgPpb1gePZvUWRaJ9uc_dUla_dpAm39FLPZLUlo7GqdNzTuMcdIWpapTxi3ZPYDb1SgE76K13SLvuH9dKc?key=2EX7NdvOOR4JJxCrOTqjfg" alt=""><figcaption></figcaption></figure>

12. **Блок “Сохранить в CSV”** позволяет сохранить Таблицу Данных в CSV-документ. Для данного блока указаны следующие свойства:

* Таблица Данных (Таблица Данных, которую необходимо сохранить в документе);
* Путь к файлу (путь к файлу, в который необходимо сохранить Таблицу Данных);
* Разделитель (символ разделителя);
* Кодировка (кодировка файла).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfWM5DkrV0izVAXoc3QDlpUamkCK2BeeaRRc2h__RG1TOrqOThH7Jq6cCzelcJXfOLnplf564i5pkD5UZw0thgl6dPywh3VB5HQ0iv52oi0uyI3QQW09oUFRVCiwKdnM0dvetDlvYCHkP1yfkI0tyl5To0?key=2EX7NdvOOR4JJxCrOTqjfg" alt=""><figcaption></figcaption></figure>

13. **Блок “Очистить список”** позволяет очистить список путем удаления всех его элементов. Для данного блока указано свойство “Список” (список, который необходимо очистить).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcbGlCf-VwsKDHABp-ZYixyU_k8Hc6D48UD1XPnRD2s9NBMbPk_boXQ-DSl0m_DtPAcfGntoWd_y7o1OJGnLXuDzj1q7kjiEzzY7CIy6dqHLKS419PdUlqvnkhnYZIEQ8Lylvmghb1uzYT4y28keGi0PiSf?key=2EX7NdvOOR4JJxCrOTqjfg" alt=""><figcaption></figcaption></figure>

14. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
