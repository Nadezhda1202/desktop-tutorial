# Whatsapp

Рассмотрим пример робота, который позволяет осуществлять автоматическую рассылку по Whatsapp.&#x20;

Проект робота состоит из трех диаграмм и двух файлов форматов xlsx и txt .&#x20;

Основная диаграмма проекта называется **“WhatsappSend”** выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc3q8gJY8fVznh1PXPts_3HflLapjGYkj4dO5oV1HBJtOliMKlqIeRSXpOv1S0FgiVkNpaKzXUbZ8FoijSbdMO2qWKtItOr2N9KOI4ic1Ml9HgLca4QdcOwZVZoZexUfCXE7ap2zQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcMmAWlLRuggcNguIs6t-P5MWYfO4PsiHW7lZg6Zl1F3edaPgCRuwdZY0pntP63-2idRQeOwrfUQa008uUhJA7c5flfSmKR0hxoARVgfI4XORNlXovKMOzLvcLnsbtrCLVNamvsUA?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe410im7gNEjjiGS308tNI2Rb1enue8nHhH42JFO0pLhyrPOkqb6iu0lX6a4InexsEVeKrpKZ84uqafM043OO1g9JpDrVO0aKfc8gODIIBTBIVY0TZvxcPXVZaHaVOuHjnWV_JSLw?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

<br>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернётся к текущему блоку и продолжится в текущей диаграмме как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdcBkkMqVI-ggyu7OPXDRwkGHt1ltuYOod2y1RHMWP5Pa6amW687oBPbWPC75Mo0TRn7qrw-u411KWaRdnDmE8GVTRksqUjADiI5hN_Uc9vclg4MOMZcFzRYvsmXhGoU5wENyg-mQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

3. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $НачатьРаботу. Т.е., если переменная $НачатьРаботу (а это логическая переменная) равна $true, то идем вниз

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfSIknvvw22aSemPCbMK_BRfJht6BAO4gww9yS4y0jV3Yn1UaHI8E2nuhhkWVvKpkf52siK7tPORPL5LdHIedIrQHW6GicSdInIRPRbtwJWkIFNEGofpUFMnFRNUMbs1o9RFqE0?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

4. **Блок “Запустить Chrome”** позволяет запустить Google Chrome. Для данного блока указаны следующие свойства:

