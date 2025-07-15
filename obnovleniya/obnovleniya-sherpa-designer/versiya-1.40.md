# Версия 1.40

**Вышел новый релиз Sherpa Designer: Версия 1.40.**

1\) Протестирована и подтверждена корректная работа Роботов и Дизайнера на импортозамещенных операционных системах: [Astra Linux, Red OS, Alt Linux](../../sherpa-rpa/ustanovka-sherpa-rpa/ustanovka-sherpa-rpa-na-linux.md), [ОСнова](../../sherpa-rpa/ustanovka-sherpa-rpa/ustanovka-sherpa-rpa-na-osnova.md). Адаптация работы Роботов под данные ОС обеспечивает стабильность, защиту используемых данных и универсальность применения в различных средах, что важно для соблюдения требований безопасности.

2\) Добавлена возможность запускать Робота в [PiP-режиме](../../sherpa-designer/rabota-v-sherpa-designer/rezhim-kartinka-v-kartinke-pip.md) в скрытом (фоновом) режиме.&#x20;

Для этого в меню Sherpa Assistant в трее нужно выбрать пункт “Роботы”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcSekjmsebhE56XdF0Q427nQHpDIv3KJ6PgH5BonB-I7NWKReu7bSUxy_SSOzSQEqxyyvMN-ymgRBK8-Q4CX4ytgGsj1XAjbmBIQ2-EVylaO0TEnlvG_BRSnJB4OByA9Z3hfgra?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

Далее в окне “Роботы - Sherpa Assistant” необходимо нажать на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXe-kRm63HvUcc4rIRti-vvpBbbDr0JvBAPngydVhDM_nRP8OAg8fNA7CIpY8hruInOd_boDXlsFak-tJ_KdGKTiUOtweAtR5GrNA6-9W6gPc6QAuiiSu4EFpaSpw_YtGaW7c99l5A?key=I5kD5wbBMNC3jCGTCEOQ8Q) и выбрать во всплывающем меню пункт: ”Всегда запускать PiP-клиент в скрытом режиме”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcpisZ83Rgn9C3P9k0e-VUSvFoHI23Bqe-1apNhoFkiFItzixyTAV8y6Rh5-mSSprHveL-F_Z6BQYwEZG6MJW6mz7OnOzuiYtFfCxisqiIemy-nBPEZCBpjJNvlhvojvVKQeJt9?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

Настройки запуска PiP-клиента:

* **“Всегда запускать в режиме PiP-клиента”** – при включении этого параметра Робот будет всегда запускаться с отображением интерфейса PiP клиента, видимым для Пользователя.
* **“Всегда запускать PiP-клиент заблокированным”** – Робот запускается в заблокированном состоянии (интерфейс PiP-клиента открыт, но Пользователь не может повлиять на работу Робота).
* **“Всегда запускать PiP-клиент в скрытом режиме”** – Робот запускается, но окно PiP-клиента скрыто и не отображается на экране.

3\) Для работы с селекторами реализована поддержка технологии Microsoft Active Accessibility (MSAA). Кнопка “Запись MSAA” в окне “Селектор - Редактировать селектор” позволяет начать автоматическую запись всех взаимодействий с пользовательским интерфейсом с использованием возможностей MSAA.&#x20;

Нажмите на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXfZwufmbjHIog_KeOuj8nUyfbOOM0e-ahntscTKn7wrZvX4vjXOdWtZx9_i9TC5leA74tXkP7FYRZcvSyh97J5QQ5Nk281oNavCnjOqQWscnTW6sKBfpF74u-Nltl14BaQ-mQmqrQ?key=I5kD5wbBMNC3jCGTCEOQ8Q) справа от элемента “Запись” и у вас появится возможность выбрать и нажать “Запись MSAA”:

<figure><img src="../../.gitbook/assets/изображение (202).png" alt=""><figcaption></figcaption></figure>

Microsoft Active Accessibility (MSAA) — это технология на основе com-модели компонентов, которая улучшает работу с приложениями, работающими в Microsoft Windows. Поддержка MSAA позволяет более старым программам взаимодействовать с современными системами и технологиями, улучшая их работу, повышая стабильность и доступность, а также облегчая интеграцию с другими компонентами системы. Целесообразно попробовать использовать этот метод записи селекторов в том случае, если с UI-элементами вашего целевого приложения не работает стандартный метод кнопки Запись.

4\) Появилась возможность создавать свой блок из текущего проекта робота. Для этого нужно выбрать пункт “Опубликовать робот как блок”. В свойствах проекта необходимо указать и входные, и выходные данные.

