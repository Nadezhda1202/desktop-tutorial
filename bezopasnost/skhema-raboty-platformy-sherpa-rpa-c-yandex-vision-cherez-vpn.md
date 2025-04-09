# Схема работы платформы Sherpa RPA c Yandex Vision через VPN

<figure><img src="../.gitbook/assets/2025-04-09_14-38-24.png" alt=""><figcaption></figcaption></figure>

В хорошем качестве можно скачать [здесь](https://drive.google.com/file/d/19PGkPUQluOCZn-tv7v3XE-bbUU7k1ihj/view?usp=drive_link).

Описание обмена данными между инфраструктурой Заказчика и сервисом Yandex Vision: RPA робот отправляет преобразованные изображения base64 в Yandex Vision в зашифрованном виде по протоколу https.

Обработанные данные возвращаются RPA роботу в формате JSON по протоколу https.

Далее RPA Робот вносит обработанные данные в целевую систему заказчика.
