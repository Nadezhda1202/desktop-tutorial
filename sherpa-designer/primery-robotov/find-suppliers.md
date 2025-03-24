# Find Suppliers

Рассмотрим пример робота, который демонстрирует автоматизацию поиска поставщиков.&#x20;

Проект робота состоит из 4 диаграмм и 7 файлов форматов xlsx, txt и docx.&#x20;

Таким образом, если описывать пошагово, то данный робот работает следующим образом:

1. Проверяет почту и и при получении письма (шаблон которого задан в файле “WorkBodyEmail.txt”) делает запрос на поиск товара в Yandex.
2. Проходит по ссылкам из результата поиска и собирает E-mail.
3. Фильтрует ссылки с помощью данных из файла “BlockEmails.xlsx”.
4. Делает рассылку по заданным E-mail адресам, при этом заголовок письма берется из файла “RequestSubjectEmail.txt”, а тело письма из файла “RequestBodyEmail.txt”; во вложение писем вкладываются два файла: первое заявка  из файла “RequestWordTemplate.docx”, второе реквизиты компании  из файла “CompanyDetails.xlsx”.

Основная диаграмма проекта выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfsU7wAmaq3ZD-WhzwGKFlaGzFQd2hJOrDVtII1FXhSSTEjPY2OwkQeFfGgoQw4tcEAC-l0lvH5FV5X48WGLziNxfI1ia7OXvK-4_gUKb-UDjHGF7GKQpHcwcJTmm5C1UbUQ3ZU?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe5LrZONXfMAgiWmOafJN2j1KS8s-q0N7gcK4nClcpu_oacrpUH_9-eyDSv2MxNwaqK87mizM8zZznxPGMiOVKqqaR4JaF77R0ZDu3a24Y28U8Ql_XgVrNp3XKiRSee2xmscJPgyA?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернётся к текущему блоку и продолжится в текущей диаграмме как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc4dscE7y4lLISM50nQ8gs2QSiw-RIyUY82TLlhViMzpKegyzu4FFRwk2-3EnRd9csGwDD8SkhVAxnj11Vex1dMkq7NPnBeOlL_LGYFkAEbJy3fWzCCeUGhp4yr1i3HqQTJjmY_?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

3. **Блок “Пауза”** приостанавливает выполнение работы сценария на заданное время. В данном случае, на 10 секунд.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcWjKOFpRqt0PBo4moLNimzDEHvYijkCgIJYpMhNRfqsDail7ElFCXKKge5tFYoUR2h4XFLXbYUMEKINNRHhUkXGEAI3YE5QucoDx86YYevVucFYZfjNdYMSJp7vBri_7erZRnHoQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

4. **Блок “Получить письма через POP3”** позволяет получить письма с использованием протокола POP3. Для данного блока указаны следующие свойства:

* Сервер (сервер);
* Логин (логин, необходимый для авторизации на сервере);
* Пароль (пароль, необходимый для авторизации на сервере);
* Время ожидания (время ожидания ответа от сервера в секундах);
* SSL (при установленном флаге используется защищенное соединение);
* Количество писем (число последних писем, которые будут получены с сервера).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfd5UwJQKX-raktUcTKKN6zuQEYdBRD1FCrAG45GJ69Wg8RlGuKX1l8TE_nkq3rxdHU2SR-min7fAmqZgTDhbJF4PVYjreIDESx5CCFehWQeD_fbd2e4ZE2GzA6A9pcb9uvuG7T?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

5. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок выводит в лог робота сообщение об ошибке.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdtFsI9gioKuzJBWb2TWF_TxjRDHp2xFsCueAzMtFJwrVSQ9xt3LKTp4VjJJxcm34rGvb8HP-_qnXWRW6nFV6uZyTW2iB2bXqU55p-kcWYD9KsuvSHpvMPRHCs74p2DVJbeqKXzkQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

6. **Блок “Цикл для каждого (Список)”** перебирает все элементы в заданном списке, в каждой итерации цикла присваивает текущий элемент переменной, которая указана в свойстве «Элемент», а затем выполнение сценария продолжается в сторону выхода Элемент данного блока (в, так называемое, «тело цикла»). После перебора всех элементов списка выполнение сценария продолжается в сторону нижнего выхода блока. Не забудьте соединить выход последнего блока в теле цикла со входом данного блока. Для данного блока указано одно свойство: “Список” (список, элементы которого необходимо перебрать в цикле).

**Важно!** _Чтобы цикл сбрасывался нужно переходить не на сам цикл, а на блок выше не&#x433;_&#x43E;.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfcw9iRqRAdIPze320M-BcS_h3Ka312CfnrF_RejYLpSOB-qHfjvJOGheZqSOFka8ZFUHkBAQIC9LQFY2LlvRNBFHnnl0y2hrMGRSbqBhfTfJFGqwelfeIiQXFYTXc_lYKZWVnJ6A?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

7. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано два значения, которые необходимо присвоить двум переменным, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe0QLMsH6m3f4joExUfweAzhIfmSlDWlcWdMXh-IP3rHMZhgCJ__TXaNvTC0YM3XBasNVz2IaW3a43ilZexHtxSFlVVkYinlXjdWHNIB7r4-P5ifo1gDM0YyUJUQbhDzWYZSYjJ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