<figure><img src="../../.gitbook/assets/2025-07-08_21-25-51.png" alt=""><figcaption></figcaption></figure>

5\) Появилась возможность быстро выносить (конвертировать) выделенные блоки в отдельный Процесс и таким образом осуществлять быстрый рефакторинг проекта. Для этого выделите блоки так, чтобы у выделенной группы блоков была только одна входная и одна выходная стрелка (количество стрелок внутри группы не пересекающих границы группы не имеет значения).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdcRAq8Pi5mb055bwtgc8ppFeBJuCiTUEE-9QdalCzVgSZdMfYJ1AfNGoHlv7scldI55NsQskQlSmRPnMV76CZVG5vAOnc2hFkZRHqKu1m6-lMqkIEqPjlwjYX-pfS_MTBDmRgr_g?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

Выберите “Конвертировать в процесс” через контекстное меню и во всплывающем окне “Имя диаграммы” укажите имя нового Процесса.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXffeY4HgNPhrxMHGnB2-stc6c-Ds95p6RNnV9_RcOjWDp1B1zrE-_KN2QbNzpV3ZLaZyWpZKnQQU8UkI0v_FL9dlyNeHh2CYtHkM4GmqWiOlDjqNaIjqZz7aV4Px2WlPzVzlihw?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

На месте этих блоков появится блок “Процесс”, а сами блоки попадут в новую созданную диаграмму, на которую ссылается данный блок “Процесс”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeMm3oR_KY_mT4l9av8Y8Xe0QYyL6khjbXhIuBSLy4PLgfFOTeq9JFkdeRUCL4rK0Nlck_S8xEYUQ-co4GbPu5_1eXkRfmQxEYQahGd_ahBvHG8YyS2ENqlFqS2xJdy82x85Vv9hA?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

6\) Для переменных добавлена возможность добавлять комментарии. Для этого необходимо правой кнопкой кликнуть на переменной и выбрать пункт “Редактировать комментарий к переменной”. &#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfFtGQyFwpef4FCdrONG1vMjjpPTMXDKRmsQPDGgqLy1szCDxNCV5ewBa0DjL78jpi6n1x1F6JXxDPYRJ1XnreT5OiqKhvEh4kQ5Lc9zPNyeHhlYmDHRNy1TS5pHWvixcq0qYKHGQ?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

7\) При работе блока “Бот. Отправить сообщение” из палитры “Telegram” реализовано автоматическое разделение длинных сообщений на короткие части. Размер поста в мессенджере Telegram — 4096 символов. Лимит поста с фото и другими медиафайлами — 1024 символа. &#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeF5yrqYldbQC73LVoVJo9YlEIvr7s_gs8qo85ZXIqYocRJpI79i-P0mBoljMR3VA_UYOMJiuUR6aaoRcENMDU3oSl4lYpTmaWGRJmPU35ktysiRR0hUKmPtd6SO1hpIMU0HVqCtg?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

8\) В блоках “Бот. Отправить сообщение” и “Клиент. Отправить сообщение” в палитре “Telegram” добавлено свойство “Поток сообщений” (`message_thread_id`) для указания ID потока, в который необходимо отправить сообщение. Это позволяет отправлять сообщение в конкретную группу в рамках супергруппы, а также в чат комментариев для конкретного сообщения канала.&#x20;

Если вы отправляете сообщение в супергруппу, то `message_thread_id` означает конкретную группу в рамках супергруппы. Если вы пишете комментарий для сообщения в канале, то `message_thread_id` означает поток комментариев к конкретному сообщению канала. Мы продемонстрировали как определить `message_thread_id` потока комментариев для конкретного сообщения канала в этом видео:&#x20;

{% embed url="https://sherparpa.ru/ucontent/?0G" %}

<figure><img src="../../.gitbook/assets/2025-07-09_16-24-32.png" alt=""><figcaption></figcaption></figure>

9\) В блок “Клиент. Создать подключение” в палитре “Telegram” добавлено свойство “Время ожидания окна авторизации”. &#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcF0WUi7Lbl4ccV0EphFiR-_Gix3Cio5wI9krNKdsW-T6PBROLo35tLfNo5RoT3JgslwiempFX8JRSZfUAElcM7u4TlZm4v4ihwhhjfR0IkdefHKZ1e_zfGk9620hKNSxfdoVfxSw?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

