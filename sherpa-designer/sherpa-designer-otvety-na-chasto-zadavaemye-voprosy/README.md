# Sherpa Designer: ответы на часто задаваемые вопросы

## Какова причина того, что блок "Проверить наличие элемента" в проекте находит кнопку "Сохранить", даже если она отсутствует в SAP?

**Вопрос:** В проекте Робот проверяет наличие кнопки "Сохранить" в SAP. Если не находит - то кликает по элементу "Изменить".

К сожалению, блок "Проверить наличие элемента" находит элемент “Сохранить” даже если его нет.

<div data-full-width="true"><figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfsXmokLMq8enrW6UPB3Pykrge_d7SB18zMNwjAJ_MQEZZUdOIm4Zsj7ODQpQ-C9D6NVUW6e0X6HOqCjv-WwW9POUGvW-LREcCGvM1egFQq5TikWqr4XkFeH_mF2YE6BKI6FraOFXW_LhRJRAvJrAkdBeG3?key=awdOn0AMGpq5YZ7h7uKe4g" alt=""><figcaption></figcaption></figure></div>

**Ответ:**&#x20;

Скорее всего, этот элемент находится в кеше COM-компонента SAP. Попробуйте перед проверкой переподключиться к SAP. Например, с помощью блоков "Присоединиться" или "Выбор окна".



## Есть ли возможность автоматизации 1С с помощью горячих клавиш?

**Вопрос:** Есть ли возможность автоматизации 1С с помощью горячих клавиш?

**Ответ:**&#x20;

Да, есть. Вы можете воспользоваться шпаргалкой с официального сайта 1C: [https://its.1c.ru/db/v8std/content/430/hdoc](https://its.1c.ru/db/v8std/content/430/hdoc)

Или подсказкой для назначения горячих клавиш по ссылке:

[https://1s-portal.ru/index.php/stati/configuration/3-form/76-knopke-naznachit-gorjachuju-klavishu.html#:\~:text=%D0%9D%D0%B0%D0%B7%D0%BD%D0%B0%D1%87%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%BA%D0%BB%D0%B0%D0%B2%D0%B8%D1%88%20%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%20%D0%B4%D0%B5%D0%BB%D0%B0%D1%82%D1%8C%20%D0%BA%D0%B0%D0%BA,%D0%BA%D0%BB%D0%B0%D0%B2%D0%B8%D1%88%D0%B8%2C%20%D1%81%D1%80%D0%B0%D0%B7%D1%83%20%D0%B6%D0%B5%20%D1%83%D0%B2%D0%B8%D0%B4%D0%B5%D1%82%D0%B5%20%D1%80%D0%B5%D0%B7%D1%83%D0%BB%D1%8C%D1%82%D0%B0%D1%82.](https://1s-portal.ru/index.php/stati/configuration/3-form/76-knopke-naznachit-gorjachuju-klavishu.html)



## Почему логика блока выполнить PowerShell работает иначе в сравнении с встроенным PowerShell?

**Вопрос:** почему логика блока выполнить PowerShell работает иначе в сравнении с встроенным PowerShell? И как его в таком случае использовать корректно. Пытаюсь использовать функцию – корректный вывод должен быть False. При вызове этой функции через PowerShell блок возвращается True (во втором блоке).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf02OmiACVUlAaFFR03L8oiKl8KP42Wl55OKhgHfBlZfzXifgedKRbkb4rADtcxEQBsvfXnGQqn9ykcejM6h4hBm056RvnVDiO-8vmGK9UPf023EF4ZOVMzqhGL5JAkekT7aU9NdbDu_AhtwczprCJ19iZN?key=awdOn0AMGpq5YZ7h7uKe4g" alt=""><figcaption></figcaption></figure>

Функция объявляется здесь:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeAVGlSO1vEun5adPRuC0VhVOXRaJkNLD36ha9-stL5aWPhbAZmGzHDGMHuXmC2lwWDGYkQhVJptlWkK1ArC9zepvp_W1tCEm7I2goU2vqVcqCc6Eeur_oPTU317w_8_pjoEMz3PEB-QEGJh7pW9cIMlEXR?key=awdOn0AMGpq5YZ7h7uKe4g" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeg5J-CFepwYo652piixmB_xEwdWHkMeCJMTJy-minqtVoiT-qrnd9L-IO-PHYiJdWINzzZm4jCNLWCvpbKEAkqbRVLcY788whlvysi2eadiB7mTH9eGSoWxjZ0z06qRsE9EnlfD6fDuL9G72dMDNmmKjg?key=awdOn0AMGpq5YZ7h7uKe4g" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXemoxj-TwvLKdQXWAaMPre0zILVpBQlpFwkuTZB2x7XB256_nqitnetTz0cJ6KjV3IViNRck3cxYvpFlN5xaQV4iTBl9GTm0exdyxLQjrS5Qu-PmFQkpSzAJwW7ErGiqBvizjuruNKQqSOXA70LIct99e8c?key=awdOn0AMGpq5YZ7h7uKe4g" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfcPZDMzRNFP8ExYmbufXIdesXxiFiyPci4hzA0qTr2hZapHM4NPl5RdUq2x2-bdbFhPYnRK8DlH74UNbWZZOe_HYhw4u146TliyJ1mRsQQtG2QfFqHkXILCsZsARnGqe0kOcLOZxe2PwXO3H9640v-MuIR?key=awdOn0AMGpq5YZ7h7uKe4g" alt=""><figcaption></figcaption></figure>

**Ответ:**&#x20;

Используйте для таких целей свои блоки. Важно понимать, что все, что Вы пишите выполняется внутри функции, так как каждый блок - это функция. Как итог все, что Вы присвоите в этой функции будет ее локальными переменными. Если Вы используете свой код, то должны отключить обработку переменных. Сейчас все переменные, что Вы написали преобразуются к локальным переменным скрипта, а именно этого класса диаграммы.



## Не работает блок “Выполнение кода Python”

**Вопрос:** что делать, если возникла проблема при использовании блока “Выполнение кода Python”?

**Ответ:**&#x20;

Порядок действий следующий:

1\) Закройте Дизайнер.

2\) Удалите из папки проекта папку Library.

