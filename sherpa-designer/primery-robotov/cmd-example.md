# Cmd Example

Рассмотрим пример робота, который демонстрирует принцип работы с командной строкой. В данном случае, команды загружаются из xlsx-файла и выполняются случайным образом.

Проект робота состоит из одной диаграммы и xlsx-файла. Таким образом, если описывать пошагово, то данный робот работает следующим образом:

1. Загружает Таблицу Данных из xlsx-файла.
2. С помощью блока “Случайное число” выбирает строку таблицы.
3. Открывает окно с командной строкой.
4. Выполняет команду из выбранной ранее строки таблицы.
5. После выполнения команды закрывает окно с командной строкой.

Диаграмма проекта выглядит так (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdvsz8MZQ4CEr84Vf-zODTGgTUeJp5VhJYlp-eb9xtqL4ORfhTYpE1v3Vh-UUhpGEe4Ou0byrHN_qNdRtawS1IsYgqxHVOAp3xyOj8g2Tq0wgHL58JoYx8KaXhBtrL4mCwNm3rrMoiQwQWqqwEadxsif6o?key=6b-lfrni6g0pefzDtoJOiw" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Загрузить Таблицу Данных”** позволяет загрузить таблицу данных из xlsx-файла. Для данного блока указаны следующие свойства:

* Путь к файлу (путь к xlsx-файлу, из которого необходимо загрузить информацию в Таблицу Данных);
* Заголовок (при установленном флаге первая строка таблицы будет использована в качестве заголовка);
* Лист (ID или название листа, данные которого необходимо сохранить в Таблицу Данных).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe7wDEcBVup9HCqs5hmq7Ebe8NgyBxaYkXuKNMvfrLM11NsFvxbJvNbKZySeuNB-fnWcxkKgDxnkEM-B3tEwCPLStY850pnV8eax9mahQNK0mFAHLAJO_nxrKGzOD6sXA3VO3cwQsvmNHVDqBCSibqFJIAZ?key=6b-lfrni6g0pefzDtoJOiw" alt=""><figcaption></figcaption></figure>

3. **Блок “Случайное число”** генерирует случайное число с заданными параметрами. Для данного блока указаны следующие свойства:

* Мин. значение (минимальное значение для случайного числа);&#x20;
* Макс. значение (максимальное значение для случайного числа);
* Шаг (шаг случайного числа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe7P4JTkyKqtp34defivCP2cJrR3rT8cVgQmyr7iXrZ2D-k4bAY88ZVH9GkWX0APpIuseTFJ88AANKVrNt0Un1FyUrE6LsTr0cTLeCR0r0CxbYoWHEV-1XqKKxsPrquQO7NqlxQhyYQSPxB8gg-jBTndW7u?key=6b-lfrni6g0pefzDtoJOiw" alt=""><figcaption></figcaption></figure>

4. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае в свойствах указано одно значение, которое необходимо присвоить конкретной переменной.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfaZipL3olPn7IQAZkgH6S_hPGof5BJPP_0eLwuiC3ag8StLjP3AEiXngD9Y2DrbVcr5_72Y5xXeyBStPtEJut1AVE8ARtSTdh1nzl7OJ2hvIlhyV7Jd129dKUYe0i5FING0s0aoRAX2C0gXOys6gsiw0YW?key=6b-lfrni6g0pefzDtoJOiw" alt=""><figcaption></figcaption></figure>

5. **Блок “Запустить приложение”** запускает указанное приложение с заданными параметрами. Для данного блока  в свойствах указан путь к приложению (название стандартного приложения).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdOJe4a3xRk-bDNqnyjtP4dGcAE_euXnS07OTqEwVLsXve7JhTs0hOR5wo_O6NlFycYCcMk5p69DfrXPBdcN5tlHTCYfu7P4ktQtUXyyArwtl95bsauRjhK8SRHERVJ2iYdvPVbPT--CrFVW7YxyvERsEoy?key=6b-lfrni6g0pefzDtoJOiw" alt=""><figcaption></figcaption></figure>

6. **Блок “Пауза”** приостанавливает выполнение работы сценария на заданное время. Для данного блока указаны следующие свойства:

* Единица измерения (единица измерения, в которой задана длительность паузы);
* Длительность (количество секунд, на которое будет приостановлена работа сценария).
* Запустить сразу (при установленном флаге задержка будет применена сразу при первом проходе этого блока с момента запуска сценария робота).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf679Q19xPtYgbL6MJ4vA-gROKnNUqS7JsYprX3EhWQn0K9WB1LsiQjOBQ9kpptiVdrlbnXRCDWcyiqgep83NBbRg1Oir2-nNJPgeO6SnX-LlesCcJnU-C2H-p6FpEuxfiCXhDo_nTO-WigaWoo9VrnypI?key=6b-lfrni6g0pefzDtoJOiw" alt=""><figcaption></figcaption></figure>

7. **Блок “Нажать клавиши”** эмулирует нажатие клавиш на клавиатуре. Для данного блока указаны следующие свойства:

* Клавиши (текст или клавиши, которые необходимо эмулировать);
* ID процесса (переменная, в которой хранится идентификатор прилжения);
* Интерактивно (при установленном флаге вставляются паузы между нажатиями клавиш);
* Время паузы (длительность паузы между нажатиями клавиш в миллисекундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdhNaN3RiT3TWvOHCqsq8-dqT8y8tlhDTguvEQP28RGen9ddgcGwaOFPqqdofB762_LapI45QasZAxukpnKrHxQbXU1FqAJ1lci2hoy1o5Kivb9TI6qsq-Cyj-klHJYjN1_XJ9QOwritgn_3hlaR6UzlEoc?key=6b-lfrni6g0pefzDtoJOiw" alt=""><figcaption></figcaption></figure>

8. **Блок “Пауза”** приостанавливает выполнение работы сценария на заданное время. Для данного блока указаны следующие свойства:

* Единица измерения (единица измерения, в которой задана длительность паузы);
* Длительность (количество секунд,на которое будет приостановлена работа сценария).
* Запустить сразу (при установленном флага задержка будет применена сразу при первом проходе этого блока с момента запуска сценария робота).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfiVmBpjRNKcE50HnsNr2A393tWtfv9jw8F6WbcUZROZQo_YyY9nSqlSOrvAmr3t5bhxAbAY-kjJ_UJKet56NE9j_ld4WstaTc604Etnl5R44jUtSqP-usqB5WcK7a4WS9Mi5hB3DuMc5KgsHCxFonYf9RL?key=6b-lfrni6g0pefzDtoJOiw" alt=""><figcaption></figcaption></figure>

9. **Блок “Закрыть приложение”** закрывает указанное приложение. Для данного блока указано свойство “ID процесса” (переменная, содержащая идентификатор процесса, который необходимо закрыть).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe7lxCnISUh50NckXWlWYwsfWQ0K4mtfR7bO83ZWiuDUn0HBVhlixpUQgSvZYpRYI166AagRCV2Aa0sOTbUmxJc1QCx7UFC4qbaAqKXg4qJrxG3yPVDLz4fT7hUIXAEvP4vwKKUityUVWgPrFKagA661Xg?key=6b-lfrni6g0pefzDtoJOiw" alt=""><figcaption></figcaption></figure>

10. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
11. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $.Т. е., данный блок записывает в лог робота сообщение об ошибке в работе.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXffXvYmUY961z1r6nY6jb-aMAi9aki6D3hnZcQNVJkjs6z_q288_bf-cVaNgyqJ-h8lqhPORsQyws99YMHVMDYbFJR5jOQi-zOlBI1vhpSrhcPA_JzvyANd2gfya3ZLjuvmz6RDm3cRMulxW1j9eLJ192Bk?key=6b-lfrni6g0pefzDtoJOiw" alt=""><figcaption></figcaption></figure>

12. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