10\) Добавлен блок “Изменить свойства письма” в палитре “Outlook” для редактирования свойств письма. &#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcY32WRAFUZ7e35kEoxmKJ9YY_P4v4TjpSOwvt99p1lS8X4FmhBfedVv8SSU3h-mX79fSOCmrChBDPwq3GgfGVn2XCZ_Tw2eNknxSBXFjmlv7V_mhC7YhZ_AQC60H2ntUbFYbmwHQ?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

11\) Добавлены блоки “Ответить на письмо” для палитр “Outlook” и “Exchange”. &#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXesICuQYtjNRGg4_fK4oJs9Jkjk1kXcR3DFL5S76lCpvz7RQJHzY3bGi7rSht6WSIwbm2TiP3N3RIWcWcvgcQPkFtu2tTlrigOAKDw0-J6TpxExrjUfdx-ob_gkEv_DOI5XZYqAgA?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdIff_voN5RiC0tU9XTVvglOLqQNVTC3ymUjqohcmUWs2O7j4s1od6I96oqyphr3_sIw5Jc0pKtrZ728q9QWn58hbV2AwiSVsKYzyrASRlHIxt2vZRmDN3KfuGJxsxlwWLxW-9z?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

12\) В блоке “Записать значение в ячейку” в палитре “Excel” в “Панели свойств” при выборе типа значения добавлена возможность установить тип “Url”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeB9GejgV5ke-ZKC2tNtI6TC-d0LYMFGRii0RzonZhkh6vAarkWDXAqvgvnHy2eRaVsNUYLfVFJ8Amg8TfcDyGIaIR4AzaxmtaaIAal_0ZufQ13pveKSzOdXQ6_rWje5PiZMOkN?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

13\) В палитру “Списки и словари” добавлены новые блоки: “Словарь в Список”, “Список в Словарь”. &#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdnsUR9HggH8YpafTMgK9KPg4GrT-tE3CNAn-PfmSPzc_6_34kW2uQoyWzRgtBwMxBGQYQoqxy-cx-JvtDzcOd4J3b2CQ314OLqWVNP7ivjHOF0Bn6dXKCuln709OKcYpgwRb5z?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

В палитру “Таблицы Данных” добавлены новые блоки: “Таблица в Список”, “Список в Таблицу”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeaKozPC7aTB25bvL4ni9viHaDRKlDt-41NC8WOeb6EORsyVdre1HWq2X2X9-v5CjXV1lZ7axs2_jPLMDpT9lPX4Cdp2epxsRwWR10_lxo-BiKhZZ5aZ0HwsFWnIDG_6ECQ01SSTw?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

14\) В блоки “Удалить строку” и “Удалить столбец” палитры “Таблицы данных” добавлена возможность задания списка индексов для удаления. &#x20;

<figure><img src="../../.gitbook/assets/2025-07-09_00-14-45.png" alt=""><figcaption></figcaption></figure>

15\) В блок “Сохранить в CSV” палитры “Таблицы данных” добавлена возможность дописывать данные в существующий файл. &#x20;

<figure><img src="../../.gitbook/assets/2025-07-09_16-12-43.png" alt=""><figcaption></figcaption></figure>

16\) Включена поддержка браузера Chromium-Gost. Включение поддержки Chromium-Gost обеспечивает соответствие стандартам безопасности, повышая уровень защиты данных.

17\) Для блоков “Получить значение” и “Получить учетные данные” в палитре “Оркестратор” добавлены альтернативные функции: ‘\_getAssetText’ и ‘\_getAssetAuth’. Эти альтернативные функции позволяют более гибко и эффективно получать значения и учетные данные из Оркестратора, улучшая масштабируемость и адаптивность системы. Примеры отображаются в Редакторе выражений на вкладке “Вывод”. &#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfK-N4C59s6c-8j2yiUz-HqPL0QUneYK_KGD-jr0EJFxS5SypQ0RHVM1Lh50fwRlFE1qc_b0La-2pIW-cjxgVVmxKMipolc2eekDU0Q7NDOyjE3fss-x120wc-xk3hons8_AdO6kg?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

18\) Для блока “Выполнить сценарий” в палитре “Удаленный рабочий стол RDP/Citrix” появилась возможность указывать аргументы вызова.

Свойство “Аргументы” заполняется автоматически и только при нажатии на кнопку “Аргументы”, ручной ввод не предусмотрен. &#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdLT_pgKe-NfvO5sAdLsYBqXx575inLpvWUNkpUPn48jueT32_W_STmt5ZQbbfWw4PdXDn5OwKccyR3vqBMVmg_l8EQk-Ifa6ZW4jwKnxULbz9KUskfKkdXmC9vLglZyV5LSUrUpw?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

