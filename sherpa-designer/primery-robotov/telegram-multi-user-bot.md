# Telegram Multi-User Bot

Рассмотрим пример робота, который демонстрирует работу Telegram-бота с несколькими пользователями. Каждый из пользователей может общаться с Chat GPT (при этом используется индивидуальная история чата). В переменной $NameSession указывается имя сессии, после чего необходимо авторизоваться в клиенте.

**Важно!** _Данные о подключении к Телеграм можно найти по пути: c:\Users\User\AppData\Roaming\Sherpa RPA Data\Telegram\\_

Проект робота состоит из двух диаграмм.

Основная диаграмма проекта выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeUdEYPvdpSb-oGWIXVky27sLLSbDSc_1CoH6Pj3pmk9tnIFUB8b7JtLavA2uYoWB6ycA2-azMmLhV5_fI3VslbvPX1Z6a59ij9VBWs5jgC9pnYmNgUDWw8s-BUoDAF-tTfXzvl7w?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfnVu_KB5uO1dr5naTVdkY777z0B6i6_lctfumz-7zHvvQ70oZQH5uF_G3GDHwCgjbnqkEbt_rf9mbR3Yn6d0FJHQ-10m2Zf6JHL1aGJdc8jU-t_puiB3tromIawVmCPQobGUecsw?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернётся к текущему блоку и продолжится в текущей диаграмме как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcGT_OkE8_rpRJgKN1eUB1dW07wFy23Buy02ZM0NYx8uzPVpN5vnN8AWUBYRjyGUx4YgDRDfxI3jr7n7EQkKcPhfmcejg558gYuNYSJVXVweRkDRF-4pB8uC9trTDEMqmhNuUkttg?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

3. **Блок “Бот. Создать подключение”** позволяет создать подключения для бота Telegram. Для данного блока указаны следующие свойства:

* Токен бота (токен бота, который можно получить от BotFather в клиенте Telegram);
* Время ожидания (время ожидания ответа от сервера Telegram в секундах).

На выходе получено “Подключение” – переменная с объектом текущего подключения к Телеграм. В остальных блоках необходимо указывать именно эту переменную.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfM2vBvLxOzQZs3SSF1YB3R05Hrsu3jekOPFzyDMChqCFAJxcFz9vrRxbYF5dBLU8l2NDZzHV3jdggvSV__-1wB17sVH0ogSNhT1CIMsoVcXbcdbPkaWORxrDzLhigUz1vJSy25?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

