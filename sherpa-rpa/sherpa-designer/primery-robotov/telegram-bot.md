# Telegram Bot

Рассмотрим пример робота, который демонстрирует работу с Телеграм-ботом:

* получение сообщений от бота;
* ответ на сообщение;
* сохранение присланного файла в папку с проектом.&#x20;

**Примечание:** _создание Телеграм-бота  можно посмотреть в видео инструкции к блоку "Бот. Создать подключение"._

**Важно!** _Данные о подключении к Телеграм можно найти по пути: c:\Users\User\AppData\Roaming\Sherpa RPA Data\Telegram\\_

Видео-инструкция по созданию бота в Telegram: [http://sherparpa.ru/videos/ru/telegrambot.mp4](http://sherparpa.ru/videos/ru/telegrambot.mp4)

**Основная диаграмма проекта** выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcrtMI_AbXcmjfypr9h3DEkgqri42Ac_wkH3uEjxyEBRQe2HX0r74fBZlQtXsuE3vTrm5SqJvgJKS1rPwKuhiEqKnimQ48VdG8I4pSoIoP2LfA9s0c_Eco989r_tacSvNPNsrx7Iw?key=30LNZh35UC4eIWihhlpMcBJd" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Бот. Создать подключение”** позволяет создать подключения для бота Telegram. Для данного блока указаны следующие свойства:

* Токен бота (токен бота, который можно получить от BotFather в клиенте Telegram);
* Время ожидания (время ожидания ответа от сервера Telegram в секундах).

На выходе получено “Подключение” – переменная с объектом текущего подключения к Телеграм. В остальных блоках необходимо указывать именно эту переменную.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcfO_b95eQxdP5FC7N-w7MOMPuLFZirldO1epYLQMLsDIkKxLy9zK37q4sk2nAasMfF_QaQxHgMW2Py4LRmOD6x5ZTOE85656ZgoIu8GpQ8MaFqm5S-jvz4TA25DDmlaKxi85C0Qg?key=30LNZh35UC4eIWihhlpMcBJd" alt=""><figcaption></figcaption></figure>

3. **Блок “Бот. Получить сообщение”** позволяет получить сообщение или обратный вызов из очереди. Если сообщений в очереди нет, то генерируется ошибка. Для данного блока указано свойство “Подключение” (объект подключения к боту. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Бот. Создать подключение" из группы Telegram, который ранее использовался для подключения к боту Telegram).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdpg9y0oRd4iaFqVd9YvOWexDnP4KGuINrM-DWMAQc9kxUORPOANKz33USwPnRWCKqAfmCvaigsdamHd7ieBIcqNIBGBNSyZqP68LXQiw8icyYekVbjzGDJg4RUipylIiXX9qqzgw?key=30LNZh35UC4eIWihhlpMcBJd" alt=""><figcaption></figcaption></figure>

4. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $TMessage.Text=="stop". Т.е., пользователь написал Телеграм-боту "stop".

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfG89LvD9netT91TdgCzoijpUe2qrHzJN4T45KMY9jGY16x7yxTA7ecaVHRZCqRBVFJDkgWrkBge8H5dtfrzaXv4MlbPkWDidFG9dTUL0zt4McO0vXUo7ejKlQclrWeDWtnK_X0HQ?key=30LNZh35UC4eIWihhlpMcBJd" alt=""><figcaption></figcaption></figure>

5. **Блок “Бот. Закрыть подключение”** позволяет закрыть подключение к боту Telegram. Для данного блока указано свойство “Подключение” (объект подключения к боту. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Бот. Создать подключение" из группы Telegram, который ранее использовался для подключения к боту Telegram).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcSbe-LNHt0JJrgvu3Llfz1rOJ77tJxOPnwtE7TQXxVycGxLeXcrN720tIQnWRUbyzSPeAsgDEZUgBsbWQ7YW6dfG3JqEr0JqkTWtj9PCBRUtpJiD917_6enV2Xpi6DGkFAmFLrcA?key=30LNZh35UC4eIWihhlpMcBJd" alt=""><figcaption></figcaption></figure>

6. **Блок “Пауза”** приостанавливает выполнение работы сценария на заданное время. Для данного блока указаны следующие свойства:

* Единица измерения (единица измерения, в которой задана длительность паузы);&#x20;
* Длительность (значение промежутка времени в заданных единицах измерения);
* Запустить сразу (установленный флаг включает применение задержки сразу при первом проходе этого блока с момента запуска сценария робота).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdt4ggzf2NyZ45dBTSIeFskhtQsielfmlRGlIvpeme07d7g__9BPmSIL3ipbczNIAF1SCcDoAZ1nFIFwURUIwRkaT8Bl5O6SU025luiWICGzYPXrXEN4a3vW9XS7qzs5xCyMD-NfQ?key=30LNZh35UC4eIWihhlpMcBJd" alt=""><figcaption></figcaption></figure>

7. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае, в качестве условия установлено: $TMessage.IsFile. Т.е., проверяет, есть ли в сообщении приложенный файл.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf55H5o9boIuS6tlc5bq_hbKELOggDBdCMGfdgPNNQ5LhHyghnaHumeWXG591dIgnzuGW1CqDf5p4tT2gRjQ6XlPMeN6ccFvx8QxQkrmHktcWn1-iA9B-hbYbObIMa4DyhY4kAb?key=30LNZh35UC4eIWihhlpMcBJd" alt=""><figcaption></figcaption></figure>

8. **Блок “Создать файл”** позволяет создать новый текстовый файл. Для данного блока указано свойство “Путь” (путь к папке, в которой располагается необходимый файл. Если данное свойство оставить пустым, то будет взята папка, в которой располагается проект. Если указать папку, то произойдет склеивание с именем файла).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdP5CmVRgbZaGxjj52i9X_rqq7xTkvywKd3bH1WnhqUODVZ16Ea5bzUlQyjBIncvO-rXYjLcT_YfXPW57hcZFGuKZdCLyhaOTASMDhg2zbQeGKRmrJ6Xroh86_fRCNCQztMC1Ogjw?key=30LNZh35UC4eIWihhlpMcBJd" alt=""><figcaption></figcaption></figure>

9. **Блок “Бот. Скачать файл”** позволяет скачать файл из сообщения. Для данного блока указаны следующие свойства:

* Подключение (объект подключения к боту. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Бот. Создать подключение" из группы Telegram, который ранее использовался для подключения к боту Telegram);
* Сообщение (объект сообщения. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Сообщение", блока "Бот. Получить сообщение" из группы Telegram);
* Имя файла (имя и путь файла, в который будет сохранен файл из сообщения. Голосовые сообщения должны скачиваться в формат .ogg).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd2HeJ40DAzTnyL-BhnbpGjM4v64Lh95hw_HofY7X0vmMedcIOiqaUDbyzPag9IXwP6kGndooUPTDNOTjJuc4eOorMCZRyei_wFIxYuFN6zKsOWipAZIRSvPEILCjABazrbS_Z99g?key=30LNZh35UC4eIWihhlpMcBJd" alt=""><figcaption></figcaption></figure>

10. **Блок “Окно для ввода текста”** позволяет показать модальное диалоговое окно, предназначенное для получения информации от пользователя. Для данного блока указаны следующие свойства:

* Заголовок (текст, который будет отображен в заголовке диалогового окна. В данном случае: “Telegram”);
* Сообщение (текст, который будет отображен  внутри диалогового окна. В данном случае он задан переменной $TMessage.Text).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcfdOU-RXo77_qIaIW8V8L3mzsis2Nx3kH-weV3yf1uJV4utpNsyHrJXJCYf_vZKDMRRRTUJ5-rfs4F-hLA5cGjBWyGnIwZ7e_1M0vSkMbtB2tVZ1Nqia84OC69ULzBR5hWj5Hg9w?key=30LNZh35UC4eIWihhlpMcBJd" alt=""><figcaption></figcaption></figure>

11. **Блок “Бот. Отправить сообщение”** позволяет отправить текстовое сообщение в чат. Для данного блока указаны следующие свойства:

* Подключение (объект подключения к боту. Название переменной в данном свойстве должно совпадать с названием переменной в свойстве "Подключение", блока "Бот. Создать подключение" из группы Telegram, который ранее использовался для подключения к боту Telegram);
* ID чата (Id чата. Данное значение получено из блока "Бот. Получить сообщение" в свойстве "Сообщение");
* ID сообщения (ID сообщения, на которое требуется ответить. Данное значение можно получить из блока "Бот. Получить сообщение" в свойстве "Сообщение");
* Текст (текст сообщения).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdkQp9_WTCRrDV8fQuTSGBka9BfnNY2EdfCzU9NQGAQAvqXruZTyye-TEGp1w8NQr-aq-1f0QW0YWkD5wH9D9Sj9Tc9pg4drCAMIZ8YwExtxWLVLz5DxMAnY8FF5sapG1x1XpLD?key=30LNZh35UC4eIWihhlpMcBJd" alt=""><figcaption></figcaption></figure>

12. **Блок “Пауза”** приостанавливает выполнение работы сценария на заданное время. Для данного блока указаны следующие свойства:

* Единица измерения (единица измерения, в которой задана длительность паузы);&#x20;
* Длительность (значение промежутка времени в заданных единицах измерения);
* Запустить сразу (установленный флаг включает применение задержки сразу при первом проходе этого блока с момента запуска сценария робота).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdDVVa1MB9t37-KMFfEUcRUDXKIycu-MA5v8N0YJEmJ1xqBhGVTAIPFenesGSSpTS1cS1f0RrzAVM2WkZ0fHvLwotVpz4C5NWTlKveKHu6hIaMyGPtLlee9Ofna7_bEpbN9b1AlNw?key=30LNZh35UC4eIWihhlpMcBJd" alt=""><figcaption></figcaption></figure>

13. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