* URL (адрес открываемой при запуске Google Chrome страницы);
* Текущая вкладка (при установленном флаге страница откроется в текущей выбранной вкладке браузера);
* Время ожидания (время ожидания запуска приложения и загрузки вкладки в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeQIJ1BHlAqiLuLK4d38CSEvkDdEuS33rTpXvyhhmMJmjJn6D8YRrCr2s8Xu6SHAjM-TQASqkTbVxzCgzJX2cQiTI9obkOdzjb-90tVpWb2T-tTBvTZtNMFkdzYQz6IIErVlO7Puw?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

5. **Блок “Ожидать появление”** ожидает появление элемента пользовательского интерфейса на экране добавлен в диаграмму с помощью [инструмента записи действий пользователя](../rabota-v-sherpa-designer/osnovnoe-menyu/panel-razrabotka/menyu-zapis/zapis-deistvii-polzovatelya/).&#x20;
6. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., выводит в лог сообщение “Ошибка подключения. Возможно телефон вне доступа…”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXesZqbEeS7-_CzDcs66rq0YWKTOdSa2NUr4BF6oZw2w82cqp2gRERXOwEsmlU1jPz5aF7NJlhmZUb3g_LNPBC7k5Ko597YciXRzw4BW-MyzrquMMvvnUACuKfkRfb1fVtQWlvSjhQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

7. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано два значения, которые необходимо присвоить двум переменным, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdNTjMCWyVOFdhGFooRMXp6ycgrHHHbOI_31LjMma8nshYAU05ejLfFeOw2n1Dmneeh2VcK0A2OAqOsrvWJaNDBc3doHFSLPZRSHg5eHtcGne6Y7qXSB4GG40bTqLNEvPZ7fmi5zA?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

8. **Блок “Открыть документ”** позволяет открыть Excel-документ. Для данного блока указано свойство “Путь к файлу” (путь к Excel-документу, который требуется открыть).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcvvIUHH7bWJz54q54-_EDZGu_g-h-LVmU1LErrH5_xt4s6tuVcQ8Sx1JI1JtbWnGAaPSAXOAZx7yIhHyP0QNHzA_1QOnDbggpCAUwnK7Cpsq8_fmwZGb-u-incIy7ZlW8sROpdOg?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

9. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdyfpL90X9IrteTlXWxod7J2ogHT3frk5fo270kaQ5iRiEkOtE0l6bVUz5h0nJFXTuMLBL9DB8dZCnpZmnDcjAFeZd9v3Exaocfsu0Kb8dDlSSLF76oCznlr_7bWVapthD07bCC?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

10. **Блок “Получить значение ячейки”** позволяет считать значение из ячейки Excel-документа. Для данного блока указаны следующие свойства:

* Ссылка на документ (ссылка на документ, с которым в данный момент происходит работа);
* Лист (порядковый номер листа, на котором расположена требуемая ячейка, нумерация начинается с 1);
* Строка (номер строки, на которой расположена требуемая ячейка, нумерация начинается с 1);
* Столбец (номер столбца, в котором расположена требуемая ячейка,нумерация начинается с 1).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc7gctByGXE8fW82ClujQYCKSZ8-2g9-Ce1B_9_KlXMfFY010ao1WCtTtZK7iZViv9R2e6xbNgALKuOxHuJVVdu1T8eOt8DmIdZg7JrUK74L-MzG5nm0mtybuYUPdkhzRqQslRM_w?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

11. **Блок “Получить значение ячейки”** позволяет считать значение из ячейки Excel-документа. Для данного блока указаны следующие свойства:

* Ссылка на документ (ссылка на документ, с которым в данный момент происходит работа);
* Лист (порядковый номер листа, на котором расположена требуемая ячейка, нумерация начинается с 1);
* Строка (номер строки, на которой расположена требуемая ячейка, нумерация начинается с 1);
* Столбец (номер столбца, в котором расположена требуемая ячейка, нумерация начинается с 1).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfaYtZiwAcedj-fW42sOCKsueMiFlk8wsExISq42wzUgmT2v0oyGAayRV046OFzcJqrAT2FXbKtzJF-8OrOIst65zToTn4Zg8eKMQJM3xI5m4LiuosJBEoehX7TbuSUQGtJHi6R3A?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

12. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $ValuePhone.Trim().Length==0. Т.е., длина строки равна 0.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeUJGQq_UdYMHyeACR1rTDj7Qkdv4bjMHR3AVhqlRGke4DoVdD4hZMLEkx4iQ9fxCbrs6vc72rPe213GvKnQYc6w5wQlBWHAsqm732yQUd5RNMVIiqOCS3ll7ghZwGfJ3NFO6y2?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

13. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $ValueFIO.Trim().Length==0. Т.е., длина строки равна 0.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdzwD6UtrjjPka8y3alzhzxWoslPgM92uDooafIexwz11puUAmvrkk17FSLbJg8VG6c2B-0KBwKWIqVQ25sjbpOGCJsAmI2b6ZE4Tq_w8s2BiEvlpFEb1CnuP002ijHe9P5mSbyLg?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

14. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdrGKS3hL9YWhbqRxTsKAY9XQHnrSgBY3LWzGmmpnog_lpKdD5EwabILOzygJiRkhvgPaB4ehm8DMga38_MQErwdXNbRJlu_3Z4Nltqsmczhn-7mUYYBNgTArtEmvog1-tyScuDTQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

15. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $countempty>5. Т.е., количество пустых сообщений должно быть больше пяти.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXczMNhAChN81dmgDIrQDkOSwosEDxYBlAaY4z0KKqgnfUJpT87NeGibgpn6fDajAO-9SjfMi_rJhO_TmCSTaWKzw4mpjVrrh-uWL2KYGszNGgPk5Y6ArVNptSBhbeY_et_AgGt_Og?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

16. **Блок “Сохранить документ”** позволяет сохранить Excel-документ. Для данного блока указаны следующие свойства:

* Ссылка на Excel (ссылка на процесс обработки Excel-документа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на Excel", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Ссылка на документ (ссылка на документ, который необходимо сохранить. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Путь к файлу (путь к Excel-документу).

**Примечание:** _чтобы сохранить документ в тот же файл оставьте значение пустым. Иначе введите новый путь к файлу. Если указанный файл существует, то он будет перезаписан. Доступные форматы: ".xlsx", ".xlsm", ".xls", ".csv", ".pdf", ".xml"_

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcs8cWopu0zyBt57fmSKvCHia3t0KCeVbZMzOa7UHrS0LiP7N5zBB6xpiFVzwSXENHWTa3Kk6QXmFDYmNVJzBUDOowpAdPlH39ea3CsOLW_tfOUH9QFRfJV0Frs-Qf-e1SoZnGi3Q?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

17. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeSjv6ON2JABD50x9sV7-_hv5jjpUDIHKUthMiBDCt8nDR8mhb77ApD2o8Xp85XjoFTUGJl3fR-SVN-AGzr3rl_NqgRprMVGPUdILgY0LkfxQKsVppGmbfGQZJ54cr_jy0wkZCWxQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

18. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено:  $ValuePhone.Trim().Length>0. Т.е. длина строки равна 0.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdsKB0XAnenxtReBBuquabnUK4ChslQwDO0kZKn3atUz4cK5GUTVgJ7YTsEZjxJRnZOCuqIIy2TiuUbKtzk3-Z1rzkVINt0gzGvvaxms5xLxPIr14vZPaiitn6DGpxvRGWiLpyPDA?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

19. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $ValueFIO.Trim().Length>0. Т.е, длина строки равна 0.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeV_k3XTa26y5MkeoXTjCXc_UF7q0wACyYldk9HwEO0kbqVHCIPzXU1OWIjSM9nPfYWnCHDJcKRmdgGgsSMG26-Oq54ersOJgjXTHEHc6ET5d-KFo1cjJ45NAeDfcX_9u6Tjyf1pw?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

20. **Блок “Замена подстроки”** позволяет заменить в тексте одну подстроку другой. Для данного блока указаны следующие свойства:

* Текст (входная строка);
* Искомая подстрока (строка, которую требуется заменить);
* Вставляемая подстрока (строка для замены всех вхождений искомой подстроки).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd2nKKIwrFR4LMAeDrqrBfsiuFTKzqyTpGTd_Q355I0xu0_ioGyHwceL_Qa2iT2QbPwEtXzp-JvOenQToZrhlfJG_f0EaxWOelEEVjPUiqB8fEafeL24IjCCA_gykcpzNum9qy3pQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

21. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано два значения, которые необходимо присвоить двум переменным, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfcoqc8Uulj5CcKEDe9DxB_6ApJljp6hei12hv9_LM5hGPW4OF30Zlffz-68iNV-pMaxUT_4eZ7ZE6xuUW14wwXq_WvfWc6D7xXS3YEJamQZUcTrniMZAH6xmWPgWa8R-dXnamIKg?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

22. **Блок “Процесс”** позволяет создавать сценарии, состоящие из нескольких диаграмм. Выполнение сценария продолжится с блока “Старт” указанной диаграммы проекта. Выполнение сценария вернётся к текущему блоку и продолжится в текущей диаграмме как только будет достигнут блок “Конец” во внешней диаграмме. Для блока “Процесс” указано свойство “Имя диаграммы” (имя файла диаграммы, в которой продолжится выполнение сценария).&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXexdf6R3oVqdjTmsIlfVggy74_zX8RgQ5wE67ktxXV0xhUq88wQV80J0YH1UxdfNNm3BpJ-NvOGxhpz6iLHDREqDitCE0u2oIllX-MweJeBrM-2xTjp8oC1771SdNTxHR1wmezAKA?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

23. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $IndexSaveResult>=0. Т.е., индекс сохранения результатов должен быть больше нуля.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdMxT_gWyTX5hTjyZ98lSKYQ8--GCTX4kQVsuh085gom_gGYK7mnPDffynlMej8T7PzK4Vsae8NPRFcjEMEmSPE-EHDXcdMN2SeNZ7Tqsjyaqgogl-OqzdlnaaHxG1m5bI0XmRrCQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

24. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $SendSuccess. Т.е., логическая переменная = $true.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfTEtaql3p_FCdxwoLNto2Sph2fRSq32Q9rNbVbtme_zsC1TdfX7MZdC-dXL9jhiiHfm0V_kfxUwiW4eqWD73Qxu35jtJB5N9RQMdSz9hynkWLno55sMTkzw-VNLDqVFuGcYMRSmw?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

25. **Блок “Записать значение в ячейку”** позволяет записать значение в ячейку Excel-документа. Для данного блока указаны следующие свойства:

* Ссылка на документ (ссылка на документ, с которым в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Лист (порядковый номер листа, на котором расположена требуемая ячейка, нумерация начинается с 1);
* Строка (номер строки, на которой расположена требуемая ячейка, нумерация начинается с 1);
* Столбец (номер столбца, в котором расположена требуемая ячейка, нумерация начинается с 1);
* Значение (константа, переменная или результат вычислений, которые необходимо записать в требуемую ячейку).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdP-JL5n9AfMBVxnXQ7W_o-Vdfsvy_KK-3HAMKMGv3ambTWGUPgbuY9zo9CfcLgpniUNeRJhdPqhGg6lTQWbJIGrPAalzKM-w0K6gMAXCB8u2fF01DgeDfpMJst49aPFn964LtL0A?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

26. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeCHeoYg93Ocflgo2BaXYLqqkrdKE1QVOPySE-lD2sSFhnz9Ea6WwZvh2Gh_UyHO8GFFkwLTjvw7LyleS_LKS8PMo5qCkSObqQQGXhpbUraYixf-tj8x-JpqIL6PQEoSBzeS8HLhA?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

27. **Блок “Записать значение в ячейку”** позволяет записать значение в ячейку Excel-документа. Для данного блока указаны следующие свойства:

* Ссылка на документ (ссылка на документ, с которым в данный момент происходит работа. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Ссылка на документ", блоков "Создать документ" или "Открыть документ" из группы Excel, которые ранее использовались для создания или открытия данного документа);
* Лист (порядковый номер листа, на котором расположена требуемая ячейка, нумерация начинается с 1);
* Строка (номер строки, на которой расположена требуемая ячейка, нумерация начинается с 1);
* Столбец (номер столбца, в котором расположена требуемая ячейка, нумерация начинается с 1);
* Значение (константа, переменная или результат вычислений, которые необходимо записать в требуемую ячейку).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeZVeCc6fL2dPyUfRcmHoK5kglWQ7b54GjgRcA1u-fIi4-XwXkZO0D6Xx-dAtKJ5SIc7X9DXtCAseqsczwrkDXgeAkkiWKIANd4eYl3CcbcCDBzcS_4QFtjWpLP-SGFAdpjEjPXPw?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

28. и 29. **Блоки “Конец”** (этими блоками завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “Загрузка настроек”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeUIYs7r33_kKTfCFcsvDiIcbHL3XK-0YrZIlOHSevguR-bmuYnYWi6WSf-TLyo9lnynmBG7x0LS7ppmYoZxKZAomQS-KeAySO_JgoFGcjPDBqoOiAgF4iTTfbuVy1DlUPwOBPL8Q?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdM-B3eUdxojBlToR3TXgBG0JUuomuBZczOJkrYTB1_P8ZWjLTyW3v2CvyR0Owy4Kmll09wC5yS6coWReOz03lLHqTGqyBmNbXnWZP1bzIsF0perWl4Bq88YOs9DnK-5hJzR06oeQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Открыть файл”** отображает диалоговое окно, позволяющее пользователю открыть файл. Для данного блока указаны следующие свойства:

* Заголовок (Текст, который будет отображен в заголовке диалогового окна);
* Фильтр (фильтр файлов для каждого параметра фильтрации строка фильтра содержит описание фильтра, за которым следуют вертикальная черта (|) и шаблон фильтра. Строки для различных параметров фильтрации разделяются вертикальной чертой).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXddmxfHpvbg0cw_TmizaH58xOD9oKqIuvKvwxE3H8sh7rrjrHv2FSR9bYW_7Rh1tJAN7w6dtYg_wzT7BarrlY7PqMNwdoUBEroo2nft-RZtkzoUPef7DpBCNyHBURySawpH1UDs?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

3. **Блок “Окно для ввода текста”** показывает модальное диалоговое окно, предназначенное для получения информации от пользователя. Для данного блока указаны следующие свойства:

* Заголовок (текст, который будет отображен в заголовке диалогового окна);
* Сообщение (текст, который будет отображен  внутри диалогового окна).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcjMfpomTtlrTpW5avrlZ4dBVAo8k0bZVOYTP9uXriAty8DcFVu9cSFy00HYvPwVxMqTfMuH4SmJPTc5Bic5I5HZKzYvqfM4HZL6UWxxt4emoCHSbV8RjcUSHtUo3DDq-ZkwZenpQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

4. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: \[int]::TryParse($Result, \[ref] $IndexPhone). Этот метод переводит текст в число и выдает логический результат, который и проверяется на $true.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfJyb3GZrMX_RVCm8dMVwbk7NcY2wf7KuKpn6ZtEttYVh6tF2ckg8DmWZVSfXLZmcZWMuWvwJPXZyv6Yho5yWsPdEXvfxcOiltIPsTHv9N1CkeaJtHxHsMrIqcgma0zpd-6bbm1Cg?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

5. **Блок “Окно для ввода текста”** показывает модальное диалоговое окно, предназначенное для получения информации от пользователя. Для данного блока указаны следующие свойства:

* Заголовок (текст, который будет отображен в заголовке диалогового окна);
* Сообщение (текст, который будет отображен  внутри диалогового окна).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe2xiaYVY1EoMObSvmZ63lsazXETP0w8qLjVE7hktoOUF9VneluSYDEwd4Ek_CA5CLntev8I7rH7jaulkBFDTlke4oCcsRNRGR6MUMPJku3BuLP6r7ilCIql1msYI8dYzKWw5ZqyQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

6. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: \[int]::TryParse($Result, \[ref] $IndexFIO). Этот метод переводит текст в число и выдает логический результат, который и проверяется на $true..

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc8VBP38Q-PoATX_VUfS6Mmylb8lt6XUVf46X5mqnmdVg8tRaI-zl3kXvaNHM-QFesXsLDhaS6dY6a7beoSgBiB9N-j2yZMxETihTVm8UL5g9EHKRduUGiCBXXZIoUIVVyy0p3hMQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

7. **Блок “Окно для ввода текста”** показывает модальное диалоговое окно, предназначенное для получения информации от пользователя. Для данного блока указаны следующие свойства:

* Заголовок (текст, который будет отображен в заголовке диалогового окна);
* Сообщение (текст, который будет отображен  внутри диалогового окна).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdaITMyi5cAdtPljJhLfVwGmHUM_dHD-vkZhWr5ZC-h917RV--3vvDLifQ82wFuE-RmlSIwgDLJI8Q1HXUSp-GLz6cRdILyvCnggviX9UCQI4JjPESpR6MRTEW9cGX1kIBvDVNSxw?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

8. **Блок “Выполнить выражение”** запускает выполнение одного или нескольких выражений на языке, совместимом с PowerShell. В данном случае используется одно выражение.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeI_iEuRl305x5hRATuWDV_vBduU07gmSSr5kGUKMpCwMkaSXwEqp8GNi0nGFfRAeS47_s4R_McDfBHQhguMPXtZ5zYH98pFxz7YSE2WWjb3XinXNH4h5kFeLHP9swMMnirNdd9dQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

9. **Блок “Открыть файл”** отображает диалоговое окно, позволяющее пользователю открыть файл. Для данного блока указаны следующие свойства:

* Заголовок (Текст, который будет отображен в заголовке диалогового окна);
* Фильтр (фильтр файлов для каждого параметра фильтрации строка фильтра содержит описание фильтра, за которым следуют вертикальная черта (|) и шаблон фильтра. Строки для различных параметров фильтрации разделяются вертикальной чертой).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdyzBFM0JrBie3QAcFF8bfbOOYDvrHwmPhkhoMwaDXCRpYkF9j3evoD0m1ijXiox_w4tsMUwCWXHK0krmu5pCiLcoTIyr3K1sKxY2w3ZsL5v-DF24SULVJr6Kkfcmq2P8Eh0T4Rag?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

10. **Блок “Считать файл”** позволяет считать содержимое текстового файла в переменную. Для данного блока указаны следующие свойства:

* Имя файла (имя текстового файла, чье содержимое требуется считать);
* Кодировка (кодировка файла).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXflxg5G6PJXpYWekVcBuJoOOINFZsZ6aHSE3lSWFa5TQLGi3nDQ4EV0pMMJhVbdC6nJqPYHSEe-V1_PDHAvDc_tGG4fn1CR6GF1ecK4Qv1HVKeYsu2TwtstPUSSbdhn7UMIw9DVog?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

11. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdUVEqRnPFD110iUChKkk27aaL4ENjl35cQmja72qRSgkS5JmWaXYtH70foiOJUrMy2L7OKQDDEwmV_eJirDVpKvklK9veztC-_ieit7IPvWCNjhjkpsU8pPnTNlWoMNmyT8tmiaw?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

12. \- 16. **Блоки “Конец”** (этими блоками завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).

**Диаграмма “Отправить сообщение”**

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXda80xwG9zyddeUe9jBviiqNfrantE56q5K9Ma2-ASRxRI9SJgjr4ounUQK971rpXgqxLmOhw0mP3DievnlqYPswuOfUSBJrmrVtsq6s577tNimfUuPc78vKL8cDixfJRcVIwg1EQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe3ZfhfmXkLEzmxAbVNwNGzBmy4iXVEQ3wycl-ReDIvirBrffmxodjk59O17Wk2kVYoYiKAbfeaUaVr2WVsoG3NCnHPld0FFly1wgzP2k_2dqP0bqVYA2-2P2vyqfkq_shaJUejbA?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано два значения, которые необходимо присвоить двум переменным, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeAnpTBL3WaqIZjF8Y1SfMVGEtgN3FoBXSkJiZKMRpLDAZbU3OcW-VQeXBFy-gjEVH8DwlyygyQj_H4t5PKfRhKxOU7jwFHv8WbC_M_ahwnZWHVC56ctHq4iKWnFzSoy-cpzlScZA?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

3. **Блок “Цикл”** позволяет повторить цепочку действий (блоков) несколько раз и при этом посчитать количество итераций цикла, записывая текущее количество в специальную переменную (указанную в свойстве “Цикл”), которую можно затем использовать в других блоках. При первом входе в блок значение переменной из свойства “Цикл” приравнивается к “Начальному значению” (в данном случае оно равно нулю), а затем выполнение сценария продолжается в сторону выхода “Цикл” данного блока (в, так называемое, “тело цикла”). Как только выполнение сценария вновь дойдет до данного блока, значение переменной “Цикл” увеличится на значение “Шаг” (в данном случае, это 1), и вновь произойдет переход в сторону выхода “Цикл”. Как только значение переменной “Цикл” станет больше или равно “Конечному значению” (в данном случае, оно задано переменной $Телефон.Length), выполнение сценария продолжится в сторону нижнего выхода блока. Не забудьте соединить выход последнего блока в теле цикла со входом данного блока или какого-либо из предшествующих блоков.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcA1XiJ5sw32p6Eep08Ij7NZS5RGZYKEm3BJs4a-AssobJFedi4sYydNRejZasUb7O69a5veKH8QsHanUc5rU_jWmpauHYX2Tce5GS-XFx3XlXBPWRpI12u64ukr0lTNHlN6GBQLg?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

4. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: \[char]::IsDigit($Телефон\[$indchar]). Т.е., осуществляется проверка, что  в строке каждый символ является числом.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeVlaVzxYQlFo7WB8KcBAWL-1Px4iISfnnXHjOWdc96nYE_Z8g7NKydJpiZzx8x4DiIEOrm0eA1Q0QGXXvWlwougP7EJQNIhSztusWN6kZk4DyQbwK2TFZZdb4twvkZzYieMLzCug?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

5. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcDTOtjtSYhnYvo_Zlt4pp9saTwMd74p6DmT1qdLeiIEvO-7HFHBadyGHDuRaU2ZMVOV2VPz7ElOxTYhYJx8sTBlmi6EhI-qYwRVuh2b6V0_uHFzlRr_e9iroBwjLOt61jwVBIdXA?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

6. **Блок “Получить подстроку”** позволяет извлечь подстроку из исходного текста. Для данного блока указаны следующие свойства:

* Текст (входная строка);
* Индекс начала (индекс начального символа, нумерация начинается с 0. При указании значения меньше нуля, начальный индекс отсчитывается от конца строки);
* Количество символов (количество символов. При указании пустого значения или количества равного нулю, то строка будет извлечена от указанного индекса до конца строки).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdF8KePdpJRqOUgsr5S0ch18kpWFHLsnTBFxhg5ATuhK1MnuPye0D8pWchidtr_mEbKc-5971gZz03taRHURBkse-XVNueCXko3cglOp22dlYYdShHdGuDI69xmVxZq5veFbN7Z-A?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

7. **Блок “Получить подстроку”** позволяет извлечь подстроку из исходного текста. Для данного блока указаны следующие свойства:

* Текст (входная строка);
* Индекс начала (индекс начального символа, нумерация начинается с 0. При указании значения меньше нуля, начальный индекс отсчитывается от конца строки);
* Количество символов (количество символов. При указании пустого значения или количества равного нулю, то строка будет извлечена от указанного индекса до конца строки).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdLkeqKitL4EZXdYyf1nds1BiMWpKbLnNVcyj-ZztUkBkECxu9yyVndBaQ5aCPflLf83JBDP5BCeqqMdg4jilrd0VsBXZsJGiLUdDAWUFYgub_1V2odAXjlxcSU064d3sylcoAAQQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

8. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано три значения, которые необходимо присвоить трем переменным, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcys6vu84FTxhU4zAbh4RRKfB0llyNymmJNiMo7f_ok9MO6S79hWRdvyKsM_3W0Le6luZWWjtg_D_6jHOx9sSERZjPOAwlUnCykNdCm3BJNdcMgJRXZMI5kaSZeBb3vrrRRM4FonQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

9. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $normalizednumber.Length==11. Т.е., длина строки должна быть равна 11.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcB32eiKh_L_su3dtWLb9J8EUMGLWTwe7wbrgWxqgzSFiyiPFJvhvlA6vsgzQNQ57D1owvCMN3RvEwlS5paBUbm-JmNc86_R9j1vdklLEzpuzcE-2XyuNorqCN5xqpfpl6OKrCR?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

10. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”, а также установлен флаг “Отображать в статусе”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., выводит в лог сообщение “"Отправляем сообщение на номер:” и сам номер и отображает это сообщение в статусе.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfpjgVE0SkC-Vq3ix07z-cOAwyJpw6Rr_pvd5JizwTJUls32_82BI38f4V7OCLPsLtraWjkzyiIuDzPuwycA_v3J0qmcBbA5y9szjxsx5eRv3u6lDkQUoSojT7GfZYJcajLM3iqpg?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

11. **Блок “Кодировать строку URL-адреса”** кодирует строку для передачи в  URL-адресе. Для данного блока указано одно свойство “Текст” (входная строка).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd7KOIC16Q0R1A9lQPvwxxt6nosiLP0Eno5PmlnKDOPi7cQ7kgQsUlovkBFsQ2UfZeMZdoYj1y61OUZk2Zc8SYjWWO5qsV6_jDyiw95Ye2PlXJLBenST1S-iDk-AqrbtUkZkJE8?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

12. **Блок “Запустить Chrome”** позволяет запустить Google Chrome. Для данного блока указаны следующие свойства:

* URL (адрес открываемой при запуске Google Chrome страницы);
* Текущая вкладка (при установленном флаге страница откроется в текущей выбранной вкладке браузера);
* Время ожидания (время ожидания запуска приложения и загрузки вкладки в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcIIwpR3DnxCAiSrcpGCPv0iNUAoneMckgUMRbE8ModsH_4RNa9yP_bnR9qWT3mB2dzy-SihZf5jHrr8-wb3VPFwSAPAlVqTQg5Y-94VKy_zXncD55xEOP0isKXaKiVwkQehxtHlw?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

13. **Блок “Ожидать появление”** ожидает появление элемента пользовательского интерфейса на экране добавлен в диаграмму с помощью инструмента записи действий пользователя.&#x20;
14. **Блок “Проверить наличие элемента”** проверяет наличие заданного элемента в веб-странице. Если элемент найден, то выполнение сценария продолжится через выход ”Да”, иначе - через выход “Нет”. Для данного блока указаны следующие свойства:

* Селектор (идентификатор окна браузера и элемента веб-страницы);
* ID процесса (переменная, в которой хранится идентификатор процесса и вкладки браузера, используемые данным блоком).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf2TO2buskySMi704OvIkyXCuWCEunCVMIxP0e3-Pp6Mycp_puQUFuDDRmlF2ac-2dA4rduK1NRIsBnBYNJ-XUyR2LU36CSJ6B8kgqDPlE-UlPH-p4FQ1Sodc5A9FWeEzdy6WVfFQ?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

15. **Блок “Клик мышкой”** производит клик по заданному элементу приложения добавлен в диаграмму с помощью инструмента записи действий пользователя. Подробнее о нем \*здесь\*.
16. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”, а также установлен флаг “Отображать в статусе”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., выводит в лог сообщение “Сообщение отправлено” и отображает его в статусе.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcnvmKBlyvOLvyBhTbFU5uh6kXMqQVymtiAYgvDN1a0-PuG94TN4xSoZzz8tyZOmtpv9Cmkp-JEvAxn2MUh4ekHOjJ7m-1dSqI5NgZ8aCTSSagKwef5aUPqxoq35DMNLNaUuhvXzw?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

17. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe_QlVK_sX9Jio0uniFdrYfCGM8T0r7U_ERxL71MRcB2wQvy5j5UhPEe98jIaO7u0X97wMLHxhk8OwWpcEJWCg-5QZD_1PKMN2WZ_rMDdAxqx6zBh_7wWFKT561e-16oydsuJZwZA?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

18. **Блок “Проверить наличие элемента”** проверяет наличие заданного элемента в веб-странице. Если элемент найден, то выполнение сценария продолжится через выход ”Да”, иначе - через выход “Нет”. Для данного блока указаны следующие свойства:

* Селектор (идентификатор окна браузера и элемента веб-страницы);
* ID процесса (переменная, в которой хранится идентификатор процесса и вкладки браузера, используемые данным блоком).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd4bKwOzHWpIB33DN9vPPdvxaBBcDdIVRDY0EgepQZ24n5hyHSfIulqIO4ddyv6WWj1Xu7lVo0PmXiWyb2LsWFoYeOigpSfKwBDTWYACKQ34IRkxs-Unq6Cb3sFycrr2gl4SHXB?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

19. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”, а также установлен флаг “Отображать в статусе”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., выводит в лог сообщение “На номер нельзя отправить сообщение” и отображает его в статусе.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcwGEJwCJTwIOdqjZ-jZxQQt3GRgEnVikSCj37_5lcNeHg7ZoNbtzgeFEzrm1DxdZr5s1ud7i0OdG_QHXSoyL1XWZ4uh24EkkJX_2eVvCVcLcVgyIepikkUxXNQ_mdWHJIwi1Bhgg?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

20. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeZPOz_U1QRGw_nZHqQXaz2Cr2m9WthLXFBiMhQWRgiSim1L1kIJjqLtD9ycxyU38h48gb3I7uB0VuHgnaMdYpvLlkcg9RmP2GFc92ZjiW5yihhZpgFlilNHhLMpjl2gAjwvYuBgg?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

21. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”, а также установлен флаг “Отображать в статусе”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., выводит в лог сообщение “Ошибка отправки сообщения.” и отображает его в статусе.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdbiJhaU0f0U-hv5FjrlSuN5IFIOv3fL8W1InziCUrxfFjY8EjWrnZijwCMejrsOG6s9Y4LUukd827K1bAXm8W3bFq6ELX74qIJnitRGMmtGYPgPUqAsMORi___iPNArmptidBRxw?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

22. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае, в свойствах указано одно значение, которое необходимо присвоить одной переменной, соответственно.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfEf6AC0jfDPPrdnn4R5vW4nuFr7Y7DQxFSR2V1cmYtKcHsnm1t_WIG3dcc-177KFM7ofGAPwhNiv6UYEGeG1zZhK6g6JSowJVROtFAB2mdhqxBZCoram2F597cDVWxlYH9zU5g2w?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

23. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $attempts<4. Т.е., количество попыток должно быть меньше 4.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeSwFQXXv8dEFq6xmil4UzR9SFLvmQFojRuHoYr0cJvPWSAq5lS1BWZtGlUR3zztoq-CPy2fbvK6t_MbijKqrDap-1oCG-C2p3CP30GnyXX_wKTsa8p2AUrI10dvNubphew8CKWhw?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

24. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”, а также установлен флаг “Отображать в статусе”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., выводит в лог сообщение "Повторная отправка. Попытка № " и номер попытки и отображает его в статусе.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdZxh2EQz_HCNj8f23uoeQuTRDksDsMFYzONVeeXUXS6myPy5HComtz_fy5nfFSuB7hY4B2sg7WiP-_uqwPPy3PeAaOGRCNy11PlohkIAmzV88lAIsZ3anSR75-834I6y6T3fASlg?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

25. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т.е., выводит в лог сообщение “Критическая ошибка…”

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc3geEavsddbuagGi7R1Q8H4MDKgLeLtQBujxNeOlCsbxfDt0A8-oJQr_FWZdMH5S2m5IWgLJCLVPmlyUeBpMYw9JxQRVy-mwWMGNAsulGRdwyFfs3uHp2-W4oR8GIoXHLBSBW8ug?key=cSgHfCR5kYldViNwtblH6ZqL" alt=""><figcaption></figcaption></figure>

26. \- 28. **Блоки “Конец”** (этими блоками завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
