# Версия 141854

**Вышел новый релиз Sherpa Orchestrator: Версия 141854.**

1. На экране Триггеры (Triggers) в таблице Триггеры (Triggers) добавлена колонка Процесс (Process), отображающая текущий процесс, который выполняется в рамках работ, инициируемых данным триггером.
2. В Конструкторе Действий (Form Designer ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdgx9UT3-RZmernBicqOA9bZcGHIOm7YUlCTru6zFErAccclcd155Osm9ALFSohCUQj9-LJb7mw9nopi-SS39XMKfJ_viKOFGwTVNInpcK86ESKcBoy2bbMhbntAr_eodBx1QPg8g?key=Pe0iNS94PSfAaeID6S-fzA2W)) на экране Действия (Actions) добавлен новый тип виджета - HTML. Данный виджет позволяет использовать HTML-данные как в Настройках виджета, так и в Параметре выбранной Задачи.
3. Теперь все виджеты в Конструкторе Действий (Form Designer ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdgx9UT3-RZmernBicqOA9bZcGHIOm7YUlCTru6zFErAccclcd155Osm9ALFSohCUQj9-LJb7mw9nopi-SS39XMKfJ_viKOFGwTVNInpcK86ESKcBoy2bbMhbntAr_eodBx1QPg8g?key=Pe0iNS94PSfAaeID6S-fzA2W)) на экране Действия (Actions) поддерживают валидацию вводимой пользователем информации через регулярные выражения. Для этого в Настройках элемента (Item settings) добавлены поля “Регулярное выражение (Regexp)” (Regular expression (Regexp)) и “Подсказка об ошибке валидации” (Validation error hint).
4. В Конструкторе Действий (Form Designer ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdgx9UT3-RZmernBicqOA9bZcGHIOm7YUlCTru6zFErAccclcd155Osm9ALFSohCUQj9-LJb7mw9nopi-SS39XMKfJ_viKOFGwTVNInpcK86ESKcBoy2bbMhbntAr_eodBx1QPg8g?key=Pe0iNS94PSfAaeID6S-fzA2W)) на экране Действия (Actions) добавлен новый тип виджета - Надпись (Label). Данный виджет позволяет выводить либо фиксированный текст из настроек действия, либо текст, содержащийся в Параметре выбранной Задачи.
5. На экране Работы (Jobs) в таблицу добавлен новый столбец Источник (Source). В нём отображается информация, каким образом была создана данная Работа: ‘GUI’/ ‘Trigger’/ ‘API’.
6. В Конструкторе Дашбордов (Form Designer ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdgx9UT3-RZmernBicqOA9bZcGHIOm7YUlCTru6zFErAccclcd155Osm9ALFSohCUQj9-LJb7mw9nopi-SS39XMKfJ_viKOFGwTVNInpcK86ESKcBoy2bbMhbntAr_eodBx1QPg8g?key=Pe0iNS94PSfAaeID6S-fzA2W)) на экране Обзор (Dashboard) добавлен новый тип виджетов - Таблица (Table).
7. Доработана и расширена логика ряда методов API для повышения производительности и удобства работы.
8. В конфигурационный файл (backend/config/config.ini) был добавлен новый параметр \`show\_process\_only\_for\_users\_in\_assistant\` со значением 0 по умолчанию. При установке этого параметра в значение 1 система будет загружать по API при работе в Ассистенте список всех процессов только при авторизации с использованием логина и пароля или API-ключа. Таким образом, по умолчанию в Ассистенте будут отображаться лишь локальные процессы.
9. На экране Хранилище (Storage) добавлена возможность просмотра файлов форматов PDF, TXT, DOCX, XLSX и некоторых других. Для этого достаточно нажать на иконку Просмотр (View) ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXd-G12NKW_5AkRIcZNjR-nDDISCg1AgYVkzSKHYbDHW8S0ZH6Dpsa9OcceqXvQGPpXJ32ChwXByMTMCGpOp5iShalJeU-ALUmMsUX1wcM4ZMhW4sWDO19o7Pa-GLpu9bKxa1fjS?key=Pe0iNS94PSfAaeID6S-fzA2W) в таблице Файлы (Files). При этом открывается онлайн инструмент просмотра, который позволяет удобно просматривать документы этих типов.
10. Появилась возможность хранения паролей в зашифрованном виде в конфигурационном файле \`config.ini\` (backend/config/config.ini). Шифрование работает со следующими параметрами:

* database\_password
* proxy\_password
* smtp\_password
* ldap\_password
* oAuthClientSecret
* database\_password\_archive

Для шифрования паролей выполните следующие шаги:

1\. Перейдите по адресу оркестратора, добавив к нему \`/generate-key.php\` и нажмите “Generate“. Будут сгенерированы случайные IV и ключ шифрования (закодированные в формате Base64). Обязательно сохраните их.

2\. Перейдите по адресу оркестратора, добавив к нему \`/encryptor.php\`. Введите IV и ключ (полученные на предыдущем шаге) в соответствующие поля. В поле “Text to encrypt” введите пароль, который необходимо зашифровать, и нажмите “Generate“. Сохраните полученный зашифрованный пароль.

3\. В конфигурационном файле \`backend/config/config.ini\` сохраните зашифрованный пароль в соответствующий параметр.

4\. В конфигурационном файле добавьте параметр \`use\_encryption\` со значением \`1\`. Сохраните изменения.

5\. Создайте переменную окружения \`ORCHESTRATOR\_ENCRYPTION\_KEY\` и сохраните в ней ключ шифрования, полученный на первом шаге.

6\. Убедитесь, что в \`docker-compose.yml\` в разделе environment контейнера orchestrator прописана строка: \`ORCHESTRATOR\_ENCRYPTION\_KEY=${ORCHESTRATOR\_ENCRYPTION\_KEY}\`.

7\. Перезапустите контейнеры с помощью \`run.sh\`.
