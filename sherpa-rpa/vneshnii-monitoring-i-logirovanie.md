# Внешний мониторинг и логирование

Логирование на платформе Sherpa RPA можно настроить двумя разными способами:

1. **Логирование через Sherpa Orchestrator**

Для логирования через Оркестратор можно использовать дашборд [“Обзор”](../sherpa-orchestrator/rabota-v-sherpa-orchestrator/ekrany/obzor/)

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeQCRJAA1PHYXHBm5ZIsscF_Gs4Dzj8dfhlL6rdwUK6bs9-G4wxIusmj25S3rGw2NQ8N9o0YAw2y28Wp3uQb4FpHHwlJMSns4LXoqEe7Zbsa2zpwHD2LwKFqXCh7TXUaWiP0egxpNyTDc2kpBNd_8XCGlXc?key=C_lgKCFrykmgl4Vl7La7Tg" alt=""><figcaption></figcaption></figure>

или экран [“Сообщения Роботов”](../sherpa-orchestrator/rabota-v-sherpa-orchestrator/ekrany/soobsheniya-robotov.md), который на экране “Пользователи” позволяет настроить для каждого отдельного пользователя email-уведомления о событиях роботов с определенным уровнем тревожности.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdqOci2IXHPbpfQhJaLy0I5U6RfsiO6cZe2SchLwhURmv7iAoalBCjkpK2QOIMYuGAyt27TCvWi18UsZPqih5QLHBWkyJFVsHiBPwMTpX4xdUoo8yxzL-j6g9Kq81Tn-m7rrBVaR6BH1F88uSi5CqEH1qU?key=iiDSKcUE6eu6BlxEUq3Jmg" alt=""><figcaption></figcaption></figure>

Также на уровне Оркестратора логирование можно настроить через SQL-запросы в таблицу Оркестратора, где хранятся сообщения роботов.&#x20;

**Важно!** _При настройке логирования через SQL-запросы необходимо следить за временем выполнения запроса в статистике медленных запросов, чтобы не перегружать Оркестратор._

2. **Логирование с помощью NLog**

На уровне робота можно использовать логирование с помощью NLog. NLog интегрирован с роботом и позволяет настроить автоматическую отправку логов можно в несколько мест.

Подробнее об этом можно почитать по ссылке:&#x20;

{% embed url="https://nlog-project.org/config/" %}

Для настройки логирования с помощью NLog:

* откройте папку: c:\Users\User\AppData\Roaming\Sherpa RPA Data\Setting\\
* найдите в ней файл: nlog.config.xml
* в файле укажите нужную Вам конфигурацию.

Функционал платформы Sherpa RPA позволяет указать в настройках робота дополнительную папку для хранения копий текстовых логов. Для этого откройте настройки Sherpa Assistant и во вкладке “Выполнение” выберите дополнительную вкладку “Лог робота”. В поле “Дополнительная директория для записи логов работы робота” по кнопке “Выбрать” укажите нужную папку.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcz_LOkiKEmxjF9MRWN_E0wjgdPxLfiIQOchsBTeUaeioqMEUcGijcWJn2cxz2_zs_DwfGpvRvn3oepl6TjG5xzp2VDT1Drk6nnyDKMdMM1Cg1qqOhhd-N2a1XbVtIjFyki1YJYK-rVF8j58KLnmgftkzc?key=YQr2p57ALaah0ntWBkYlFA" alt=""><figcaption></figcaption></figure>

и, в открывшемся окне, выберите папку на Вашем компьютере.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdk47LdtlDu8OtmUD3zti-gfAdTmtN5-OIu7AHn3_R_NR__Ya4a44aasv80YoI0W8veR9oUTk8cPgsNOETrIiuiwTXmwkd4PppGajgLZLc_bR0X6ZoNy5WUZOsGnSNSRPUiemOLIQaKZ1nbiZHz_y0-wYhj?key=YQr2p57ALaah0ntWBkYlFA" alt=""><figcaption></figcaption></figure>

**Примечание:** _также можно указать сетевую папку, куда будут сохраняться логи роботов._

Типичный путь к логам координатора выглядит так:

C:\ProgramData\Sherpa RPA Coordinator\Log\SherpaRPAService.log

Типичный путь к логам робота:

C:\Users\\<имя пользователя>\AppData\Roaming\Sherpa RPA Data\Log

Далее в каждом из вариантов находите папки с текущей датой, где хранятся текстовые файлы с временем запуска робота.