8. **Блок “Закодировать в Base64”** позволяет закодировать строку в Base64. Для данного блока указано одно свойство: “Текст” (входная строка).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeYm8gzk9VSJhlX60YjoR5a-ecd2duT9gBvozMga6W2jl5SOggW8O6n4tGRplDDCsebysyXCWQE-gfLLHsjco6d8FuvYpRmWzbUHtuPzzQ6d7MLJCygRo6-5HtoD83-xRSd90xNFw?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

9. **Блок “Проверить наличие элемента в списке”** осуществляет поиск по списку и определяется: содержится в списке искомый элемент в списке или нет. Для данного блока указаны следующие свойства:

* Список (список, в котором необходимо проверить наличие искомого элемента);
* Элемент (элемент, чей факт наличия необходимо проверить);
* Тип проверки (выбор типа проверки).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc4sVDtqosIF-xTg2083WIH8oy47aKbHo23oAA-SnCwVcvaBtixdtphFJNP0kj1cMpqR50yfIbmHkVDDOQS3XtMOT30_8KFiROP93-_21I4wvJKo8gXwIkwQLv5Ha0YRxL19jnavA?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

10. **Блок “Добавить элемент в список”** добавляет в конец списка указанный элемент. Для данного блока указаны следующие свойства:

* Список (список, в который требуется добавить новый элемент);
* Элемент (переменная, которую необходимо добавить в список).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfcLHEdUh_mYb6EiepwbMLinwBV3RMOWq4mgfkpp3EfF4HKVI6zNjkIEjq_hFo5YypC-ViBh4ESLQ45xo1K04nqytS4PFcZILvEQan0KAEchDMUKq8KMTsqD7LlqN5VKOylA7pC?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

11. **Блок “Разделить текст”** разбивает строку на подстроки на основе указанного символа-разделителя. Для данного блока указаны следующие свойства:

* Текст (входная строка);
* Новая строка (при установке флага разбиение будет производиться по новой строке);
* Удалить пустые подстроки (при установке флага из результата будут удалены пустые строки);
* Триммировать (при установке флага каждая строка в результате будет триммироваться).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfPfJrCIRcZQ0ik1FF-cDVvXtvPhLqJeYXDRe-_mKE9AADfXX_ZpHt9U2MMyMcLXXR0qvNgOTf_uYOCNZKGKC1pV0BhzAY6_Y8LCaHz7Xc1tt82uJcksHZA4OjIjijHH_D9ogMMlA?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

12. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $listbody\[0] == "SherpaRPA". Т.е., в теле письма должно быть кодовое слово "SherpaRPA".

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfs3eWiwWudOxDBbcqZaxXHB5l0tpXaRN4PHG28y4y2V3lyKPsu979TI74rCd3stdY25B4rsDlK7ZMAxc4h5kRnKPRHALiyUowsE1H79L4yjM-eaTVqR9poGNLCZ12q6p0aXFdWeA?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

13. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок выводит в лог робота сообщение “В письме нет кодового слова SherpaRPA”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcygnWRZwJ8Uw5ud5d7XZX5g_liO3iv6kfSkbu5xavMAht3pAhp5Hzfl7M4jpJMdAkd9glqMHFc0so2RZsHrvu4U_pFwkbcg78w0XK8NBPgoarBWNbmxigdueC3rJRNdSvI3L5z?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

14. **Блок “Цикл”** позволяет повторить цепочку действий (блоков) несколько раз и при этом посчитать количество итераций цикла, записывая текущее количество в специальную переменную (указанную в свойстве “Цикл”), которую можно затем использовать в других блоках. При первом входе в блок значение переменной из свойства “Цикл” приравнивается к “Начальному значению” (в данном случае оно равно 1), а затем выполнение сценария продолжается в сторону выхода “Цикл” данного блока (в, так называемое, “тело цикла”). Как только выполнение сценария вновь дойдет до данного блока, значение переменной “Цикл” увеличится на значение “Шаг” (в данном случае, это 1), и вновь произойдет переход в сторону выхода “Цикл”. Как только значение переменной “Цикл” станет больше или равно “Конечному значению” (в данном случае, оно задано переменной $listbody.Count - 1), выполнение сценария продолжится в сторону нижнего выхода блока. Не забудьте соединить выход последнего блока в теле цикла со входом данного блока или какого-либо из предшествующих блоков.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcCSPrW4N_NRPBVzzp_UmayaOC06x3kBeN6ScUqT-eMEnrfLqcvWOz_Tgj86a-Q-Oj6AgtIhR3ms2fOwHf20ca9ClI7tJ72NQs8Iy5PJuaNxvRhGV346m8OoFPe3ur_M_2t8O6gEA?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

15. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcej8T7uEbxkG5VIBP1Azp1sdsSWfAPhwsQJnwdV3eWqQ05u1-J2zzyGtV3--pcaYdWhTBsh16Hn5HjjTLKGw429zxWsbCSdjjjZEa9JCfO4qL6jlc9hq06U_8wcmgUzPHgbSVK?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

16. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернется к текущему блоку и продолжится в текущей диаграмме, как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXczh1Fmjb7kZIcZXuiIrKm6m3AFoQyUL5aDUpR-DQVOs_i1sd14D6p5rNqToXB-8ctOXGbhfbwIm94QbBK1ZVx2VEbuHncnTt_blE8l4KaRW6pKLz9Wzgj5-6LkrEBjd8q8_wZHkw?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

17. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $listbody\[$Index] == "Заказ:". Т.е., в теле письма должно быть "Заказ:".

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdhz2-qPI8hnywsIsyJCFY0WiBgM-WAnnbBTGDQy7UTHvjQ0nemJFoAkJcM-xT3J8Sjkz6HfBID7nZwW4e2I7q5Kqkw4xmtmauP8TBr4_3wlBv_k85wq873ZKA0VZR5Xg?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

18. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf6BOD3kUrgWbMgLPcKTYGZ9JZH2rQ46uVLzo297Oo79ehziS-_SC0gEon_xVkZvIcZnxqTezWxsCi-5_Sm5WPOE7Ix7osdJpCyy9McIKfkbA9PIav4vnGq4i3krsrVOG4xJ3ChNg?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

19. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $listbody\[$Index] == "Менеджер:". Т.е., в теле письма должно быть "Менеджер:"

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfiMuVxRJLowhFCO73Vz93cFEZgE-kvyTwIcNOJ0XWwr7mCS8al0a-NBfffRvH9jIvuvZFvPUwlsv1aYcJkH-3Jvn_mojTRmg9aehBYXRknO43jKDjkyvCfZ_2AXnomGwljvnfTAw?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

20. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXetu-uCccBGY5Btkms8EEJ-DNIcsARYNa6h63fBckaKvxsDvDE4XDdrSaJSh601bWLIJOdHBjewICytrhE6RiVYWl5b_JuI26Zry6bDuemPA9vKsEZHeHhdcqRJSdAofToOkj0fQw?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

21. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $listbody\[$Index] == "Товар:". Т.е., в теле письма должно быть "Товар:"

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe-5WM4R10qPDBCNTGwOKQTbfMAri4cASdlyJSv_yayYcWItAJui3UJQeNRZRrukYxDuh6TDIsB-cdsUfJ1NAjTlQkLDjK_UhM8NUCnFRdHwu6BzpEUbtXB5SdrLGWiGA9Pku6a?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

22. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeS7hfr3pt6s7Z7SsI4djyvwZUmqAlgguxoNM-214ZJazw6dWlIL7hscdtDAVIzl4pt2Hj_AZZ6YqTZ_CwV4Ee4apJU5KWnlCG55FKlQ43-_HkKre3dsdP6ht9fiGXSdCZRX3k1FA?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

23. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $listbody\[$Index] == "Количество:". Т.е., в теле письма должно быть "Количество:".

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdWElVcSTYhJ3wgZFu4kFS3EPvwipYHlv8EiIrqRFGZobfDZwWIljO2KVVZhIhsv5NNhgwLtaugUA-a1Z1rB8NMIlQOaBOGBFX_nCXMGnkj5DMp5fQaI4gvC2QWaHouRx7CHYRNNw?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

24. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdLopPymoiZIjmdze4k9S5kP7RpW6or2l4bWch08GgrL8gPQ_AMyM4Vjx9p8q-TvLk_Rn-FWdEsm3Uj48Y2sQrZBN7guaZj-7dDKKTWmVzmScwUnBNxgXMAxOGKKVlKvszQIwxv-Q?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

25. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $listbody\[$Index] == "Адрес:". Т.е., в теле письма должно быть "Адрес:".

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeIbZw5p2DEhsAQeKBagwb_mnTQh4xcXpILWa31twg615D9YZenR1LOv1IvGQXEWr1rtSEIzYHH7mEBO_oQ2DgZuIaJYmAOWp095MWpksIDcNM2mAbl0y7me4XmGLrrneoDCEqXNQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

26. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfZG4-u-TnoITwkbNHJPpTTQV_nH8GNynvde-z26wa0b5PnnTfxpvs0aK00PrjNxJ_bHVXkHqmnxsZh5YDfytE9WPMiM34VHqNxAVQzLgKiSIuLA1lzgZnmo2sYn9f6vED1tI6wAA?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

27. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $listbody\[$Index] == "От компании:". Т.е., в теле письма должно быть "От компании:"

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeG3B8osucsq3qD4ias-h9fbOW4bqudBwl-WbJFY4C6EIe0WpwJJOkSpbGuzUNjAJPWZ_Ilm3DyDTjM7pNC_6PROm0yFnz6OXMt-jitWDSuF2BIuU_cdbhAd2wcU7pgdiE5P4M-0A?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

28. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf_TRdYZSXhn6-rbJC8nyigMWFUkO2gAZXhB9x8B5uMJ_P8k41mKwKIvVA3nq50RUhZA4K8mm9SDDdsOgBi0j7k6sl173w-XCzP2jxJUpuc1Jw4QCLYs3aF0zS_AV5475J1Zqc_GA?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

29. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $listbody\[$Index] == "Описание товара:". Т.е., в теле письма должно быть кодовое слово "Описание товара:".

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdDAsjqlOY5FnljoYfGcZJpVjIc_xoCf5tHRk9yV4nneZxrKu9UBN85xK5mQY8tvKme0yjT0-Pp-orHj6BdMO4oBTrYFTV2Y_Isbn8J-hifiEHjViWQvbL7RmBY9ZYGWoIAc_WtxA?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

30. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeNCeTDDcd-YTCNWBVBZJdnUPWgwrpcR3EqzHBaiijGIgYG3vqWYXmdvnWheboyD2MsXEVRBGBEQaSuLYYtAFXocmtxjupUKbt4CNmKiJ26BUAnxbE-9v1qIWf5az9us18cD4X5tQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

31. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd2vBThFRSwQ40O14ze0riJBBEe9XakU5QqjvpPmL9-nba4y4O2Pyi7QLGVHmeWgGCW_tOrDUa1ypMmf8p1YIK4RjyjmDiLVWMG5z6Xo6e_jeJiF0NF46_jEvALLJxOTJgsy-h2?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

**Диаграмма “ProcessCreateWord”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfDyhcYFPaRkgZZSjX8rnDxUJVDf6AA3iZUjAglc83Nxeap9l2rbZfe0BNDQ1uiaHWENebVt3Tt7_i_dGb_pgNsBuzMsGyG_L-pdgO3Qoijd2G3_QWHP0WwTEVgtd32W503JWB9Fg?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Открыть документ”** позволяет открыть Word-документ. Для данного блока указаны следующие свойства:

* Использовать COM (при установленном флаге работа происходит с помощью установленного Word);
* Путь к файлу (путь к Word-документу, который требуется открыть).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfYog-xjlrEekdYqxa29m6-LqGJc_u_p6PNRw8GLCT8KzvcALlAiRpz22i77z6V_KM3lotKNKm03SPD0HI5R64sQb9234ZrZIIYCv85N7lKuuDq836tJzfUOYNL3SxPFamhHrEwVQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

3. **Блок “Заменить все переменные в тексте (Word)”** позволяет осуществить замену всех переменных %variable%  в Word-документе. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на открытый Word-документ, в котором в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd9KiK5-CA6s2pNhpwNXCwJZfo1vcqu3KUZw_spkXPOWgiBUxK-6ZezqlH6EIRgd3D2cM1vcrMA1u_kTHAhO2h1JZ6eyfbWovJZXSMqDT_3dymPYDgP5EiCtopqrDsNuAp22mq16A?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

4. **Блок “New file”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfrpVmnUe5M4__OuaMx03MpIBYS9vcXssVTd9JV05Wfn_AzgflMCYNXd7dYZzOo9BKddfIWPvkLyBYE-b9P2W9K5qBsrfFnbIb_LBd0889yPcrBt8n2UhdfJp99sodrXXStL6U9?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

5. **Блок “Сохранить документ”** позволяет сохранить Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо сохранить. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа);
* Путь к файлу (путь к Word-документу).

**Важно!** _Чтобы сохранить документ в тот же файл оставьте значение пустым. Иначе введите новый путь к файлу. Если указанный файл существует, то он будет перезаписан. Доступные форматы: ".docx", ".pdf"._

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdQIJuqx4te98H3DIbvgmsMrfaOBINh0xIaB5bLGP9KP_gjLTE5fYp0nLDgChAg4Z-maqeEAkBbdCOkCZlDWUgktJvg3OhT4yLDuTsy0RWxWvcDAUf5SwwMRmXPBURY5gw5ZUsgAA?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

6. **Блок “Закрыть документ”** позволяет закрыть Word-документ. Для данного блока указаны следующие свойства:

* Ссылка на Word (ссылка на процесс обработки Word-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Word", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа.);
* Ссылка на документ (ссылка на документ, который необходимо закрыть. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Word, которые ранее использовались для создания или открытия данного документа.).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcMkRDiudqbSUKrdp2ozieIUnxSU1_MLfULgsfx6atcCBGL2olqEjlXlw6NXCfvUlGS6qCIJ8puNSiEc6pEv21kVULMCeuhVwFoNKD_c9d883GOfbmRqCQdsV1c8cH0Putb00wN?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

7. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “ProcessGetEmails”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdcQ2sU-jAInQESO6R43xogNLiXQzTIZfpMu4LJWXiPP1hQHcw8hz3k9jDnqiczHiFvSZX459mPIPK-UUAcfvAjkhy1BuSvA_Jr9yo8HJDePaDDFRmr5p3av9qfiNi0jfsk_CiSHA?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe2tNQPexPJXXH11NvmKsvV3fhXpw6gGvxRHdTgacdm4UwahbWz4U6vMBZYE6oamcfRhEKo9mqL2ombFhFN_QqyzzgMYpvVfOcf7nJwhL9DaWd_RwHyvkYiQYZ6MmLNb5ON_etI?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок выводит в лог робота “Поиск:” и название искомого товара.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeG5hz67GbjLIdXSZdogz8-WhR4fCwwak8LILbb1Ab34U0wrBLxXYRMuIew_9qdc0wfXNNUDP3kFXJ3iwAfSRRAvlrZMxuHXpRThKVDNy2uaLOe5FjAFYaoxvDfcl2QcUWan4BEuw?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

3. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае, выполняется два выражения.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeOKMsWz7HxH8_96D5hKCF0sQbnO4H7VuwcymwRM3QAea5FQn84YW-49ivNWHHNffFpSqq7vLGZ-M7P8P55DZmt1Czf8BxFjVjjJI1ih_erY9DsPzg3u6zXmN-yTX1mENgX_SIq?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

4. **Блок “Yandex-поиск”** позволяет получить список ссылок в ответ на запрос в поисковой системе Yandex. Для данного блока указаны следующие свойства:

* Запрос (запрос, который необходимо отправить в поисковую систему Yandex);
* Максимум страниц (максимальное количество страниц, с которых необходимо получить ссылки в ответ на запрос в поисковую систему Yandex);
* Время ожидания (время ожидания ответа от поисковой системы Yandex в миллисекундах, при превышении указанного значения операция отменяется).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf23457LR86PZoDDW_gV32D5n1qT4VLh1WoxiD_2zXM0Cg4Hi2cTOhA5gTlrkHYm0Ll5W-o1jd_tl7gXWLa6cJ2lh3LWTzqW1x1Lmhsspy33AI7DGIu95ZzEad9GAXIdMLs8tMT2g?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

5. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок выводит в лог робота сообщение об ошибке.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXejz0WsVhpnbLAOgq6IqS8EHHrFpn8B9omINMWbf974PSI1X1r4_HQkeYxiIYizHSawoeSMPecHJn500gxUp7NEhzpFGXHfatAHJnO4RU9hnOIEFXai1YApPnNYLHmW3TLEmxx1?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

6. **Блок “Распознавание CAPTCHA”** производит автоматизированное распознавание блоков CAPTCHA.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfPxECb6uekktUbPaXVKvrR4MGRmmoj-kgf_o-lFg1cx16-wTrAHSw3Jc6oTCCaT0yyslDZCWP74JNblNGAo_IJmroi-33d2LhzsywaUdQZrd99t_pXF2Mh68rAGZIaL-tbDTTpOA?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

7. **Блок “Цикл для каждого (Список)”** перебирает все элементы в заданном списке, в каждой итерации цикла присваивает текущий элемент переменной, которая указана в свойстве «Элемент», а затем выполнение сценария продолжается в сторону выхода Элемент данного блока (в, так называемое, «тело цикла»). После перебора всех элементов списка выполнение сценария продолжается в сторону нижнего выхода блока. Не забудьте соединить выход последнего блока в теле цикла со входом данного блока. Для данного блока указано одно свойство: “Список” (список, элементы которого необходимо перебрать в цикле).

**Важно!** _Чтобы цикл сбрасывался нужно переходить не на сам цикл, а на блок выше него._

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfvOQD8fDwlets5Ws-kXhHUEvK_U7jsaqGSydpqqbYhKlsMCQGFa7GJRil8KOc2BMs1pOvIiW1M8OgyilApz-qtayS8rCmJExv3Mv3a2xRH7qor9feB5wIT4kqurXGF_GJRY4Lf?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

8. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок выводит в лог робота URL-адрес товара.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdGHMnSBtRZYKgA3x_Qd2iRjwhCsK_o9X0ePKJqH8hXKkDn9NNCSFFucXT5_mHYSrb5p82NO8ps5GVIO915kt8kVCCew729vZPN6XD73lo4RwmOUGPSxYzS9vF19eKPkZfx1LibcQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

9. **Блок “Выполнить GET-запрос”** отправляет GET-запрос и получить код возвращенной страницы. Для данного блока указаны следующие свойства:

* URL (ссылка на Web-страницу, к которой необходимо отправить GET-запрос);
* Кодировка (кодировка Web-страницы);
* UserAgent (UserAgent, который необходимо использовать при получении доступа к необходимой Web-странице);
* TLS 12 (при установленном флаге будет использоваться защищенный протокол TLS 12 при получении доступа к Web-странице).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeG31E5om7OMFbFRo-vVPcQMcKHPJ80g4k1NHbSytBi6X0KpvAXF8gY6PfwqDKpNjxRms4gOaZDAmh9rxkygER2K8d--XbAgFbf3Qp22S3MitFCR4ezCbTK9hOFHureR8O7BYY4?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

10. **Блок “Получить список подстрок по регулярному выражению”** позволяет получить список подстрок из текста с помощью поиска по регулярному выражению. Для данного блока указаны следующие свойства:

* Текст (входная строка);
* Паттерн (регулярное выражение, по которому будет разделяться строка);
* Время ожидания (предельное время ожидания завершения операции в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc6c07iSAq8rNd_k4hJxkWif_98CweqA26pu6qWxZ3TwYSZiX9k4qRwFzeR41xHja7delwPfeduHxt5HuWxULXKF2mkRRsNRFFABol04FxQL_OGsFv_6qtktWsYNYoRnTaG3ywelg?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

11. **Блок “Цикл для каждого (Список)”** перебирает все элементы в заданном списке, в каждой итерации цикла присваивает текущий элемент переменной, которая указана в свойстве «Элемент», а затем выполнение сценария продолжается в сторону выхода Элемент данного блока (в, так называемое, «тело цикла»). После перебора всех элементов списка выполнение сценария продолжается в сторону нижнего выхода блока. Не забудьте соединить выход последнего блока в теле цикла со входом данного блока. Для данного блока указано одно свойство: “Список” (список, элементы которого необходимо перебрать в цикле).

**Важно!** _Чтобы цикл сбрасывался нужно переходить не на сам цикл, а на блок выше него._

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXecNTcJgSaopIoAmMcYQqo5m1aXZ3VquyAs_5aoS6WOnYWDHG6DQ-80W_uD5XX5iM_4j8zKPBKnB3rJMnvPu3hXSAzzG_S_kQdjsMJyvM0qxN7Li9QHAhiHoFI110Fmrbi9dxzxlg?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

12. **Блок “Удалить дубликаты в списке”** удаляет из списка все повторяющиеся элементы. Для данного блока указано одно свойство “Список” (список, в котором необходимо оставить только уникальные элементы, удалив все дубликаты).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfQHb-9uqTVVvQpocrqh1jyd1I-ISc14Uae7S1_D80d4eEqL6Qf5lBuvW_4umde9M7ATtfVY6ncq1vOKMtbrvxVcMjca-y7qyKgGnLzQVJXzg4XIUwIkNOonkS6gP9xR5jof2Kctw?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

13. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $ListEmails.Count >= 5. Т. е., значение списка e-mail должно быть больше либо равно 5.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfkQ80GAIhCfo6YD8z3hK6wdGuSHKUaysSAAEhgimoYZBtn4ayzdL4ptEjOpWca0A0kgx9xTPZY7hplcGVi4IsiMUUn0B7aA3hzzeEXm0U7Z0r0yx02dB76Da8GdCcVopas-NdTdA?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

14. **Блок “Проверить существование значения”** проверяет существование значения во всей таблице или в заданной колонке. Для данного блока указаны следующие свойства:

* Таблица (таблица данных, в которой проверяется значение);
* Значение (значение, которое проверяется в таблице);
* Столбец (номер столбца, в котором проверяется значение. Нумерация начинается с 0);
* Тип проверки (выбор типа проверки).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfQT8zJV0JAVDQdlxYFLNG733yyvZ3bn_NfVd7n2oUbK8COFFtk0QP1bNHSsT8QuXazzy4hdjMrB0Q-wXrC-_LNLauOvFKnAZ7jSgFZOByP6-kmBk5K8xZfu1SXaFr3KJbNmKuuCg?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

15. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”. В данном случае, в качестве условия установлено: $Result. Т. е., получен ли результат.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf1m0UIesZ5Gn3SUjPiMlF5NCr2gaSs0UF70DP035h0hgmYN6luKxDdaOpNSkeooUTrUWmz6wJP9C8-SWlZAKho_EnRnpX5ZGCwdFisfpzMBF_r2eOjj64WwxugE5dBCglywrPt?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

16. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXecmde-6TtkHxZYTs4OIyei6nNrRgeLVzI1usAWsVK09jkmCFseFB6lW9mcCVH1lEBSZEZdhM1341HFgTLUyy1DeGgTl4T4PNwyhhEhZjaC0eai_Oz0gAntVw8DDrb4jwHKXIY2_g?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

17. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок выводит в лог робота “Количество найденных Email:” и само количество.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdf_4Eu3weQUKYM8B4ZPSYnCpFOLCGGz1WtOqBLABDU58eENFN939iQ4mBg1JCCazrzzueICt53_PMNuQGe3Q-GbPWXvx6r695TEL3hmXhmHJIL-q2KkaGFlRI6Qr9HrvSPg2Yozg?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

18. **Блок “Цикл для каждого (Список)”** перебирает все элементы в заданном списке, в каждой итерации цикла присваивает текущий элемент переменной, которая указана в свойстве «Элемент», а затем выполнение сценария продолжается в сторону выхода Элемент данного блока (в, так называемое, «тело цикла»). После перебора всех элементов списка выполнение сценария продолжается в сторону нижнего выхода блока. Не забудьте соединить выход последнего блока в теле цикла со входом данного блока. Для данного блока указано одно свойство: “Список” (список, элементы которого необходимо перебрать в цикле).

**Важно!** _Чтобы цикл сбрасывался нужно переходить не на сам цикл, а на блок выше &#x43D;_&#x435;го.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeAHmYCkBzEGDyj5vr1yY1GjRo_4BxR9hLLl2jpAbwGre9XzK847ac2UfsObW5kFFVneSNLLXmHQIkuSLGi71csvKe5gYGX8mr1Exkst7cDIpFjjl2sh905o_rF4ErZNM7YK4jZXA?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

19. **Блок “Отправить письмо”** позволяет отправить письмо с использованием протокола POP3. Для данного блока указаны следующие свойства:

* Сервер (сервер);
* Логин (логин, необходимый для авторизации на сервере);
* Пароль (пароль, необходимый для авторизации на сервере);
* SSL (при установленном флаге используется защищенное соединение);
* Email отправителя (E-mail, с которого будет отправлено письмо);
* Email получателя (Email-адрес получателя, которому необходимо отправить письмо);
* Тема письма (тема письма);
* Текст письма (содержимое письма);
* HTML-разметка (при установленном флаге содержимое письма будет отправлено как HTML-страница и может содержать теги);
* Timeout/Время ожидания (время ожидания ответа от сервера в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXctryQ1nX2FMVdtcLgywyJrwPMNBHaOgCyx7QM_shPzF6AKaLOjtrv-TjXaV1YBd7YyO5TXZypB8pWjErDvfeCWxP_2lo6phMXH0cLL8vT0cbitHKEav2M6qc_JajOkFadp5Jac?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

20. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок выводит в лог робота сообщение об отправлении E-mail.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe2gkVuehzD6sIklA3px5XX30vcMuDiSKJpcesPdXZJ-Oi-3sZbGgMwiABUM53xXaUMiWSUGVP2WTWfJf_6ddnBlZ73HKQf_xymbPgcOqPN3WUNduqO3FNzWNpJMnVdidwZSv8Y5w?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

21. **Блок “Заменить все переменные в тексте”** осуществляет замену всех переменных %variable%  в тексте. Для данного блока указано одно свойство “Текст” (входная строка).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfqJBc_qVWYE8QNoE08DnS84t6k8knRTX057MxldYu46Jugs5cZv1X9QK3cyabvIVX8JdT_wugUEeqoETCkhxGlJP3UE46X_Q6C2p9ON3m0gspGzoAFQebVVL2eW3_SknGx71rX?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

22. **Блок “Заменить все переменные в тексте”** осуществляет замену всех переменных %variable%  в тексте. Для данного блока указано одно свойство “Текст” (входная строка).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdAignzlTVMDh0EZW-igg62EQ8kezRmzPRoUi41Vx066fXQNxbd-yVSVL8onmJ9gPpShMVaZpKyRJca8TFtg548WSGex9_uZi2fjjVC_f4-x7kM1QxxPRNKAKl2ypB7ZRb0sLb8CQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

23. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeRW53rhDEvonTvUaI1jhzVnB0Pk8EyG1UPStofTwzWbx2ktZ-UTjQAv8q7jAeHtcM8-hX-8lpfLHdhieiMSScu0FIMZRnkWtyTQaXUHBA6E5OmEiqBviP2XeM4vxCTQ921-pPaKQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

24. **Блок “Найти строку”** выполняет поиск по таблице путем сравнения с  заданным значением и возвращается первая подходящая строка. Для данного блока указаны следующие свойства:

* Таблица (таблица данных, в которой выполняется поиск строки);
* Искомое значение (значение, которое ищется в таблице);
* Столбец (номер или название столбца, в котором проверяется значение, нумерация начинается с 0).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe2eHpoJ7aavL6txNa2pjPukdtuhxMQi1PLm83i9J0YsTpKJiLP-HxKX8srXqDScCZn_AAlTjsohucWlNtJiqad1-2FI45qCd5OLOsOxdqTnTKrXVuFCKrpPtI32TAwLrK8YAYj?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

25. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”. В данном случае, в качестве условия установлено: $RowOrganization == $null. Т. е., строка “Организация” должна быть равна нулю.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdqvDeyzILxTfX5fHEy4p5nFUjWx9bNBiEi4h4Y1oWN6VyYWJ07n7s7t4b-bc5WOZm5LVVI2aZBJytJqIFAqZY5kbAohBSnharpYZQb4VvnlVjUo8rlXlSdx_avTxYvo-hqOtq0rQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

26. **Блок “Добавить элемент в список”** добавляет в конец списка добавляется указанный элемент. Для данного блока указаны следующие свойства:

* Список (список, в который требуется добавить новый элемент);
* Элемент (переменная, которую необходимо добавить в список).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfBQGZa5TSuQUZPQjDHd20v_yzZ2bjNdOS4eUc_Gq3_sHfnPlBxYU9Q5k7teDDDdjlTun1AOxMPAvNsjiQUx61sYKL5jXUDOeABKGGYnFtPMGXiDpubtXKEABDYGn0AMRUgUArV5A?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

27. **Блок “Добавить элемент в список”** добавляет в конец списка добавляется указанный элемент. Для данного блока указаны следующие свойства:

* Список (список, в который требуется добавить новый элемент);
* Элемент (переменная, которую необходимо добавить в список).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdQ5fqkyAifarJk9CyYecFiUVaxy1cnweyXZ-Aipe39HKz5UxGkAAbOLr8wHwQ2v4YuFoL6-_6LrFc716jUN1YwLyXqa0UZkv0_fhGXmzAnmMN3-PZ260b5m4W613IHKHoc3h_vCQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

28. **Блок “Отправить письмо”** позволяет отправить письмо с использованием протокола POP3. Для данного блока указаны следующие свойства:

* Сервер (сервер);
* Пароль (пароль, необходимый для авторизации на сервере);
* SSL (при установленном флаге используется защищенное соединение);
* Email отправителя (E-mail, с которого будет отправлено письмо);
* Email получателя (Email-адрес получателя, которому необходимо отправить письмо);
* Тема письма (тема письма);
* Текст письма (содержимое письма);
* HTML-разметка (при установленном флаге содержимое письма будет отправлено как HTML-страница и может содержать теги);
* Вложения (путь к файлу / Список путей к файлам / Словарь с файлами, которые будут прикреплены к письму (ключ - название, значение - путь к файлу));
* Timeout/Время ожидания (время ожидания ответа от сервера в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXccnI45AIpNSXka2pZ3flXv7QYb0h6pggFIFQym42UapixtuOcNBsmDHjQrHw7GgWB8LaozUsOfLO33MZ0j20C9NWDKwkDrBGzjvQhF0S9kzWVlejp1ZiyVMTw1fOewVqmgGtuzzg?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

29. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc-pG8xaS_Sqg5U7fz2IHI1ZnUrotKk4xthj48HX_2SforRq2AqXK_Ji10CTERQYjd8h0bnapuSXaBH8QvKu8hHBhEZNfHRdg-AefhoPs1uO4zgcjMAmVK3W0qlrK4QiloeNXo-YQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

30. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcV_hyXibZI0e6UVvMllSuAqEW_wsV1a7neOsrpzFz5KoJ-0rVnMbSo3PdsBlJLqVE_GrEmrov2O12n1gIvrJouwSK1NDPjSb-pFtcemGs_d65CQAmblhGpKyV_7NdGCP_MDUB5ug?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

31. **Блок “Получить путь к файлу”** позволяет узнать полный путь к файлу. Для данного блока указаны следующие свойства:

* Путь к папке (путь к папке, в которой располагается необходимый файл);
* Имя файла (имя файла).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdGxrUr9xdEOtP45QLFZpBKrnApn1xCjMHo2-XC7Of6W-pVG7cA5krvz_nSs9QdhLARwt2Qz8m7WW4Q70MuFoEqERsZgjyy20F_Wtz5NSslzFn2mASSaYpOixKpAk1cVvPNKUV-TQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

32. &#x20;и 33. **Блоки “Конец”** (этими блоками завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “ProcessSetting”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe677WtvSkz1w4UDSbNxwGp5G1-0uiR2yq1T1sAVOBXi8BsBT2WS3_4S2C3Iw1FAWoi_aVX9eFC-xlSMVMLDujIH6SWy-mceMklCUN-PvUyf7T6L_vX_JyoesG95k8qk9nayYrebw?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Получить путь к файлу”** позволяет узнать полный путь к файлу. Для данного блока указано одно свойство: “Имя файла”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe6QSSGNTwtuL9na6ygpfKk7-SZXi9W1nHHq2Lq9SsjSEV04h5UANJNCFeMgwbFlOOnvppoXO2Nz-YRKjAyprgbbwV8pcwkdrGrR_8kvGGmSUDLDaBmykC5WGIDhbr28vsEkME9BQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

3. **Блок “Получить путь к файлу”** позволяет узнать полный путь к файлу.  Для данного блока указано одно свойство: “Имя файла”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdVIBlS0HvpN91a2ASii34JSN70XleQ5k6lk9nELBYYQQtfS3QfzGvihIzN4bBLgbZZCJNJaA3-xt93wwjHCPJHrsOgD_m7HWjpzCtVzd10_qmEREjrfYwwxL7wPucglmSNMUfVhQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

4. **Блок “Считать файл”** позволяет считать содержимое текстового файла в переменную. Для данного блока указаны следующие свойства:

* Имя файла (имя текстового файла, чье содержимое требуется считать);
* Кодировка (кодировка файла).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcVDcC1iOAq2Nv0ayAyr_OI3ThLZoynNf5zimdknn74moQUMOEL9pAhnEV8fvAsrIJinwChRliO-tIwpZAv23T7WB1RWV2BNfRMvdVi82kQ-L3Gcl-hF0BZ-lFeV6YuiI-gk0M?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

5. **Блок “Получить путь к файлу”** позволяет узнать полный путь к файлу. Для данного блока указано одно свойство: “Имя файла”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXejAUPiihTWqK2DnkD9SXHkwQimmHk7NX9vbebhnules21FHPbckIDdFxfjFx-5SGjWqxjsd_bXtnZ_dmPcHxtOWT0FRgKbwiMT1el92oxnHTUTtr0LQ94AUPjgBA7F6M7E3jMpmw?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

6. **Блок “Считать файл”** позволяет считать содержимое текстового файла в переменную. Для данного блока указаны следующие свойства:

* Имя файла (имя текстового файла, чье содержимое требуется считать);
* Кодировка (кодировка файла).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeJFfgeZT81rV07JmKbkS7e5XmFUIZCqgQPM4UMJtfIz-e-Rdh0FK88bnqJfNIXzlHYw3Ekg5Im2ZgBTOxZ4GM0442RPcyKUGgc0tfZ4pHIF5OU6MaVEQj83uoh1f_H972pcb6qqQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

7. **Блок “Получить путь к файлу”** позволяет узнать полный путь к файлу. Для данного блока указано одно свойство: “Имя файла”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcOWd-pC6Jj6ntSBHHKrqVjZ01lAsFXjVlojmvjLJOdfs6bVkoyfAjsO15EUzSWiFGed8yPFogaz2qGJ5ddCPTXzZI8EMEAetYAm5VymxVG5Ry5miDcDby_v9Gz14s4JLS0wjoqHA?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

8. **Блок “Загрузить Таблицу Данных”** позволяет загрузить “Таблицу Данных” из Excel-документа. Для данного блока указаны следующие свойства:

* Путь к файлу (таблица данных, в которую будут загружены данные из Excel-документа);
* Лист (порядковый номер листа, данные из которого необходимо прочитать в Таблицу Данных).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcJNedbos7RXA5AkDi-p1FiEJGKYFJy_Ni4cHB35LerOOqWtvQ3TYj8W_ZQ9rGu_4i1map_CfWPokJ8Qr6oVr3iKvsOv0DlCXFyZ3okj0hAdW8cEaZWsc12HKpa6sd6sVsgg9myOg?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

9. **Блок “Получить путь к файлу”** позволяет узнать полный путь к файлу. Для данного блока указано одно свойство: “Имя файла”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcMhj24oGirsuExKk7AOoqm-ewqQH8MHtjNOvFxlgFmBs9nfRiY8dEs_A1JyIob2pkZxa5WyeM1oEynnXNdHTZ1-Q9KC2nettVsEZncKMLXnI_8ILT00O9jlI1NEPvCrYnvAkG5aQ?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

10. **Блок “Загрузить Таблицу Данных”** позволяет загрузить “Таблицу Данных” из Excel-документа. Для данного блока указаны следующие свойства:

* Путь к файлу (таблица данных, в которую будут загружены данные из Excel-документа);
* Лист (порядковый номер листа, данные из которого необходимо прочитать в Таблицу Данных).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd-__flDErov_pC6nUgPWcp6v5steGtr30iOgJfsAjR4vT1NXS5yPSOw1zkGls8Z1i0SARjgEI0VITH96-8K3JDXIsa4Uq7Hez_MDW5Yt4Ut5ccEZOAl3r2rQ7drdNGtVYGvwPHXw?key=jbUDunSxnrB5kl7NOMhHjOp2" alt=""><figcaption></figcaption></figure>

11. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