19\) Добавлены блоки “Проверка схемы Json” и “Сравнить Json” в палитру “Текст”, которые позволяют автоматически проверять соответствие JSON-данных схемам и сравнивать их, что повышает качество, надежность и удобство работы с JSON в автоматизированных сценариях (в том числе в сценариях, где JSON генерируется нейросетью).

<figure><img src="../../.gitbook/assets/2025-07-09_16-30-40.png" alt=""><figcaption></figcaption></figure>

20\) Введена возможность обновлять блоки только из выбранной палитры. Для этого кликните правой кнопкой по названию палитры и выберите “Обновить блоки из этой палитры”. &#x20;

<figure><img src="../../.gitbook/assets/2025-07-09_16-32-44.png" alt=""><figcaption></figcaption></figure>

21\) В свойствах проекта добавлена возможность указать настройки проекта. Настройки сохраняются не только на компьютере Пользователя (локально), но и системно — в Оркестраторе, если он используется.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfEuAouCqaeiQj0Qt57v23EnEXZagTdF7t9Y7CAylKMGIrr3NeLC5mikDdgGtviOmX5xrnX2bsloV3rH4LKE6dGKhEdcaYJmg_78mb7Y45bmNJggb1kOv4FybiROuV8QxSgtJ97AQ?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

Эти настройки доступны через блоки "Загрузить настройки проекта" и "Сохранить настройки проекта" в палитре "Оркестратор". Блок "Загрузить настройки проекта" возвращает переменную типа Словарь.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe8iU_cHMJ8n1DkSglhZLNJdxOMrEKiX3FsAeNfpHtq-1ejZo8ErD-AOOcai16aoeihtHaCq9ZqmmCFT26W_ygpSBhh2aRLnlCzdIFL65iN4j2TZPTPI-FTzAn-V0v3z-YqYLFGJA?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXexnXkUyzyPgvPId3dZSewE0OMTmA_R50qIOSPIP9I76dk0OT1K0aTOdfthlW_rJluUo3aGlR5ktTkqlF1tDrYOTpzDYHyFScSmNIFJNSWJCEYecaIZhUFfihL2XA9j704in_1Z2w?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

Подробное описание работы со словарем “Настройки проекта” доступно в Редакторе выражений:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd1JyAEAFf-8doygACKF1eePs1QkcAgDvBiUTxVsW1hlOqyILzyHr9oQ2qi73hmoCeM5Qe1QMDf3IdpRnCiQBSqYHxW2lBrAVpm8NeBs9CbN1KxhZQzGcEYnHGGyPd0kXEKQydyDQ?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

При выборе типа Credentials в Свойствах проекта во вкладке Настройки проекта можно передавать login и password:

1.

    <figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXckMKSY1i7cM2D5L-7DpG5cZdiwI-qBrwDNIhk5RUI2FpOOv3BEyQk9_GF9b2a9Hbk_SnQaK6gR_7qicKG9G_GKZHI0s5q594TJ2itB-Dd4d4np71VquFj032d4_1XHxqozo9hQZQ?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>
2.

    <figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfoY-a-3wc-S409cVkHgQovEFwXmKONae50JDV9TIi5U1XUDsyoNpLA4qq29ZShyhP1xmtmjwllXnu4I4LNxtTlrHmaW0wcP_V-783BVIK0f_uT4Q7tS2pU94DiKvIT9zVCVptdag?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

Настройки проекта в Оркестраторе сохраняются как соответствующий тип Ресурса - для логинов (login) и паролей (password) используются Реквизиты (Credentials), которые хранятся и передаются в зашифрованном виде, а для остальных типов настроек - Текст (Text). Их можно просмотреть через интерфейс Оркестратора во вкладке "Ресурсы":

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcS3pYewuAAMnALENQJ9Hz7zEID8ZgiLaWVFmwzcyON9l0_x75aYwRf9XcB3W-rNNQ6yUYV5Hf4q3Jg_A2J2dgTs3W49PSjYNvl9-eQmBvMziWi8GeCL1J6WhQMheOGPTy8gobpbQ?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

