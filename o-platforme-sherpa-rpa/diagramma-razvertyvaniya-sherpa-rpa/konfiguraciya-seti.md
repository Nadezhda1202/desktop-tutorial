# Конфигурация сети

Конфигурация портов и сетевые протоколы Sherpa RPA могут быть настроены для поддержки всех общих требований брандмауэра. Конфигурация порта по умолчанию выглядит следующим образом:

\*Sherpa Attended Robot, Sherpa Unattended Robot, Sherpa Coordinator исходящие на Sherpa Orchestrator: 80 или 443

\*Во всех сетевых коммуникациях инициатива установки подключения и первоначального запроса принадлежит только клиентским компонентам, то есть Sherpa Attended Robot, Sherpa Unattended Robot и Sherpa Coordinator.\
Sherpa Orchestrator по своей инициативе не выполняет запросы к клиентам.

\*Связь с базой данных: 3306 и 1433-настраивается

\*Доступ пользователя к веб-интерфейсу Sherpa Orchestrator: 80 или 443\


Для взаимодействия с веб-сервером используется https, опционально возможно http. Sherpa RPA поддерживает защищенную связь (с использованием протокола TLS 1.2) между Attended Robot, Sherpa Unattended Robot, Sherpa Coordinator и Sherpa Orchestrator. При установке с помощью TLS клиент должен предоставить необходимые сертификаты, разместив их по пути /opt/app/config/certs/, переименовав их в orchestrator.crt и orchestrator.key.
