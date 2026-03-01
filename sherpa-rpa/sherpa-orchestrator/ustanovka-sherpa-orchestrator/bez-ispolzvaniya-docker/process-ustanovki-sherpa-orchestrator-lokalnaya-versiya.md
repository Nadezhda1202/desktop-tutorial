# Процесс установки Sherpa Orchestrator (локальная версия)

### Подготовка сервера

#### Добавление пользователя в группу sudo

```bash
# Войдите под root пользователем
su

# Добавьте пользователя в группу sudo
/sbin/usermod -aG sudo <userName>

# Перезагрузите систему для применения изменений
exit
```

<details>

<summary>💡 Комментарии к добавлению пользователя в sudo</summary>

**/sbin/usermod -aG sudo** - добавляет пользователя в группу sudo

* `-a` - append (добавляет к существующим группам)
* `-G sudo` - добавляет в группу sudo
* `<userName>` - замените на имя вашего пользователя

**Важно:** После выполнения команды необходимо перезагрузить систему для применения изменений.

</details>

#### Настройка часового пояса

```bash
# Установите часовой пояс UTC
sudo timedatectl set-timezone UTC

# Проверьте настройку
timedatectl
```

<details>

<summary>💡 Комментарии к настройке часового пояса</summary>

**sudo timedatectl set-timezone UTC** - устанавливает часовой пояс UTC **timedatectl** - показывает текущие настройки времени и даты

Рекомендуется использовать UTC для серверных приложений.

</details>

#### Обновление системы

```bash
# Обновите список пакетов
sudo apt -y update

# Установите инструменты для работы с репозиториями
sudo apt -y install software-properties-common gnupg2

# Обновите систему
sudo apt -y upgrade
```

<details>

<summary>💡 Комментарии к обновлению системы</summary>

**sudo apt -y update** - обновляет список доступных пакетов из репозиториев **sudo apt -y install software-properties-common gnupg2** - устанавливает инструменты для работы с репозиториями

* `software-properties-common` - утилиты для управления репозиториями
* `gnupg2` - инструмент для работы с GPG ключами

**sudo apt -y upgrade** - обновляет все установленные пакеты до последних версий

* `-y` - автоматическое подтверждение установки

</details>

### Распаковка архива с обновлением

На этом этапе вы распакуете архив с файлами Sherpa Orchestrator и подготовите систему к установке.

```bash
# Перейдите в директорию с файлами
cd /opt

# Найдите и распакуйте архив обновления (автоматически выбирается самая свежая версия)
tar -xvzf "$(ls orchestrator_local_update_*.tgz | sort -V | tail -n 1)"

# Перейдите в директорию с распакованными файлами
cd SherpaOrchestrator
```

<details>

<summary>💡 Комментарии к распаковке архива</summary>

**cd /opt** - переходит в директорию с файлами установки **tar -xvzf "$(ls orch\_local\_update\_\*.tar.gz | sort -V | tail -n 1)"** - распаковывает архив с обновлением

* `tar -xvzf` - распаковывает архив с подробным выводом
* `ls orch_local_update_*.tar.gz` - находит все файлы архивов обновлений
* `sort -V` - сортирует версии естественно (1.0 < 1.1 < 1.10)
* `tail -n 1` - выбирает самый свежий файл

**cd SherpaOrchestrator** - переходит в директорию с распакованными файлами

**Ожидаемый результат:** Будут распакованы необходимые файлы и директории для установки Sherpa Orchestrator.

</details>

#### Подготовка скриптов к выполнению

```bash
# Перейдите в директорию sh_scripts
cd sh_scripts/

# Сделайте все скрипты исполняемыми
chmod +x *.sh

# Вернитесь в корневую директорию проекта
cd ..
```

<details>

<summary>💡 Комментарии к подготовке скриптов</summary>

