# Установка Sherpa AI Server

Перед установкой программных продуктов платформы Sherpa RPA ознакомьтесь с системными требованиями к компьютеру.

Схема взаимодействия между компонентами Sherpa AI Server.

<figure><img src="../.gitbook/assets/image.png" alt=""><figcaption></figcaption></figure>

Установка производится по инструкции представленной ниже.\


**Важно!** _Для установки Sherpa AI Server необходимо обладать правами администратора._&#x20;

Для Docker-контейнеров, использующих CUDA, необходимо установить:

* драйверы NVIDIA GPU на хост-системе;
* пакет NVIDIA Docker Toolkit (nvidia-docker2) на хост-системе, чтобы обеспечить доступ контейнера к GPU хоста;
* среду разработки CUDA Toolkit внутри контейнера (она уже установлена).

**Примечание:** _если в системе установлены Docker и Docker-compose, то можно сразу перейти в раздел “Установка CUDA”._

## Установка Docker и Docker-compose

Для корректной установки Docker и Docker-compose необходимо установить обновления системы Linux OS.&#x20;

Далее, в терминале, необходимо выполнить следующую команду (для этого скопируйте скопируйте команду, вставьте ее в окно терминала и нажмите Enter):

`sudo apt update && sudo apt upgrade -y`

Затем установите Docker, для этого скачайте установочный файл на сайте по ссылке: [https://docs.docker.com/engine/install/ubuntu/](https://docs.docker.com/compose/install/other/) и выполните в терминале поочередно следующие команды:

`sudo apt install docker.io -y`

`sudo systemctl enable docker`

`sudo systemctl start docker`

Следующим шагом необходимо установить Docker Compose, для этого перейдите по ссылке: [https://docs.docker.com/compose/install/other/](https://docs.docker.com/compose/install/other/) , после этого выполните в терминале поочередно следующие команды:

`sudo apt install curl -y`

`LATEST_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep 'tag_name' | cut -d\" -f4)`

`sudo curl -L "https://github.com/docker/compose/releases/download/${LATEST_COMPOSE_VERSION}/docker-compose-$(uname -s | tr '[:upper:]' '[:lower:]')-$(uname -m | tr '[:upper:]' '[:lower:]')" -o /usr/local/bin/docker-compose`

`sudo chmod +x /usr/local/bin/docker-compose`

## Установка NVIDIA GPU drivers

**Примечание:** _если в системе уже установлены NVIDIA drivers (CUDA version >= 12.2) и NVIDIA Docker Toolkit (nvidia-docker2), то можно сразу перейти в раздел “Установка Приложения”._

Для установки NVIDIA GPU drivers выполните в терминале поочередно следующие команды:

`sudo apt update && sudo apt upgrade`

`sudo apt install nvidia-driver-535`

`sudo reboot`

Затем проведите проверку с помощью команды:

`nvidia-smi`

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXco1iFex886BVJRB-w4cFxuFKiEBcCAeimQ7Z5WAnYidbqN7Coqcji5QXE5dYs-Zeuag_7hvJpUIAeqbp9jlZ7k0epYdesWibcVuZUAzqh55m2V67egVjseelHM2eWGM3IT5y1f?key=_hvX3Sc2JcwoH3os7aa0Zm4S" alt=""><figcaption></figcaption></figure>

## Установка NVIDIA Docker Toolkit (nvidia-docker2) online

Для установки NVIDIA Docker Toolkit (nvidia-docker2) online выполните в терминале поочередно следующие команды:

`sudo apt-get purge -y nvidia-docker`

`distribution=$(. /etc/os-release;echo $ID$VERSION_ID)`

`curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -`

`curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list`

`sudo apt-get update`

`sudo apt-get install -y nvidia-docker2`

`sudo systemctl restart docker`

## Установка NVIDIA Container Toolkit online

Для установки NVIDIA Container Toolkit online выполните в терминале поочередно следующие команды:

1. Настройка продакшн-репозитория:

`curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \`

&#x20; `&& curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \`

&#x20;   `sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \`

&#x20;   `sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list`

2. При необходимости настройки репозитория для использования экспериментальных пакетов:

`sed -i -e '/experimental/ s/^#//g' /etc/apt/sources.list.d/nvidia-container-toolkit.list`

3. Для обновления списка пакетов из репозитория:

`sudo apt-get update`

4. Для установки пакетов NVIDIA Container Toolkit:

`sudo apt-get install -y nvidia-container-toolkit`

## Установка CUDA offline

Для установки CUDA offline скачайте архивы файлов (\~3,5Gb), доступные по следующий ссылкам:

`https://sherparpa.ru/downloads/private/SherpaAIServer/cuda-offline-install.tar.gz`

`https://sherparpa.ru/downloads/private/SherpaAIServer/nvidia-graphics-drivers-535_535.129.03.orig-amd64.tar.gz`

При необходимости обновите драйвер NVIDIA, выполнив в терминале следующие команды:

`tar -xzvf nvidia-graphics-drivers-535_535.129.03.orig-amd64.tar.gz --strip-components=1`

`sudo bash NVIDIA-Linux-x86_64-535.129.03.run`

Затем распакуйте ранее скачанный архив, это можно сделать с помощью следующей команды:

`tar -xzvf cuda-offline-install.tar.gz`

Для установки CUDA repository package используйте команду:

`sudo dpkg -i cuda-repo-ubuntu2004-11-8-local_11.8.0-520.61.05-1_amd64.deb`

Переместите pin с помощью команды:

`sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600`

Скопируйте GPG keyring, используя команду:

`sudo cp /var/cuda-repo-ubuntu2004-11-8-local/cuda-*-keyring.gpg /usr/share/keyrings/`

Для запуска установщика приложение используйте следующие команду:

`cd /var/cuda-repo-ubuntu2004-11-8-local/`

`sudo dpkg -i *.deb`

Последним шагом в установке CUDA offline является обновление переменных окружения, для этого используйте следующую команду:

`echo 'export PATH=/usr/local/cuda/bin:$PATH' >> ~/.bashrc`

`echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc`

`source ~/.bashrc`

## Установка приложения

Для установки приложения необходимо поочередно выполнить следующие действия:

1. Для создания папки проекта, выполните в терминале следующие команды:&#x20;

`sudo mkdir /opt/sais`

`cd /opt/sais`

2. Затем скачайте архивы файлов (25-50Gb), доступные по следующий ссылкам:

[https://sherparpa.ru/downloads/private/SherpaAIServer/model-lama3.tar.gz](https://sherparpa.ru/downloads/private/SherpaAIServer/model-lama3.tar.gz) &#x20;

Контрольная сумма: 40caeb2a6596c6c1230e9f6b753c770f

[https://sherparpa.ru/downloads/private/SherpaAIServer/sais20.tar.gz](https://sherparpa.ru/downloads/private/SherpaAIServer/sais20.tar.gz)

3. Загрузите переданные архивы в папку проекта, выполнив в терминале следующие команды:

Клиенту передаются файлы .tar.gz. Команды для загрузки архивов зависят от версий файлов выбора моделей и названий архивов. Ниже приведены команды в общем виде:

`models-****.tar.gz`

`sais20-****.tar.gz`

4. Если необходимо скачать архивы сразу на сервер выполните в терминале следующие команды:

`sudo wget -O model-lama3.tar.gz https://sherparpa.ru/downloads/private/SherpaAIServer/model-lama3.tar.gz`

`sudo wget -O sais20.tar.gz https://sherparpa.ru/downloads/private/SherpaAIServer/sais20.tar.gz`

**Примечание:** _если при распаковке архивов возникает ошибка проверьте контрольные суммы с помощью команды:_

_`md5sum <archive.tar.gz>`_

_И указать `md5sum server` и `md5sum models`_

5. Выполните промежуточную проверку с помощью команды:&#x20;

`ls -la`

**Примечание:** _2 архива скопированы в папку проекта. Названия и размеры файлов могут меняться._

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXej6G8kMEJlVVSPlCJGXW5bw0eFKGngQJQycr85WLPWNCyhKxETdZ5OUUIghfgTLJhoTgF25RDNyPolJi_yhNl__CwIq3HPSzxVPQ-Y6ZPUSaWgGY69Ja7NYpGoH44aTZ7IX5otcA?key=_hvX3Sc2JcwoH3os7aa0Zm4S" alt=""><figcaption></figcaption></figure>

6. Распакуйте архивы, используя следующие команды:

`tar -xf <fsais20…>`

`tar -xf <model-…>`

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfrzb0cIOxJ0jMpUHuQ1yJD71i6SgUGIKNMmWl68pRpKwBeV3wmBO1a9W5U84FI4NuazqvaTXzac-LyCnpIC6GYiPOzkgsOJDrw8h0zU6ZGrECxqsJHWiyXlRuGPcMA4_My1IpMTA?key=_hvX3Sc2JcwoH3os7aa0Zm4S" alt=""><figcaption></figcaption></figure>

**Примечание:** _если у текущего пользователя \<username>_ нет разрешений для docker group выполните в терминале следующую команду:

_`sudo usermod -aG docker <username>`_

7. Распакуйте docker images  с помощью следующей команды:

`docker load -i <file_name.tar>`

8. Установите разрешения для скрипта:

`chmod 755 run.sh`

9. Проверьте занятость портов:&#x20;

`lsof -i :3003 && lsof -i :3004`

**Примечание:** _если порты заняты не важными процессами их можно остановить, используя команду: `lsof -i :3003 | awk 'NR>1 {print $2}' | xargs kill -9`_

10. Установите права на конфиг для mysql, используя следующую команду:

`$ sudo chmod 0444 /opt/sais/oais/backend/config/my.cnf`

11. Настройте доменное имя с помощью команды:

`$ sudo nano /opt/sais/oais/backend/config/domain.conf`

и замените в этом файле домен "exampledomain.ru" на свой во всех местах (3 изменения), затем сохраните файл.

12. Настройте сертификаты. Для этого переименуйте сертификат и ключ для своего домена в `orchestrator.crt` и `orchestrator.key` соответственно, затем скопируйте их в `"./oais/backend/config/certs" и “./client-files/cert”`
13. Задайте IP-сервер в файле окружения. Для этого задайте IP-сервер в файле `./client-files/.env` и установите параметр `HOST_IP=ВАШ.IP`
14. Создайте общую сеть, выполнив в терминале следующую команду:

`docker network create --driver bridge --subnet 172.18.0.0/16 llm-net`

15. Выполните запуск контейнеров, используя следующую команду:

`$ sudo sh ./run.sh`

16. Создайте базу данных с помощью команды:

`$ docker exec -it orchestrator-db mysql -u root -e "CREATE DATABASE IF NOT EXISTS orchestrator CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci"`

**Примечание:** _если Вы меняли стандартный пароль от базы данных на свой, то в команде после после root добавьте -p и свой пароль. Пароль по умолчанию задан в файле `“./oais/backend/config/config_docker.ini”`  в параметре “database\_password”_

17. Выполните обновление базы данных, используя следующую команду:

`$ sudo sh ./oais/migrate.sh`

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcMsqX02vL4XK7CGO3SREs4cN2H0s4MDGywlLfJAr1NZ_2qt04OIqlGbWvbAfFKSqjkPfC-_B9MDKqlGiesQjVtGd1n3xB_AwDcspNZ6jC8ZQkSdbBcwtcFJZsBnkuBHbi1Bm9G?key=_hvX3Sc2JcwoH3os7aa0Zm4S" alt=""><figcaption></figcaption></figure>

18. Выполните проверку с помощью команды:

`docker stats`

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdPg1g5PpTpjQfk9J0Y3Q8_XK-lsEBLJdQVSer2HNj46A9VO8ZVOLBxG9qgRuCg3-hmJTA_F8MBislo3TKIR6H8Ec2sgP2sAVteeTylSuijT1hkxU-WQ5aT0Sg0OGLJQl6R0fbHLw?key=_hvX3Sc2JcwoH3os7aa0Zm4S" alt=""><figcaption></figcaption></figure>

19. При необходимости удалите архивы для экономии места, используя команду:

`rm  <file_name>`

На этом установка приложения завершена. Приложение доступно в браузере.

На загрузку контейнера языковой модели требуется 5-7 минут.&#x20;

После загрузки контейнера можно перейти в веб интерфейс по ссылке: [https://\<host\_url>](http://host/)

20. Выполните активацию АИ сервера

Перейдите в браузере по url адресу:\
`<доменное_АИ_сервера>/setup.php`

и если IP адрес отображается верно нажмите на кнопку “Отправить”.

В ответе скрипта будет указан GUID АИ сервера, который необходимо записать вместе с регистрационными данными для дальнейшего использования.
