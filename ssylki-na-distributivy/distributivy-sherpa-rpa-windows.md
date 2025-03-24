# Дистрибутивы Sherpa RPA (Windows)

**1. Платформа Sherpa RPA (Sherpa Attended Robot + Sherpa Designer) для рабочих мест разработчиков:**\
[https](https://sherparpa.ru/downloads/SherpaRPA.exe)[://sherparpa.ru/downloads/SherpaRPA.exe](https://sherparpa.ru/downloads/SherpaRPA.exe)\
SherpaRPA.exe.SHA1SUM:\
https://sherparpa.ru/downloads/SherpaRPA.exe.SHA1SUM\
или\
[https](https://sherparpa.ru/downloads/SherpaRPA.msi)[://sherparpa.ru/downloads/SherpaRPA.msi](https://sherparpa.ru/downloads/SherpaRPA.msi)\
SherpaRPA.msi.SHA1SUM:\
https://sherparpa.ru/downloads/SherpaRPA.msi.SHA1SUM

**2. Только робот Sherpa Attended / Unattended (без Sherpa Designer) для установки на рабочие места конечных пользователей, виртуальные машины или терминальные сервера:**\
[https](https://sherparpa.ru/downloads/SherpaRPARuntime.exe)[://sherparpa.ru/downloads/SherpaRPARuntime.exe](https://sherparpa.ru/downloads/SherpaRPARuntime.exe)\
SherpaRPARuntime.exe.SHA1SUM:\
https://sherparpa.ru/downloads/SherpaRPARuntime.exe.SHA1SUM\
или\
[https](https://sherparpa.ru/downloads/SherpaRPARuntime.msi)[://sherparpa.ru/downloads/SherpaRPARuntime.msi](https://sherparpa.ru/downloads/SherpaRPARuntime.msi)\
При установке только роботов (без Sherpa Designer) необходимо выбрать тип устанавливаемого робота на первом шаге установки: Attended или Unattended.\
SherpaRPARuntime.msi.SHA1SUM:\
https://sherparpa.ru/downloads/SherpaRPARuntime.msi.SHA1SUM

**3. Координатор Sherpa Coordinator для Unattended роботов:**\
[https](https://sherparpa.ru/downloads/SherpaRPACoordinator.exe)[://sherparpa.ru/downloads/SherpaRPACoordinator.exe](https://sherparpa.ru/downloads/SherpaRPACoordinator.exe)\
SherpaRPACoordinator.exe.SHA1SUM:\
https://sherparpa.ru/downloads/SherpaRPACoordinator.exe.SHA1SUM

Координатор — это сервис, который должен быть установлен под администратором на RDP сервере, на котором планируется в пользовательских учетных записях запускать Unattended-роботов, при условии, что требуется автоматический вход в учетные записи роботов.

**4. Sherpa Orchestrator — ссылки на дистрибутив Оркестратора предоставляются по запросу вендору** (возможны два варианта установки с помощью докер-контейнера и без).\
Для проверки контрольной суммы можно использовать Windows утилиту «certutil»:\
certutil -hashfile путь\_к\_файлу

——\
Робот в любом из способов установки (с дизайнером или без, в версии exe или в версии msi) может иметь роль как Attended, так и Unattended, это определяется его лицензией (локальной или полученной из оркестратора) и способом запуска (локально или через оркестратор).