А также значения констант можно увидеть в окне “Ресурс”, кликнув на иконку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXfwkqNNnh8cO-gzSks8Nk_QyUKtnADNQ9Sg0RYHNHuhwTK5ddbzZP-e4yu_R5raxyfC-MQcvO9oDClD_s45HdkTh2U3SJ2f3NN3GEekM_Zjqwxb3e2qiXx-Rtgd6kHJoVFuMDVU?key=I5kD5wbBMNC3jCGTCEOQ8Q):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfCLBnBCzsr6RW2_0gfyBIxpebwmCPlN-rZoxrbH45NTaUTVLp4bK1x2P5eZ2f_VUdrWZ_h82R2kpsL8RraOjKusK2nPlEr6pTigkbcBt_R9OFlGYAUeaFJ9N_vQColcncUrry0?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

Когда Пользователь задает настройки на уровне проекта (константу, тип и описание), эти параметры можно использовать повторно в других проектах, если вы применяете одни и те же константы для ключей словаря. Это обеспечивает единообразие и облегчает управление.

Однако важно понимать, что в настройках проекта доступны только указания констант, их типа и описания. Само значение константы задается отдельно при использовании или внедрении в автоматизацию.

Например: Задавая константы “SMTP\_SERVER” и “SMTP\_EMAIL” Пользователь может прописать сервер и порт для SMTP, и потом так же использовать эти настройки с этими же ключами в словаре настроек в других проектах.

22\) Если в Свойствах проекта указаны входные параметры, то можно использовать “Настройки отладки” для указания значений параметров, которые будут использоваться при запуске проекта в режиме отладки. Установив значения входных параметров, можно запустить отладку проекта именно с этими входными параметрами. &#x20;

<figure><img src="../../.gitbook/assets/2025-07-08_22-23-24 (1).png" alt=""><figcaption></figcaption></figure>

23\) В Редакторе выражений появилась возможность указать путь к папке или файлу в поле редактирования выражения. Для этого нужно кликнуть правой кнопкой мыши на поле редактирования выражения и выбрать один из пунктов во всплывающем меню:&#x20;

* “Выбрать путь к папке…”;
* “Выбрать путь к файлу…”.

Путь будет вставлен в окно в текущую позицию курсора.

<figure><img src="../../.gitbook/assets/изображение (205).png" alt=""><figcaption></figcaption></figure>

24\) Появилась возможность проверить обновление Робота и Дизайнера и скачать его с сайта. Для этого нужно выбрать пункт “Проверить обновление…” в меню Sherpa Assistant в иконке системного трея.&#x20;

<figure><img src="../../.gitbook/assets/изображение (203).png" alt=""><figcaption></figcaption></figure>

Далее, если найдено обновление, то необходимо нажать на кнопку “Скачать обновление” в окне “Найдено обновление”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcJ7cuhi36Qrw3EWQbEtMrztt3JvQMTx7lfDwJCpKOyu3_eKUmEV7gA7J5e-VJYvHCTF76Fz86RkS6PFnz39bJbfBxtSYJRtQHuoW75GdisqwW_MDIjod4WfKFxYYi5Hk4DqIQJ?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

Или же, если у вас последняя версия программы, то просто закрыть окно с сообщением:"У Вас последняя версия программы":&#x20;

<figure><img src="../../.gitbook/assets/изображение (204).png" alt=""><figcaption></figcaption></figure>

Для проверки обновлений требуется наличие интернета.

25\) В Sherpa Assistant появилась функция авторизации под конкретным Пользователем Оркестратора с последующей подгрузкой из Оркестратора Папок и Процессов, доступных именно этому Пользователю. Таким образом, у Пользователя появляется возможность использовать не только локальных Роботов, но и Роботов, доступ к которым предоставлен ему через Оркестратор.

Для этого необходимо:

* в меню Sherpa Assistant в трее нужно выбрать пункт “Роботы”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcSekjmsebhE56XdF0Q427nQHpDIv3KJ6PgH5BonB-I7NWKReu7bSUxy_SSOzSQEqxyyvMN-ymgRBK8-Q4CX4ytgGsj1XAjbmBIQ2-EVylaO0TEnlvG_BRSnJB4OByA9Z3hfgra?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

* в верхней части окна нажать на кнопку “Настройки”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcwStOFtqWpqQt9tVWhPCsSrv7NzlxpTPgNGtbA3xJVUP0yaA4DbC50HasFO6USEP1OT5fSE6JkQ5XD7n00Hx6GrqNnpheh2cWHgUFtcIEEQl7uVmXYSiENJ7dYalXziOGPYe5RxA?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