**cd sh\_scripts/** - переходит в директорию со скриптами установки

\*_chmod +x .sh_ - устанавливает права исполнения для всех shell-скриптов

* `chmod +x` - добавляет право исполнения
* `*.sh` - все файлы с расширением .sh

**cd ..** - возвращает в корневую директорию проекта

</details>

#### Инициализация конфигурации

```bash
# Выполните инициализацию настроек
sudo ./sh_scripts/create_config.sh
```

<details>

<summary>💡 Комментарии к инициализации конфигурации</summary>

**sudo ./sh\_scripts/create\_config.sh** - запускает скрипт инициализации базовой конфигурации

* Создает необходимые директории
* Настраивает базовые параметры системы
* Подготавливает структуру для дальнейшей настройки

</details>

### Установка СУБД MariaDB

```bash
# Добавьте репозиторий MariaDB
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xF1656F24C74CD1D8
sudo add-apt-repository "deb [arch=amd64] http://mariadb.mirror.liquidtelecom.com/repo/10.5/debian $(lsb_release -cs) main"

# Обновите список пакетов
sudo apt update

# Установите MariaDB
sudo apt install mariadb-server mariadb-client
```

<details>

<summary>💡 Комментарии к установке MariaDB</summary>

**Добавление репозитория:**

* `sudo apt-key adv --recv-keys` - добавляет GPG ключ репозитория
* `sudo add-apt-repository` - добавляет репозиторий MariaDB
* `$(lsb_release -cs)` - автоматически определяет кодовое имя дистрибутива

**Установка пакетов:**

* `mariadb-server` - сервер базы данных
* `mariadb-client` - клиент для подключения к базе данных

</details>

### Базовая настройка безопасности MySQL/MariaDB

```bash
# Запустите скрипт настройки безопасности
sudo mysql_secure_installation
```

**Вопросы и варианты ответов настройки безопасности:**

```
Switch to unix_socket authentication [Y/n] y
Change the root password? [Y/n] y
Remove anonymous users? [Y/n] y
Disallow root login remotely? [Y/n] n
Remove test database and access to it? [Y/n] y
Reload privilege tables now? [Y/n] y
```

<details>

<summary>💡 Комментарии к настройке безопасности</summary>

**mysql\_secure\_installation** - интерактивный скрипт для базовой настройки безопасности MySQL/MariaDB

**Рекомендуемые ответы:**

* **Switch to unix\_socket authentication** - да (y) - использовать аутентификацию через unix socket
* **Change the root password** - да (y) - установить пароль для root пользователя
* **Remove anonymous users** - да (y) - удалить анонимных пользователей
* **Disallow root login remotely** - нет (n) - разрешить root подключаться удаленно
* **Remove test database** - да (y) - удалить тестовую базу данных
* **Reload privilege tables** - да (y) - перезагрузить таблицы привилегий

</details>

### Настройка базы данных и пользователя

```bash
# Подключитесь к MySQL как root
mysql -u root -p

# Выполните следующие команды в MySQL shell:
```

```sql
-- Добавление пользователя БД (замените пароль на надежный)
GRANT ALL ON orchestrator.* TO 'orchestrator'@'localhost' IDENTIFIED BY 'mD2vjt(HqZKW' WITH GRANT OPTION;

-- Перезагрузка привилегий
FLUSH PRIVILEGES;

-- Выбор базы данных
USE orchestrator;

-- Обновление записи аккаунта
UPDATE `accounts` SET `parent_account_id` = '1' WHERE `accounts`.`id` = 1;

-- Выход из MySQL
exit;
```

<details>

<summary>💡 Комментарии к настройке базы данных</summary>

_GRANT ALL ON orchestrator. TO 'orchestrator'@'localhost'..._\* - создает пользователя orchestrator с полными правами на базу orchestrator

* `'orchestrator'@'localhost'` - пользователь может подключаться только с localhost
* `WITH GRANT OPTION` - пользователь может давать права другим пользователям

**FLUSH PRIVILEGES** - перезагружает таблицы привилегий

**UPDATE accounts...** - устанавливает parent\_account\_id для системного аккаунта

**Важно:** Замените пароль `'mD2vjt(HqZKW'` на надежный уникальный пароль!

</details>

### Установка веб-сервера и PHP

```bash
# Установите необходимые пакеты
sudo apt -y install lsb-release apt-transport-https ca-certificates curl

# Добавьте репозиторий PHP
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list

# Обновите список пакетов
sudo apt-get update

# Установите Nginx и PHP 8.3
sudo apt-get install -y nginx php8.3 php8.3-cli php8.3-fpm php8.3-opcache php8.3-curl php8.3-mbstring php8.3-zip php8.3-xml php8.3-mysql php8.3-pdo-mysql php8.3-pgsql
```

<details>

<summary>💡 Комментарии к установке веб-сервера</summary>

**Добавление репозитория PHP:**

* Добавляется GPG ключ репозитория PHP от sury.org
* Добавляется репозиторий для PHP 8.3

**Установка пакетов:**

* `nginx` - веб-сервер
* `php8.3` - PHP интерпретатор
* `php8.3-fpm` - FastCGI Process Manager для PHP
* `php8.3-*` - расширения PHP для различных функций

</details>

### Настройка PHP

```bash
# Откройте файл конфигурации PHP-FPM
sudo nano /etc/php/8.3/fpm/php.ini

# Найдите и измените следующие параметры:
upload_max_filesize = 100M
post_max_size = 100M

# Сохраните файл и перезапустите PHP-FPM
sudo service php8.3-fpm restart
```

<details>

<summary>💡 Комментарии к настройке PHP</summary>

**upload\_max\_filesize = 100M** - максимальный размер загружаемого файла **post\_max\_size = 100M** - максимальный размер POST данных

**sudo service php8.3-fpm restart** - перезапускает PHP-FPM для применения изменений

</details>

### Настройка Nginx

```bash
# Откройте файл конфигурации Nginx
sudo nano /etc/nginx/nginx.conf

# Найдите секцию http и добавьте:
client_max_body_size 100m;

# Сохраните файл
```

<details>

<summary>💡 Комментарии к настройке Nginx</summary>

**client\_max\_body\_size 100m** - устанавливает максимальный размер тела запроса клиента

* Должно быть в секции `http { ... }`
* Значение соответствует настройкам PHP

</details>

### Настройка домена и конфигурации Sherpa

```bash
# Откройте файл конфигурации домена
sudo nano /opt/SherpaOrchestrator/backend/config/domain.conf

# Замените "orchestrator.sherparpa.ru" на ваш домен или IP адрес (всего 4 замены)

# Определите путь к PHP-FPM socket в зависимости от ОС:
# Для Ubuntu 18.04:
# fastcgi_pass unix:/var/run/php/php8.3-fpm.sock;

# Для Debian:
fastcgi_pass unix:/run/php/php8.3-fpm.sock;

# Для CentOS 8:
# fastcgi_pass unix:/run/php-fpm/www.sock;

# Для CentOS 7:
# fastcgi_pass unix:/run/php-fpm/php-fpm.sock;
```

<details>

<summary>💡 Комментарии к настройке домена</summary>

**Замена домена:** Необходимо заменить все вхождения "orchestrator.sherparpa.ru" на ваш реальный домен или IP адрес

**Настройка PHP-FPM socket:** Путь зависит от дистрибутива Linux:

* Debian/Ubuntu обычно: `/run/php/php8.3-fpm.sock`
* CentOS: `/run/php-fpm/www.sock`

**Важно:** Если путь неправильный, проверьте логи Nginx: `/var/log/nginx/error.log`

</details>

### Настройка SSL-сертификатов

```bash
# Скопируйте SSL-сертификаты в директорию конфигурации
# Замените пути на реальные пути к вашим сертификатам
sudo cp /path/to/your/certificate.crt /opt/SherpaOrchestrator/backend/config/certs/orchestrator.crt
sudo cp /path/to/your/private.key /opt/SherpaOrchestrator/backend/config/certs/orchestrator.key
```

<details>

<summary>💡 Комментарии к SSL-сертификатам</summary>

**Требования к сертификатам:**

* Сертификат должен быть переименован в `orchestrator.crt`
* Приватный ключ должен быть переименован в `orchestrator.key`
* Форматы: .crt/.pem для сертификата, .key для ключа

**Получение сертификатов:**

* Обратитесь к системному администратору за корпоративными сертификатами
* Используйте Let's Encrypt для бесплатных сертификатов
* Для тестирования можно создать самоподписные сертификаты

</details>

### Настройка конфигурации приложения

```bash
# Откройте файл конфигурации приложения
sudo nano /opt/SherpaOrchestrator/backend/config/config.ini

# Настройте параметры подключения к базе данных:
database_host=127.0.0.1
database_port=3306
database_user=orchestrator
database_password="mD2vjt(HqZKW"
database_dbname=orchestrator
```

<details>

<summary>💡 Комментарии к конфигурации приложения</summary>

**Параметры базы данных:**

* `database_host` - адрес сервера базы данных (обычно 127.0.0.1 для локальной установки)
* `database_port` - порт MySQL/MariaDB (по умолчанию 3306)
* `database_user` - пользователь базы данных (orchestrator)
* `database_password` - пароль пользователя (должен совпадать с созданным ранее)
* `database_dbname` - имя базы данных (orchestrator)

**Важно:** Пароль должен точно совпадать с паролем, установленным при создании пользователя БД

</details>

### Активация конфигурации Nginx

```bash
# Скопируйте конфигурацию в sites-available
sudo cp /opt/SherpaOrchestrator/backend/config/domain.conf /etc/nginx/sites-available/default

# Перезапустите Nginx
sudo systemctl restart nginx
```

<details>

<summary>💡 Комментарии к активации Nginx</summary>

**sudo cp ... /etc/nginx/sites-available/default** - копирует конфигурацию сайта в активные конфигурации Nginx

**sudo systemctl restart nginx** - перезапускает Nginx для применения новой конфигурации

</details>

### Установка разрешений

```bash
# Установите правильные разрешения и владельца
sudo chown -R www-data:www-data /opt/SherpaOrchestrator
sudo chmod -R 775 /opt/SherpaOrchestrator
```

<details>

<summary>💡 Комментарии к установке разрешений</summary>

**sudo chown -R www-data:www-data /opt/SherpaOrchestrator** - устанавливает www-data как владельца файлов

* `www-data` - пользователь веб-сервера Nginx/PHP-FPM
* `-R` - рекурсивно для всех файлов и директорий

**sudo chmod -R 775 /opt/SherpaOrchestrator** - устанавливает разрешения на файлы

* `775` - владелец и группа могут читать/писать/исполнять, остальные только читать/исполнять

</details>

### Создание архивной базы данных

```sql
-- Подключитесь к MySQL
mysql -u root -p

-- Создайте архивную базу данных
CREATE DATABASE IF NOT EXISTS orchestrator_archive CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Выход
exit;
```

<details>

<summary>💡 Комментарии к архивной базе данных</summary>

**CREATE DATABASE IF NOT EXISTS orchestrator\_archive** - создает архивную базу данных

* `IF NOT EXISTS` - создает только если не существует
* `CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci` - устанавливает кодировку UTF-8 с поддержкой Unicode

</details>

### Обновление структуры базы данных

```bash
# Перейдите в директорию приложения
cd /opt/SherpaOrchestrator

# Проверьте настройки подключения к БД в файле phinx.php
sudo nano backend/config/phinx.php

# Выполните обновление базы данных
sudo ./sh_scripts/migrate.sh
```

**Ожидаемый результат после успешного обновления:**

```
Phinx by CakePHP - https://phinx.org.

using config file ./backend/config/phinx.php
using config parser php
using migration paths
using seed paths
warning no environment specified, defaulting to: orchestrator
using adapter mysql
using database orchestrator

== 20241201120000 CreateInitialSchema: migrated 0.0123s ==
== 20241201120000 CreateInitialSchema: migrated 0.0123s ==

All Done. Took 0.0345s
```

<details>

<summary>💡 Комментарии к обновлению базы данных</summary>

**Проверка phinx.php:**

```php
'environments' => [
    'orchestrator' => [
        'adapter' => 'mysql',
        'host' => 'localhost',
        'name' => 'orchestrator',
        'user' => 'orchestrator',
        'pass' => 'mD2vjt(HqZKW',
        // ...
    ],
],
```

**sudo ./migrate.sh** - запускает миграции базы данных через Phinx

* Обновляет структуру таблиц
* Добавляет необходимые индексы
* Создает триггеры и процедуры

</details>

### Настройка CRON задач

```bash
# Откройте редактор CRON
sudo crontab -e

# Добавьте строку для запуска планировщика задач:
* * * * * php /opt/SherpaOrchestrator/backend/app/scheduleCronRunner.php

# Сохраните и выйдите из редактора
```

<details>

<summary>💡 Комментарии к настройке CRON</summary>

**sudo crontab -e** - открывает редактор CRON для root пользователя

* `* * * * *` - выполняется каждую минуту
* `php /opt/SherpaOrchestrator/backend/app/scheduleCronRunner.php` - запускает планировщик задач Sherpa

**Планировщик задач:**

* Управляет расписанием выполнения задач
* Обрабатывает отложенные задания
* Выполняет автоматическую очистку

</details>

### Установка Node.js и PM2

```bash
# Установите Node.js 22.x
sudo curl -sL https://deb.nodesource.com/setup_22.x | bash -
sudo apt-get install -y nodejs

# Обновите npm
sudo npm install -g npm@latest

# Установите PM2
sudo npm install -g pm2
```

<details>

<summary>💡 Комментарии к установке Node.js и PM2</summary>

**curl -sL https://deb.nodesource.com/setup\_22.x | bash -** - добавляет репозиторий Node.js

* `-sL` - silent и follow redirects
* `setup_22.x` - скрипт для Node.js версии 22.x

**sudo apt-get install -y nodejs** - устанавливает Node.js

**sudo npm install -g pm2** - устанавливает PM2 глобально

* PM2 - менеджер процессов для Node.js приложений
* Автоматический перезапуск приложений
* Управление логами и мониторинг

</details>

### Настройка WebSocket сервиса

```bash
# Перейдите в директорию websocket сервиса
cd /opt/SherpaOrchestrator/backend/app/websocket/

# Установите зависимости
sudo npm install

# Запустите сервис через PM2
sudo pm2 start index.js --watch --ignore-watch="node_modules" --name "Websockets"

# Настройте автозапуск PM2
sudo pm2 startup

# Сохраните конфигурацию PM2
sudo pm2 save
```

<details>

<summary>💡 Комментарии к настройке WebSocket</summary>

**sudo npm install** - устанавливает зависимости Node.js из package.json

**sudo pm2 start index.js --watch --ignore-watch="node\_modules" --name "Websockets"**

* `--watch` - перезапуск при изменении файлов
* `--ignore-watch="node_modules"` - игнорировать изменения в node\_modules
* `--name "Websockets"` - имя процесса в PM2

**sudo pm2 startup** - настраивает автозапуск PM2 при загрузке системы **sudo pm2 save** - сохраняет текущую конфигурацию процессов

</details>

### Настройка доменного имени (опционально)

Если вам достаточно доступа к интерфейсу Оркестратора через серверный IP, пропустите данный пункт.

```bash
# Откройте файл hosts
sudo nano /etc/hosts

# Добавьте запись (замените на ваш IP и домен):
192.168.1.100    orchestrator.mycompany.com
```



**На этом установка завершена!**

Система Sherpa Orchestrator доступна в браузере по доменному имени или IP-адресу.

Далее необходимо добавить и активировать лицензию для оркестратора и лицензии для роботов в веб-интерфейсе оркестратора.