4. **Блок “Бот. Получить сообщение”** позволяет получить сообщение или обратный вызов из очереди. Если сообщений в очереди нет, то генерируется ошибка. Для данного блока указано свойство “Подключение” (объект подключения к боту. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Бот. Создать подключение" из группы Telegram, который ранее использовался для подключения к боту Telegram).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfRCRlsoUq5_OjfJNJagNkM8Rzy2bQuJmFfYKhLOURwDEAAesqif75mIjtxS_W_LUJzFP9LP8QnTJM22lKnDsgReTsK-g6VVTQ-rh-shvqocJp8xDl3MiZbxuh1IfVm0-CCFPkpOw?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

5. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfqqOX78AtdZOrKDzWu6eLtW8sjSvLdZMvlddoJcF7b3iq36jnRBuYMagqufxxWiumB4iqC39a8bHJVkBlu-lMuvivr1PTIg2cwwF8BwEf0evxdSst062w5T05TiSrmdBwfOY6GQQ?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

6. **Блок “Получить путь”** позволяет узнать полный путь к файлу/директории. Для данного блока указаны следующие свойства:

* Путь к папке (путь к папке, в которой располагается необходимый файл);
* Имя файла (имя файла).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd_u2PkOza_ehoLNMwPjiJWDg11VEme4heBX1QEPQTx-N8KulvWktps8aqDaNYRian6EBjgWw2RnnoT0eaqVGbMLv24icDYzfHWPY4K6L25tBahhKS1Ph2c6pXxvghBJjZ1U9uifg?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

7. **Блок “Контейнер”** позволяет сворачивать содержимое. Под содержимым понимаются блоки, исходящие от текущего через нижний коннектор. Для правильной работы блоки этого контейнера должны заканчиваться блоком “Конец”. По окончании работы внутренних блоков будет произведен переход по коннектору “Выход”.  В данном случае, в контейнере "Загружаем данные клиента" Вы можете переключить "Промты" (или задать свои) и этим указать поведение чат бота.Содержимое блока “Контейнер” для данной диаграммы выглядит так:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdYJdQrByzvv81v_GPldw7JG2lXu7k9ZRZUeObXHRSGXC6kjpxXDY_2BVEV7RG4VTefeiR9PIvhmEN6nN_21GOYbIgfVeUNPDkFeP6Xxv8EOKLv-oeFfo2AkAxo0YMo50AdvDEtfw?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcP3c2BB4Ch7nPoS_nJCAMKzhzbeqJni3TWuH8IN4J2O8XRaYafx7Qbttaet6LdXf-bSa1PR2Sa3uCgmIkWI6sFRzq3ULKOR8uZrdgWiqnKsYeUVTx9MULI284CyDNKGZ44zDsT?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

7.1 **Блок “Загрузить из CSV”** позволяет загрузить таблицу данных из CSV-документа. Для данного блока указаны следующие свойства:

* Путь к файлу (путь к документу, из которого необходимо загрузить информацию в Таблицу Данных);
* Разделитель (символ разделителя, по умолчанию используется точка с запятой);
* Кодировка (кодировка файла).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdU293LMgwyPgViHODKCN2jpgR7JnhcoBaIBiuPpla5Uh5e_VyUm_WJb-_9hlL9sUuZMb3ELsjbkyP6V6boWI2K9DRG-Qla0W-1ZY1Lb0qnwCfnSzhrdqeif9ujgrZ0qdd04GPJ-A?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

7.2 **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используются два выражения.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe7swG9uCBYIzwGh3z0v0zLggd6tYGRZg540R2DDxcwamBo1VznH8cbyluLhTmVmIot2nkhtqHMtbKaZm39WAOAk9g1mDDwJ-NTMYOylQ0vGFXJrRz0C8YtGjurgcFYYxPJdtgeVw?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

7.3 **Блок “ToDo”** используется как заглушка или напоминание для планируемых к реализации функций. В отличие от блока “Комментарий” данный блок является элементом сценария, но не выполняет никаких действий.&#x20;

7.4 – 7.11 **Блоки “Добавить строку”** позволяют добавить строку в таблицу данных. Для данных блока указаны следующие свойства:

* Таблица (таблица данных, в которую добавляется строка);
* Значения (список значений новой строки).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcnrdRWYjFZsiYDK-D7jwH5y1ioZXZlGejF_oir6NO6ymgqjDrzDxiCAuP6-1qtwRvhhlQ1PQgrFWbFob_Us20pJJr_SaGRrFTHOzXdqti2A9HLEHWDeDKaX4-HUUjyeMlmBPSVbw?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc4OeWFSDbHmuKreq6k5hp1s9eqpWJFCWbp7Nb8xJpixZhT5NV1o6q18xovoIanAfGtsr2rBpKD-tItw-aBy-gEqVEP4yCkFxfdXmIXtKLhNVrK5LnD7iyKiOQh14xs-B0cIOqJKA?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcVpBqfLNPdDQoF5uOjiWhPjS6vt1sQSGSjCTbKQUpPNUlQoE6zFphcpTlX0-U9CVFTe_4GoytvOGF3I6a0TkfDwHsXMjOqhgJVKEqGNsNP2SFoBs5F800EC2mwPHmr-wW7q6JVpQ?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeyWVghcDxdHtRps-WwZadQLqAyFmlTQ0zzxerzb_YTE1XTFdy5oscDI7Dq0PZdnLLTjS6tZhoxplGZFWXTCmuDJ07oMFo4aapeZ33oSIJ8HFPz1OGkdOxV-aeaSLfasZaJ_m1FPg?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcHuaC8FlYi2CadS9Z2u4aYgCfcmGQGKGq8d7cg1wS14f3K0J2MAw6gUBfFrs7K7zT280CU68oyWetdNp8A1el1hEypJeW3tXb_e3SslNaNIcp9Yq2I0nfU3dgftDsCm5pars6R3A?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd0MiwbM1eE_oou3zeEmALfhAl0ggN7Fdfm7aeDYxiRIA24aXhK6Qx_VPYgk0ZcB0rKVIx-IAUO9fL8fVi4M_hwWi8oHhL3yH1e9V-xgBmISnYH29XfEzOr0seOCXK2c_Rm4m6oNw?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfF2eymX--DFxF2jKIgWocw69nVsh-_5zusNyhyP6BjxdkVHbaQ1rtw_WRNEZdEVAN0mjSwcprtCBG8_Max2lphJy7RszgMthaPqZ7YB0ghayjCdqPeixGzF1vIhHYxVfyWHV9D?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

7.12 – 7.13 **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

8. **Блок “Добавить строку”** позволяет добавить строку в таблицу данных. Для данного блока указаны следующие свойства:

* Table/Таблица (таблица данных, в которую добавляется строка);
* Values/Значения (список значений новой строки).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfv0TCsH6xbGWuXLeJjb766S-aoQy-ObGTI6qFS_mFir5z_7OfIP9N-5QPfs1DvXcYGQzLa0pA8rDn1vR3cdYeXtNoaPb-9D-Hzl8cOJx8Xct7AXY1jmiEXPgTD9JA1C_GufDAuew?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

9. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота ID клиента и его текстовое сообщение. В Оркестраторе данное сообщение робота будет помечено как “Info”.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcnbZvgJYcD-j423o1XeXgzB84bZ4x-O6TsLJTDzMB_uTc-FVQbZKRKMN2ObQuE-MW-lQGtFgfjTeAaNB-wkKgYyLPNCNiD342W4MNuKUzm5reaoTLZAfzQjE0a3ofx6trvah_DTw?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

10. **Блок “Запрос к ChatGPT”** позволяет отправлять запросы к новым генеративным моделям от Open AI начиная с ChatGPT. С его помощью вы можете создавать новые тексты по запросу, выполнять разнообразные задачи классификации, суммаризации, перевода и рерайтинга текстов, написание прототипов кода на разных языках программирования, парсить полуструктурированные и неструктурированные данные, извлекать и обрабатывать факты, поддерживать диалог на разнообразные темы, и многое другое. Оплата за использование данного функционала списывается с лицевого счета клиента на платформе. Для тестовых целей каждому новому пользователю дается возможность протестировать данный функционал без оплаты. При использовании данного функционала после окончания разработки робота необходима оплата. Для данного блока указаны следующие свойства:

* История чата (историю чата, на основе контекста которого нейросеть должна сгенерировать ответ);
* Модель (модель для генерации ответа);
* Температура (десятичное дробное число от 0 до 1, показывающее степень "случайности" или "креативности" результата, где 0 - наименее креативный результат, а 1 - максимально случайный.);
* Максимальная длина (максимальная длина результата, выраженная в условных токенах);
* Автоограничение длины (установленный флаг включает автокоррекцию максимальной длины результата);
* Таймаут (максимальное время ожидания ответа в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcAdZF0udqVwnKIOiQDwPufqDI3m1T3b6Oyl7bFlKvnDryaQf8lEGbQwWToTI_iHbvPpStcyBdhVwTcILfq9iVm-PKGdnQECTinbUzLzi_vHwdx8qfNZC3vfJFATUuO9oxm24j5tQ?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

11. **Блок “Добавить строку”** позволяет добавить строку в таблицу данных. Для данного блока указаны следующие свойства:

* Table/Таблица (таблица данных, в которую добавляется строка);
* Values/Значения (список значений новой строки).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdytFio-sRVjo_erlWU46qjyY_0yHan6fTyC78RkwXLSd-7XBmorM0TnvHDVWWHGbIbIiT8sXthf91HZ1m8JqFHxqhVNifXXeJLwTtqeB6Xqy4x8X3swq4Yv8M6ON31klt2Fjo2kA?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

12. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., данный блок записывает в лог робота ID клиента и ответ на его запрос. В Оркестраторе данное сообщение робота будет помечено как “Info”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcFLQvCnGC2Xc7BCopmj_5ZLeURZeFlrwyoJfItOuRO8QX6LmD9V7eHdPDDXlEuIIs9mVRmgh9k6VFgLjYtuanVCRxh9g5LB4rCbMpE8TfkS9uShzOEqrw1dp_RtvCokQV6KakT?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

13. **Блок “Бот. Отправить сообщение”** позволяет отправить текстовое сообщение в чат. Для данного блока указаны следующие свойства:

* Подключение (объект подключения к боту. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Бот. Создать подключение" из группы Telegram, который ранее использовался для подключения к боту Telegram);
* ID чата (Id чата. Данное значение получено из блока "Бот. Получить сообщение" в свойстве "Сообщение");
* ID сообщения (ID сообщения, на которое требуется ответить. Данное значение можно получить из блока "Бот. Получить сообщение" в свойстве "Сообщение");
* Текст (текст сообщения).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeYiBSnuQ48GM5BhygrlHhnubxPvEyxNgn5XfaI4OqAHYCipbN_EZNWZhohtk0fsFnADE9BGO2CdsLwaUS4loFbkJPeErlzjqLjsJ8UEJUSFymDKIano3gn5WIoY6JS-tr47CLgHA?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

14. **Блок “Сохранить в CSV”** позволяет сохранить таблицу данных в CSV-документ. Для данного блока указаны следующие свойства:

* Таблица Данных (таблица данных, которую необходимо сохранить в документе);
* Путь к файлу (путь к документу, в который необходимо сохранить Таблицу Данных);
* Разделитель (символ разделителя, по умолчанию используется точка с запятой);
* Кодировка (кодировка файла);
* Записать заголовки (установленный флаг включает запись заголовков таблицы).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfusssfET3ZJAWVtjwh4Pk6xwmjba2lk58XjZB-xY6aKBW_UmP5aDBaT-tW7Muofsk3-DmruGqb7SKR7ePKRMqlnbOxXfP1rAtAfs3KEb7dZ_s_qiePH5JbafY_vh7NTqd9KyGf?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

15. **Блок “Пауза”** приостанавливает выполнение работы сценария на заданное время. Для данного блока указаны следующие свойства:

* Единица измерения (единица измерения, в которой задана длительность паузы);&#x20;
* Длительность (значение промежутка времени в заданных единицах измерения).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfGH70q75WMcjk-El3mASVpobEnCybyjMOjUZvgcjj_RJZ_775iooNgHXDO_A8LX_0F4nu_MiAHyXgLTxUWlMU8U_gfJEJSh8rdYJM7t0yLFHb9yLKCWIqsMTz2CSX0DJSMOu4lWw?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

16. **Блок “Требуется остановка”** проверяет необходимость остановки сценария.

Для данного блока на выходе, в строке “Результат” указана переменная $NeedStop.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeD_luRdNC9UDBefCruJCcEYCxpEPwoDqG2c3vNKV7KA_vkb6r2UtVgRnMN3z8-YLW6sPMWyL7ERkqGU8YNQHov_vDrB2N4imB96spDYOV4PaoPX9VGO57tUchUPgrVp_xZOoo5Dw?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

17. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “Настройки”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdVPg8TXf4vtfEkSmiPnvIuUukdDKNgQ0O__2KWTzP7zJCx9kkq6jAoA3_fc3diEYgxtxBAJhRlpjPVYzpJxCT7FQ6FQ2-k6wMC8eYO2Phba0HAaX2TO0Ccs1j-64IkICSXuZtSTA?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Объединить путь”** объединяет строки в путь. Для данного блока указано свойство “Начальный путь”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfpjvRoB_fTRiLI27kGV-FlCUJ6eMQoaAa24SSFzCX9_6_YK0blX-Kt64w1X3KAvZZBm1FLqXcCO3lMNMN4JE6VZoa778al2eUmFwH5azVZL9adRildrCuUEd5Q9KowtscDaKQLGA?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

3. **Блок “Создать папку”** позволяет создать новую папку. Для данного блока указано свойство “Имя папки” (полное имя новой папки).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe57Rlg1zlsTyMKK08K9iwpILU9VL6_edKlGZjrAsbrwr9rDwKoLPH0wbVRVHU2QDI-N4oQ3c_6edACVDracJodfi5QT3H8kjZEB3D0acQvd1at7b5yYWMc9xwtN2fQBktXzAxh2Q?key=31TfmOJqwnG_FrKp-kM5Dugx" alt=""><figcaption></figcaption></figure>

4. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