* во всплывающем окне “Настройки” ввести логин и пароль Пользователя (который задан для этого Пользователя в Оркестраторе):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdBXeFOikYouSAHccKcbkCNRiOsdGXi4Th_QCPy5ykOWf_Og0_IRHeqhcaDkC_EKmaPV4JaZQHua5pFkI5nIBzbrodZQZymaRTj9uCV4zF7pqIs6VYKziQn4nHKixF9snhkD_x8?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

* нажать на кнопку “ОК”.

После входа Пользователю станут доступны Процессы, синхронизированные с Оркестратором:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXde_tuHEksQg9B2dNgubI9H5xARGcrFTaiLPHbwJPyniT76maE1MEB5Pft0LDyw5_U-TxuZd6eqWPBDegwdkHVPzXL479hAQo9IjW08JpoI-ATnTAFuLlrAUC0_-44cD7QY0g4r?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

Также их можно увидеть на экране [Процессы](https://docs.sherparpa.ru/sherpa-orchestrator/rabota-v-sherpa-orchestrator/ekrany/processy) Оркестратора:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf1KLsz-0DGp5oP6zRU_an-4eO9lrgONiWC6QJ-eznyF8ESoinO2zudmC2AASoZirglAt-sx5IfG2SMMImvMj1QZvHV0vJjgiTTltjihQCCW86FZxMTwqCO0Tv1er4GzIhf7PeeIQ?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

Функционал Папок доступа в Оркестраторе позволяет:

1. Разграничить доступ Пользователям с разными Ролями к разным наборам Процессов;
2. Визуально разделить Процессы по разным папкам, что повышает удобство поиска и запуска нужных Процессов в окне Ассистента.

Для использования данного функционала совместно с Sherpa Assistant присвойте через Оркестратор разные Папки доступа разным Процессам в свойствах этих процессов. После этого в окне Sherpa Assistant залогиненый Пользователь увидит только те Процессы из Оркестратора, к которым он имеет доступ согласно присвоенным ему Ролям в Оркестраторе и доступным этим Ролям Папкам доступа (и соответственно Процессам в этих Папках доступа). Также залогиненый Пользователь увидит Процессы не в линейном списке, а разложенными по соответствующим Папкам доступа, как определено в Оркестраторе.

26\) В окне Sherpa Assistant при выборе раздела "Оркестратор" появилась возможность запускать Процессы последовательно при старте Sherpa Assistant (или при загрузке компьютера если Sherpa Assistant запускается вместе со стартом компьютера).&#x20;

Порядок запуска нескольких последовательных Процессов в автозагрузке определен их сортировкой по имени. Поэтому для организации последовательного запуска рекомендуется называть Процессы для запуска Роботов с индексами, например: &#x20;

* “1 робот“;
* “2 робот“.

Процессы будут выполняться в выбранном порядке, обеспечивая удобное и гибкое управление:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfu3ND0ZvL532Pnxzzg3ZsNGzpa0CqLY1IUrKWbUylEZX-J9TzLXDJDfjBHA7ts3NiLHSrsNgcrkusEXwbNEAzEcKjaXvOh6EEqmvHxDJWZQ8ZMEgIY7ROK_Fe7VLZ5p3njfm0Bug?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

Процессы для запуска Роботов можно переименовывать непосредственно в папках:

`c:\Users\User\AppData\Roaming\Sherpa RPA Data\MyRobots\`

> Для корректной работы автозагрузки необходимо в окне “Настройки - Sherpa Assistant” перейти во вкладку “Основное” и заполнить чекбокс “Автозагрузка программы из Windows”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfuAN9XbaEuCtH4zgSOy5Eg3GSnaAQPCdWzZ0GTEFYlNUcTUDqTKCW8b54-BLb3u1ATEc3RJcA8w220w2a8sEqrAGBB1Ti3m7FnaB0skqTRTLU4BcpUOj4IwtOb0rNpdN55rCw9ww?key=I5kD5wbBMNC3jCGTCEOQ8Q" alt=""><figcaption></figcaption></figure>

После этого достаточно установить галочки в чекбоксы для автозапуска в нужном порядке, и Процессы будут выполняться друг за другом.

Также Процессы в данном окне можно запускать нажатием на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcM38SXGAurCWLyayvNyLlhlYjnbnY7Tb3AhUDXeA4gCCWuwONdrkDAH8oWFJLufltjqxkaZiy45c6uu3r8Yh9irOJfm02kFSwGHcTDCBRKj0sXgcFr8ZWP9WneTgbwSgBBZ7BEyw?key=I5kD5wbBMNC3jCGTCEOQ8Q).

27\) Внесены другие улучшения и доработки в разные части системы.