3\) Скачайте и обновите Дизайнер.

4\) Убедитесь ,что у Вас стоит версия питона х64.&#x20;

5\) Проверьте, чтобы версия питона была не выше 3.12.



## Ошибка “Селектор не найден”

**Вопрос:** при автоматизации программы есть задача: ввести текст в поле фильтра. Я использую блок “Нажать клавиши”, селектор определяет текстовое поле и подсвечивает его, но при отладке робота возникает ошибка “Селектор не найден”. Подскажите пожалуйста, что можно сделать в таком случае?

**Ответ:**&#x20;

Скорее всего, это связано с тем, что нажимая кнопку “Отладка”, Вы делаете активным окно Дизайнера, а кликом – обратно приложение. Попробуйте сначала найти ID нужно процесса и прописать его в блок ввода текста, тогда можно будет не кликать на поле фильтра. Также возможно сам клик и начало редактирования в элементе меняет дерево селектора  этого элемента. Например, может появляться лишняя панель или даже поле редактирования, которого раньше не было (или Вы его видели в интерфейсе, но технически это не было поле редактирования, пока на него не кликнуть). Соответственно, селекторы у "уже кликнутого" и "ещё не кликнутого" элемента разные. Попробуйте записывать селектор пассивного элемента, в который не кликали ещё и на котором не стоит фокус ввода.



## В чем может быть причина ошибки при извлечении диапазона из таблицы, если там используется переменная, равная 1?

**Вопрос:** необходимо обрезать таблицу (извлечь диапазон), но если в поле столбец число=1 – работает. Если там переменная=1 – выдает ошибку. В чем может быть дело? Переменная берётся из активности "проверить существование значения". Дополнительное приведение  “\_tonumber” не помогает.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdh-5p6kiScMD9xNzDh4wupj6AnPyMju727rrJNTqFhaFj_V8AuwJvCgm13XxLv_qdb1eIgTWcxQN_yrydW7pw0XKJyLdMGygbLxLfxO_8kh5bDTUYQRN0yzgfVy9JghrnBZVRclQavBGXYVppySQq17tA?key=awdOn0AMGpq5YZ7h7uKe4g" alt=""><figcaption></figcaption></figure>

**Ответ:**&#x20;

