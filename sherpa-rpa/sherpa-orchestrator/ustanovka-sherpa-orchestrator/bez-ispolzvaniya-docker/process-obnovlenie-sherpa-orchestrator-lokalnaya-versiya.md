# Процесс обновление Sherpa Orchestrator (локальная версия)

### Общая информация об обновлении

Обновление Sherpa Orchestrator включает следующие компоненты:

* Обновление файлов приложения
* Обновление структуры базы данных
* Обновление зависимостей Node.js (если требуется)
* Перезапуск сервисов

### Резервное копирование перед обновлением

**Всегда создавайте резервные копии перед обновлением!**

#### Резервное копирование базы данных

```bash
# Создайте дамп базы данных
mysqldump -u root -p orchestrator > orchestrator_backup_$(date +%Y%m%d_%H%M%S).sql

# Создайте дамп архивной базы данных (если используется)
mysqldump -u root -p orchestrator_archive > orchestrator_archive_backup_$(date +%Y%m%d_%H%M%S).sql
```

#### Резервное копирование конфигурационных файлов

```bash
# Создайте резервную копию конфигурации
cp -r /opt/SherpaOrchestrator/backend/config /opt/SherpaOrchestrator/backend/config_backup_$(date +%Y%m%d_%H%M%S)

# Создайте резервную копию SSL-сертификатов
cp -r /opt/SherpaOrchestrator/backend/config/certs /opt/SherpaOrchestrator/backend/config/certs_backup_$(date +%Y%m%d_%H%M%S)
```

#### Резервное копирование логов и данных

```bash
# Создайте резервную копию логов
cp -r /opt/SherpaOrchestrator/backend/logs /opt/SherpaOrchestrator/backend/logs_backup_$(date +%Y%m%d_%H%M%S)
```

### Скачивание файлов обновления

```bash
# Перейдите в директорию /opt и скачайте туда файл как на этапе подготовки
cd /opt

# Скачайте архив с обновлением
orchestrator_local_update_*.tgz

```

### Остановка сервисов перед обновлением

```bash
# Остановите PM2 процессы
sudo pm2 stop all
sudo pm2 delete all

# Остановите Nginx
sudo systemctl stop nginx

# Остановите PHP-FPM
sudo systemctl stop php8.3-fpm

# Остановите MySQL/MariaDB (опционально, для полной остановки)
sudo systemctl stop mariadb
```

### Создание резервной копии текущей установки

```bash
# Переименуйте текущую директорию
sudo mv /opt/SherpaOrchestrator /opt/SherpaOrchestrator_backup_$(date +%Y%m%d_%H%M%S)
```

### Распаковка и установка обновления

```bash
# Создайте новую директорию
sudo mkdir /opt/SherpaOrchestrator

# Найдите и распакуйте архив обновления (автоматически выбирается самая свежая версия)
tar -xvzf "$(ls orchestrator_local_update_*.tgz | sort -V | tail -n 1)"


# Перейдите в директорию приложения
cd /opt/SherpaOrchestrator

# Сделайте скрипты исполняемыми
sudo find ./*.sh -type f | xargs chmod +x
```

### Восстановление конфигурации

```bash
# Восстановите конфигурационные файлы из резервной копии
sudo cp -r /opt/SherpaOrchestrator_backup_*/backend/config/* /opt/SherpaOrchestrator/backend/config/

# Восстановите SSL-сертификаты
sudo cp -r /opt/SherpaOrchestrator_backup_*/backend/config/certs/* /opt/SherpaOrchestrator/backend/config/certs/

# Установите правильные разрешения
sudo chown -R www-data:www-data /opt/SherpaOrchestrator
sudo chmod -R 775 /opt/SherpaOrchestrator
```

### Обновление базы данных

```bash
# Проверьте настройки подключения в phinx.php
sudo nano backend/config/phinx.php

# Выполните миграции базы данных
sudo ./migrate.sh
```

### Обновление Node.js зависимостей (если требуется)

```bash
# Перейдите в директорию websocket
cd /opt/SherpaOrchestrator/backend/app/websocket/

# Обновите зависимости
sudo npm install

# Вернитесь в основную директорию
cd /opt/SherpaOrchestrator
```

### Запуск сервисов после обновления

```bash
# Запустите MySQL/MariaDB (если останавливали)
sudo systemctl start mariadb

# Запустите PHP-FPM
sudo systemctl start php8.3-fpm

# Запустите Nginx
sudo systemctl start nginx

# Запустите WebSocket сервис
cd /opt/SherpaOrchestrator/backend/app/websocket/
sudo pm2 start index.js --name "Websockets"
sudo pm2 save

# Вернитесь в основную директорию
cd /opt/SherpaOrchestrator
```

### Проверка работоспособности после обновления

```bash
# Проверьте статус сервисов
sudo systemctl status nginx
sudo systemctl status php8.3-fpm
sudo systemctl status mariadb

# Проверьте PM2 процессы
sudo pm2 list
sudo pm2 logs Websockets --lines 20

# Проверьте доступность веб-интерфейса
curl -I https://your-domain-or-ip

# Проверьте логи Nginx на ошибки
sudo tail -f /var/log/nginx/error.log
```

### Очистка после успешного обновления

```bash
# После успешного тестирования удалите старые резервные копии
# (выполняйте только после подтверждения работоспособности!)

# Удалите старые файлы обновления
rm -f /opt/orch_local_update_*.tgz

# Удалите старые резервные копии (если уверены в работоспособности)
# rm -rf /opt/SherpaOrchestrator_backup_*
```

### Возможные проблемы при обновлении

#### Проблемы с базой данных

* Проверьте корректность настроек в `config.ini` и `phinx.php`
* Убедитесь, что пользователь БД имеет достаточные права
* Проверьте логи миграций

#### Проблемы с веб-сервером

* Проверьте синтаксис конфигурации Nginx: `sudo nginx -t`
* Проверьте логи: `/var/log/nginx/error.log`
* Проверьте пути к PHP-FPM socket

#### Проблемы с WebSocket

* Проверьте логи PM2: `sudo pm2 logs Websockets`
* Проверьте зависимости Node.js: `npm list`
* Проверьте доступность портов

#### Роллбэк при неудачном обновлении

Если обновление прошло неудачно:

```bash
# Остановите все сервисы
sudo pm2 stop all
sudo systemctl stop nginx php8.3-fpm

# Восстановите из резервной копии
sudo rm -rf /opt/SherpaOrchestrator
sudo mv /opt/SherpaOrchestrator_backup_* /opt/SherpaOrchestrator

# Восстановите разрешения
sudo chown -R www-data:www-data /opt/SherpaOrchestrator
sudo chmod -R 775 /opt/SherpaOrchestrator

# Запустите сервисы
sudo systemctl start php8.3-fpm nginx
cd /opt/SherpaOrchestrator/backend/app/websocket/
sudo pm2 start index.js --name "Websockets"
```

### Рекомендации по обновлению

1. **Всегда делайте резервные копии** перед обновлением
2. **Тестируйте обновление** на тестовом окружении, если возможно
3. **Обновляйтесь в нерабочее время** для минимизации простоев
4. **Документируйте процесс** обновления для вашей команды
5. **Проверяйте логи** после обновления на наличие ошибок
