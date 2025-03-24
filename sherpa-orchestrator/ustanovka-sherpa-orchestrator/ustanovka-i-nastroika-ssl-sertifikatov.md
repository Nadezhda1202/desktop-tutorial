# Установка и настройка SSL сертификатов

SSL сертификаты играют важную роль в обеспечении безопасности\
веб-приложений, позволяя устанавливать зашифрованные соединения между клиентом и сервером. Ниже описан процесс установки и настройки\
SSL сертификатов для системы Sherpa RPA, включая необходимые шаги по настройке доменного имени, сертификатов для LDAPS и IMAP.

### Настройка доменного имени и сертификатов

Первоначальный шаг при настройке SSL сертификатов заключается в обновлении конфигурационного файла с вашим доменным именем.

1. Откройте конфигурационный файл `domain.conf`:

&#x20;  `bash   $ sudo nano ./backend/config/domain.conf`

2. В файле найдите и замените все упоминания домена `orchestrator.sherparpa.ru` на ваш собственный домен. Убедитесь, что вы сделали изменения во всех четырех указанных местах, после чего сохраните файл.
3. Переименуйте сертификат и ключ для вашего домена:

&#x20;  `bash   $ sudo mv /path/to/your/certificate.crt ./backend/config/certs/orchestrator.crt`

&#x20;  `$ sudo mv /path/to/your/private.key ./backend/config/certs/orchestrator.key`

### Настройка TLS для протокола LDAPS (опционально)

Если вы планируете использовать LDAPS, выполните следующие шаги:

1. Скопируйте корневой сертификат (rootCA) в каталог:

&#x20;  `bash   $ sudo cp /path/to/your/ca-certificates.crt /opt/SherpaOrchestrator/backend/config/certs/`&#x20;

2. В файле `docker-compose.yml` раскомментируйте строку:

&#x20;  `yaml   - ./backend/config/certs/ca-certificates.crt:/etc/ssl/certs/ca-certificates.crt:ro`

### Настройка сертификатов для IMAP-сервера (опционально)

Если вы планируете использовать Триггеры с запуском по электронной почте, необходимо настроить сертификаты для IMAP-сервера. Для этого скопируйте сертификаты IMAP в директорию:

&#x20;  `bash   $ sudo cp /path/to/imap/certs/* /opt/SherpaOrchestrator/backend/config/certs/imap_certs/`&#x20;

### Установка Sherpa Orchestrator и настройка сертификатов

Теперь, когда сертификаты подготовлены, скопируйте их в необходимую папку:

1. Скопируйте сгенерированные сертификаты в нужную директорию:

&#x20;  `bash   $ sudo cp /path/to/generated/certs/orchestrator.crt /opt/SherpaOrchestrator/backend/config/certs/`

&#x20;  `$ sudo cp /path/to/generated/certs/orchestrator.key /opt/SherpaOrchestrator/backend/config/certs/`&#x20;

2. Скопируйте файл конфигурации и перезапустите nginx:

&#x20;  `bash   $ sudo cp ./backend/config/domain.conf /etc/nginx/sites-available/default`

&#x20;  `$ sudo systemctl restart nginx`
