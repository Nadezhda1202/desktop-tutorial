# Действия с Роботами в Sherpa Assistant

## Добавление Робота

Для добавления Робота нажмите в главном интерфейсе Sherpa Assistant на кнопку ![](<../../../../.gitbook/assets/изображение (260).png>) и выберите файл нужного программного робота в формате .robot.

> Если выбранный файл робота находится не в папке MyRobots, то он будет автоматически скопирован в папку MyRobots в созданную подпапку с именем файла. Например, `"MyRobots\Имя файла\Имя файла.robot"`.

## Добавление удаленного Робота

Для добавления удаленного Робота нажмите в главном интерфейсе Sherpa Assistant на кнопку ![](<../../../../.gitbook/assets/изображение (261).png>) и выберите файл нужного программного робота в формате .robot.&#x20;

> Удаленный робот – это файл формата .robot, который лежит в папке, отличной от MyRobots. В случае добавления удаленного робота, файл не будет скопирован в папку MyRobots, а будет запускаться из того места, откуда был добавлен.

## Удаление Робота

Для удаления Робота выберите его в списке в главном интерфейсе Sherpa Assistant и нажмите на кнопку ![](<../../../../.gitbook/assets/изображение (263).png>). Подтвердите действие, нажатием на кнопку "Да" в окне "Роботы - Sherpa Assistant".

<figure><img src="../../../../.gitbook/assets/изображение (262).png" alt=""><figcaption></figcaption></figure>

Файл с расширением .robot, находящийся в рабочей папке MyRobots, при удалении робота в окне Sherpa Assistant остаётся неизменным.

## Настройка

Для авторизации под конкретным Пользователем Оркестратора, с последующей подгрузкой из Оркестратора Папок и Процессов, доступных именно этому Пользователю:

* выберите в главном интерфейсе Sherpa Assistant,
* нажмите на кнопку ![](<../../../../.gitbook/assets/изображение (265).png>),
* введите логин и пароль в окне "Настройки".

<figure><img src="../../../../.gitbook/assets/изображение (264).png" alt=""><figcaption></figcaption></figure>

## Автоматический последовательный запуск Роботов при запуске программы

Для того, чтобы осуществить автоматический последовательный запуск Роботов при запуске программы, необходимо, чтобы Sherpa Assistant запускался одновременно с загрузкой компьютера. Для этого в настройках, на первой вкладке, следует активировать опцию "Автозагрузка программы с Windows".

Порядок запуска нескольких последовательных Процессов в автозагрузке определен их сортировкой по имени. Поэтому для организации последовательного запуска рекомендуется называть Процессы для запуска Роботов с индексами, например:

* “1 робот“;
* “2 робот“.

Процессы будут выполняться в выбранном порядке, обеспечивая удобное и гибкое управление:

<figure><img src="https://docs.sherparpa.ru/~gitbook/image?url=https%3A%2F%2Flh7-rt.googleusercontent.com%2Fdocsz%2FAD_4nXfu3ND0ZvL532Pnxzzg3ZsNGzpa0CqLY1IUrKWbUylEZX-J9TzLXDJDfjBHA7ts3NiLHSrsNgcrkusEXwbNEAzEcKjaXvOh6EEqmvHxDJWZQ8ZMEgIY7ROK_Fe7VLZ5p3njfm0Bug%3Fkey%3DI5kD5wbBMNC3jCGTCEOQ8Q&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=4f5f27e4&#x26;sv=2" alt=""><figcaption></figcaption></figure>

Процессы для запуска Роботов можно переименовывать непосредственно в папках:

`c:\Users\User\AppData\Roaming\Sherpa RPA Data\MyRobots\`

> Для корректной работы автозагрузки необходимо в окне “Настройки - Sherpa Assistant” перейти во вкладку “Основное” и заполнить чекбокс “Автозагрузка программы из Windows”:

<figure><img src="https://docs.sherparpa.ru/~gitbook/image?url=https%3A%2F%2Flh7-rt.googleusercontent.com%2Fdocsz%2FAD_4nXfuAN9XbaEuCtH4zgSOy5Eg3GSnaAQPCdWzZ0GTEFYlNUcTUDqTKCW8b54-BLb3u1ATEc3RJcA8w220w2a8sEqrAGBB1Ti3m7FnaB0skqTRTLU4BcpUOj4IwtOb0rNpdN55rCw9ww%3Fkey%3DI5kD5wbBMNC3jCGTCEOQ8Q&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=a34121c1&#x26;sv=2" alt=""><figcaption></figcaption></figure>

После этого достаточно установить галочки в чекбоксы для автозапуска в нужном порядке, и Процессы будут выполняться друг за другом.

Также Процессы в данном окне можно запускать нажатием на кнопку ![](https://docs.sherparpa.ru/~gitbook/image?url=https%3A%2F%2Flh7-rt.googleusercontent.com%2Fdocsz%2FAD_4nXcM38SXGAurCWLyayvNyLlhlYjnbnY7Tb3AhUDXeA4gCCWuwONdrkDAH8oWFJLufltjqxkaZiy45c6uu3r8Yh9irOJfm02kFSwGHcTDCBRKj0sXgcFr8ZWP9WneTgbwSgBBZ7BEyw%3Fkey%3DI5kD5wbBMNC3jCGTCEOQ8Q\&width=300\&dpr=4\&quality=100\&sign=6e7de6b9\&sv=2).