В данном случае, переменная имеет тип double. При указании индексатора колонки можно указать или строку, или число int32. Если указывается переменная с типом double, то Framework пытается ее привести к нужному типу. Так как у нас могут быть только два типа, то он выбирает наиболее подходящий без потери данных, а это строка (double => string). В итоге Framework пытается индексировать колонку с "1", а не по числу. Когда Вы принудительно приводите к типу \[int],  то у Framework отпадают все неоднозначности. Поэтому следует написать \[int]$DocCol, т.е. привести значение к числу int32.\


## Можно ли в Sherpa RPA выполнить полноценный скрипт, а не скрипт PowerShell одной строкой?

**Вопрос:** можно ли в Sherpa RPA выполнить полноценный скрипт, а не скрипт PowerShell одной строкой?

**Ответ:**&#x20;

Да, можно, для этого необходимо использовать блок “Выполнить выражение PowerShell”, отключить в нем обработку переменных, используя константы #StopRefactoring и #StartRefactoring следующим образом:

&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcrCCm24K0fCosN0yBpqYn02Nk8RKdtnIwRMsRT5JSK3QaHPodpQ24eU6GYlBu6xUVoO74Zqk7WZrZLIK5GT1tpFJJ7A0gAEBTEaCSfac5lZD0CAdugY1I4TRpIsO1-bWN85IEulAqkRWoCo2eAHmT9wT-G?key=awdOn0AMGpq5YZ7h7uKe4g" alt=""><figcaption></figcaption></figure>

Вставьте код внутри них, но потом для ввода или вывода значений переменных уже за пределами этих констант необходимо присваивать локальные переменные переменным сценария.



## **Сбой кодировки символов**

**Вопрос:** что делать, если возникла проблема кодировки символов? При кодировке на компьютере кодировка Windows1251 и все ОК, а на сервере в этом же файле в этой же кодировке - сбой.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXclqsM9TBi4d4PU4p-5ibEJcQfwvyHkbS0Al13pPo4W4uoFXNOvSELbD38o0i6433G-YIK3VTJ59ITWiz9_zYXJC_R_tDkzSJLhOthJIT3txiHZUYXRepLVfQGKgedUpzxASqAv9Vw_fv-pUaViXvPPFwHM?key=awdOn0AMGpq5YZ7h7uKe4g" alt=""><figcaption></figcaption></figure>

**Ответ:**&#x20;

Сбой кодировки символов может быть связан с кодировкой для русских версий Microsoft Windows. В случае возникновения такой проблемы попробуйте сделать следующее:

Зайдите в настройки региона на Вашем компьютере (Параметры => Время и язык => Регион => Дополнительные параметры => Региональные стандарты => Дополнительно => Экран приветствия и учетные записи новых пользователей).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcphWjUcbiYjYVlgCfrS4Q8RcbqLPa-y9-shTQXocsozzMA36O5tefWP354ThPLA8AVT3ML0WseSprMVGL_5ndNYvlNhr9UoqY1LEvPfus5lK-_29XRUZn6hb_z2pI8ttRLdijfhyuNPL684KfPn3oFwXdy?key=awdOn0AMGpq5YZ7h7uKe4g" alt=""><figcaption></figcaption></figure>

В открывшемся окне установите флаги “Экран приветствия и системные учетные записи” и “Новые учетные записи пользователей”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe4F67Sm9GfdNh8NNf87-RRA1G3OGrdFDKxC-bynJkZXgRys1MP1Kct0vDj05EWLHOkcMqjFn796s36Hdml89eLiso9C6JH6sskt9c4vyz4VSYjPd9o8r703kObSlIk6og02jAKiVv3tG4H4m3RZb9KUVSr?key=awdOn0AMGpq5YZ7h7uKe4g" alt=""><figcaption></figcaption></figure>

После этого язык интерфейса для экрана приветствия и новых учетных записей пользователей изменится на “Русский” и проблема сбоя кодировки решится.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdzAT2-z8vdM9xrBkKrYfMbrCBjtVrdFyzyjnS4f9C-Jl0SV_uAA5vQVqM2Rq6JSUYSwtRf9OFn5rrgWW8UlPz8G3URZ5U7lrOt0LC3Bqb6V-N0C-adXbvp3hooxa-FVv3iMTrLaArJ0wS5VxtB3zunypQ?key=awdOn0AMGpq5YZ7h7uKe4g" alt=""><figcaption></figcaption></figure>
