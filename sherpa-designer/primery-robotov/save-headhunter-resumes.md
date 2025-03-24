# Save HeadHunter Resumes

Рассмотрим пример робота, который сохраняет резюме с сайта hh.ru.&#x20;

Проект робота состоит из одной диаграммы.

Диаграмма проекта выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfoJ1G5-ad76k0LtUnBDgVzLni8eLdVUh9hWB8cbJ0HIG_eu7vVyP_qDIieOp33xO39N7rHPEHC1d1PGfl1ZUVtBZwFxFbOekwrWIAiinYWM7_FP3R4_SaZvYTlFWMpVOvtuetTbQ?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcmitzg0qRtCXKpMrpFlK08UyZAowBWjPq2aCvXsPfcC-lHIMKH94BX9RdqmlGzA_RkY4CcxI6882rLd0porEVjSk--eV_yP7j7cpqhyT6uRNunn0lIA3LBwmfIvBbR4F3bhbpd?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Окно для ввода текста”** позволяет показать модальное диалоговое окно, предназначенное для получения информации от пользователя. Для данного блока указаны следующие свойства:

* Заголовок (текст, который будет отображен в заголовке диалогового окна. В данном случае: “Sherpa RPA”);
* Сообщение (текст, который будет отображен  внутри диалогового окна. В данном случае: “Введите поисковый запрос:”)

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdbtGm2IcJGlLEp43uVGKz33zPscZimfZDyr1VGzbkFfxkuRCcX39d1VuNcKQMTOJ7kiLqLvy0--qTzGHWYNJHbZU1c7WrPVTJvAeHWCE-8HUpKvy2xbVjj9cRTkp8eiHQ56_5t9g?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

3. **Блок “Кодировать строку URL-адреса”** позволяет кодировать строку для передачи в URL-адресе. Для данного блока указана входная строка “Текст”, а на выходе результирующая строка “Результат”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcaUmaN5lBFwM7ih1yku5l0jsz38BTB4Fb1ni1tqPFUdsr3QotR9YzaALIa-M-NSYy5gNCJhW6VIBufFuXLNXYPUd607FdC1MfvEa74XZTAjYh5fW3uW4R-xddzDUKZ_Z6F8gh7zA?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

4. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано два значения, которые необходимо присвоить двум переменным, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfsYQWggFoEucCu8DxnbT3-tpGxclOxJg_1rYf5sAWvEM8gFHc8Tk56DLmEruYp48nNYk4I-xYFjg-Mfe1qaNTdPOnZD_7yPhvgNo7jOelzkDvZCfKYAcxG4BSzZBwCCEy3rWIf5Q?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

5. **Блок “Запустить Chrome”** позволяет запустить браузер Google Chrome. Для данного блока указаны следующие свойства:

* URL (адрес открываемой при запуске страницы, указанный с помощью переменной);
* Текущая вкладка (при установленном флаге страница откроется в текущей выбранной вкладке браузера);
* Время ожидания (время ожидания запуска приложения и загрузки вкладки в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcpc7wE9Wkf8pirj0_4P7GcDyNOJerB3p6FENehumDWsXbTiZvqMXd8iVt1Mj_W9XW4BWEXjNl_rJlycCpHRUJbqFXotuVT3LvXkYpDN76vrkccnps5kspY1jxcXpaNvISK8Kb-?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

6. **Блок “Посчитать элементы”** позволяет получить количество однотипных элементов на веб-странице по заданному селектору. Для данного блока указаны следующие свойства:

* Селектор (идентификатор окна браузера и элемента веб-страницы, общий для всех искомых однотипных элементов);
* ID процесса (переменная, в которой хранится идентификатор процесса и вкладки браузера, используемые данным блоком);
* Таймаут (предельное время подсчета элементов в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdkh2h4PPTz66h-QBp4QLMA4WzFVZKfZCrXK57Y-BDjLkslDnLBJMjgIzMCp4MKM-MVQj0EVLanpAvgkb-GTDvPJ1PkYBjJblp1egDj4QxsdT5Q3sjDZRBsSwv_p_L7ILBBvoPXyw?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

7. **Блок “Цикл”** позволяет повторить цепочку действий (блоков) несколько раз и при этом посчитать количество итераций цикла, записывая текущее количество в специальную переменную (указанную в свойстве “Цикл”), которую можно затем использовать в других блоках. При первом входе в блок значение переменной из свойства “Цикл” приравнивается к “Начальному значению” (в данном случае оно равно 0), а затем выполнение сценария продолжается в сторону выхода “Цикл” данного блока (в, так называемое, “тело цикла”). Как только выполнение сценария вновь дойдет до данного блока, значение переменной “Цикл” увеличится на значение “Шаг” (в данном случае, он равен 1), и вновь произойдет переход в сторону выхода «Цикл». Как только значение переменной “Цикл” станет больше или равно “Конечному значению” (в данном случае, оно задано переменной $Count), выполнение сценария продолжится в сторону нижнего выхода блока. Не забудьте соединить выход последнего блока в теле цикла со входом данного блока или какого-либо из предшествующих блоков.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfFhv3Cc1YZAkXrpia7Fb7VbJoIOgux1MuSEVj88XmoWfgIBol7QQ4iCMhH0DP69c_LCgZFbwpinR1mJpGQYlpdi8OCNIvtD6Z1O2ETYla8IvEXpNArLQye_8X0maw2mGOKIOxMNQ?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

8. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота индекс обработанной страницы.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfDYllrYy0KGOMiBvdhfTSZNyrp3slXpBT84gRlewiPa84fGFTDN8eO-BDgoQxnFAe0aLtX_X3sHBp8pnS3r_gZCBeCun1SsKMeGKPHoWXIf1CQ6PmJWPVDo6SESxALwrwfEPC2Bg?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

9. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXclCcT0pnune75OeDM_Wl0C-QJ58LuN-7AiuVPzKK2EMvQKl7GjoDwQE-u1k51weNT_Zrsqu46BfjmfjxSjY6Zt84XBCQchmHh5VujWCIgdqKqrSiDjT3ZXDfXTeKbKUolvbD0sCg?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

10. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $countpage==0. Т. е., переменная, указывающая номер страницы, равна нулю.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXetXQ5Ob-M9lCp3HzRjNeVaILutpQ2z-9RxTabW6PsktJbNUpYeedb-rnB7wT1wEau1rwuy2a_JwUI_MZ4nldWnnFwirxBC6-N2lHWbxNN5qbKaEyzg0H4utpLOmExBYHSZe6Hp?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

11. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано два значения, которые необходимо присвоить двум переменным, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXedGqCnIfQwyLFfqJdtlhv32SqeQBt8rvY0qe2TMnORJEEPYaat-NG-xdXUe5wzOlEw4xgVYP7FjpuSGwR5bxEdN4RZfqYAE2AilU139DU3BeFLIAfCvYN56zA404a5J4acbnFR5Q?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

Блоки 12. - 18. частично записаны с помощью инструмента “[Запись](../rabota-v-sherpa-designer/osnovnoe-menyu/panel-razrabotka/menyu-zapis/zapis-deistvii-polzovatelya/)”. Данные блоки содержат серию эмуляции кликов и нажатий на клавиши, результатом которых будет сохранение всего резюме в файл формата html.

19\. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $origfilename != "". Т. е., переменная не пустая.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf7ukTWXAoddcAAuebmjNypBnrUzPXMyeTlPwhlqNOC7OFcbcpmvIosHxjtofAbQjtH9x3hGrhFYyrtqIkQwV9aZBA3MtOztQ1I24nUq1hG3xNBHjsgkbz-InwfGJBHDM4Oe7hbIA?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

20\. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfu-Uop1smQc92dvX4Y1VkbLf41zLmFS9bi26xFO7F_oJJ6vrzcE85OhCHFWlxDNve5DnNggOnKLVOnvJuU_AQTzagYRhRONVAyNC-9tHrw9BO3KEbz5nVjckdkcRg32mk6dkmEdQ?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

21\. **Блок “Случайное число”** генерирует случайное число с заданными параметрами. Для данного блока указаны следующие свойства:

* Мин. значение (случайное число не будет меньше данного значения);
* Макс. значение (случайное число не будет больше данного значения);
* Шаг (шаг случайного числа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdLC_EMHo4KJN-JNCDKuDF8OZx5qeHM2P3rlYJbZUDGg_3LK3pJ7GZll92mZiskUP9Mr6z9zasXtlTmdSd6ET7E2BQzkuu8aIoG15iW6KKUJXmF3qpbRmMusAuufcbDZfYJEynEqw?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

22\. **Блок “Переименовать файл/папку”** позволяет присвоить новое имя указанным файлу или папке. В данном случае, файлу. Для данного блока указаны следующие свойства:

* Путь (путь к файлу, чье имя необходимо сменить);
* Постфикс (постфикс, который будет добавлен к имени файла);
* Временно (при установленном флаге переименование файла будет осуществлено только в рамках работы программы, изменений в файловой системе не произойдет.)

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd-u4fxlj4bmdToFp91PTWgZeobF54kMCJgqfaE7C_G79Yd3hPT_balbozK7hpKzP_9-ZbUJ-rXkWZv-tmPalH1r3T-prWJzsbRCe-RMVyzUgjB9ZWrbweL-QriaLOvM7UM1Vu9Nw?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

23\.  **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfWLfVnAHJCl7nxl1W6F0zSaCGD3H9EOnjSlgpjL2tAN2hjEDcqpWqdqKnY4IPkbqk5N8aCD1G6L11nEgOmUmNEQ48YMElhKJeLZbceWM5T0OFw3XyL7swkVFVhOVGtATs7woKEcw?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

Блоки 24. – 25. содержат серию эмуляции нажатий на клавиши, результатом которых будет ввод имени файла в окно сохранения Google Chrome.

26\. **Блок “Клик мышкой”** записан с помощью инструмента “Запись”. Данный блок эмулирует клик мышкой, результатом которого будет переход на следующую страницу.

27\. **Блок “Очистить кэш селекторов”** позволяет очистить внутренний кэш селекторов. При использовании селекторов для ускорения поиска элементов на странице используется внутренний кэш. В кэш заносится информация об элементе после его успешного определения, и в дальнейшем при поиске элемента сначала проверяется кэш. Если в кэше присутствует информация по данному селектору, то она извлекается из него, что существенно ускоряет работу робота. Однако, в некоторых случаях, данный кэш может негативно сказываться на работе сценария. Часто это наблюдается при циклической обработке каких либо однотипных элементов на одной странице, например результатов поиска. В таких случаях рекомендуем очищать кэш при запуске каждой итерации перебора однотипных элементов на странице.

28\. **Блок “Закрыть вкладку браузера”** позволяет закрыть заданную вкладку указанного браузера. Для данного блока указан ID процесса (переменная, в которой хранится идентификатор процесса и вкладки браузера, используемые данным блоком).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf_RUtD_XltvrsttIUQyokm_BQC6KNQr3TT-4u-ruqHxQoURsBTd7g4HNi4K6J6ICfS39vH1uJtPM4nxPZ6Z3JJatRY0c22lLX3KnMFmr-8v-2iaF0f-eZ6rZzm3ZUlCPWuXk-QFQ?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

29\. **Блок “Пауза”** приостанавливает выполнение работы сценария на заданное время. Для данного блока указаны следующие свойства:

* Единица измерения (единица измерения, в которой задана длительность паузы);&#x20;
* Длительность (значение промежутка времени в заданных единицах измерения);
* Запустить сразу (установленный флаг включает применение задержки сразу при первом проходе этого блока с момента запуска сценария робота).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcEZqql1OVckfJAqO3HLIW1oin15rxToZi9ieW7Ek3_QtsPVzHySdxMhNlya9EeRrDAbtllH9GnogajyMk1rmtGVL_Be8kjYYfltowq2UpiKFbdMf4dyrLxnAKDA-Ylxrx8xPV-0Q?key=7s1g-lT9vbX__uGNSqzDxVxY" alt=""><figcaption></figcaption></figure>

30\. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
