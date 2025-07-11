# Версия 141855

**Вышел новый релиз Sherpa Orchestrator: Версия 141855.**

1\. В Конструкторе Действий (Form Designer), на экране Действия (Actions), введен новый тип виджета — HTML/JavaScript, который дает возможность реализовывать произвольные элементы интерфейса с уникальным внешним видом и поведением. &#x20;

Например, если заполнить окно настройки элемента:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcvm5QdSjtBpqcchZlpLxGLgS_2jarTDU-AAkejTCMt-Q5_vxhboycyMpo0fa-z3WtsVQLe413x0hp-nwEmD4eTf_oEdAteXVFUqy-fxkUR8MK5FYJzBCuSyL2UDYdPw4iq776ChQ?key=O1W9738DYevyQCZnmilgrw" alt=""><figcaption></figcaption></figure>

То на экране Действия (Actions) появится следующее:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdoThFpBKmP1yJOnTGNf2AGEt3XJUkYrqCKzvw9F2r69dwPXV_1RQkqWun-L9kVr1bDu3d0iA_a67OmtiGKjS-2rgkEFVBc_AAnUwt2u2i0qbosdw57pUBvxx4ntFm0QTw2yyMFdA?key=O1W9738DYevyQCZnmilgrw" alt=""><figcaption></figcaption></figure>

Далее приведен пример с добавленными элементами управления (например, radio и select) и атрибутом name, чтобы выбирать между вариантами и реализацией обработки по выбранному значению:

```html
<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8" />
<title>Выбор варианта</title>
</head>
<body>

  <h2>Выберите вариант</h2>
  <!-- Радиокнопки с одинаковым атрибутом name -->
  <label>
    <input type="radio" name="variant" value="1" checked /> Вариант 1
  </label>
  <label>
    <input type="radio" name="variant" value="2" /> Вариант 2
  </label>

  <h3>Введите ваше имя</h3>
  <input type="text" id="userNameInput" placeholder="Ваше имя" />

  <button id="showGreeting">Показать приветствие</button>

  <div id="greetingArea" style="margin-top:20px; font-weight: bold;"></div>

  <script>
    // Варианты шаблонов
    const templates = {
      '1': '<p>Вариант 1: Привет, {{ user_name }}! Это первый вариант.</p>',
      '2': '<p>Вариант 2: Привет, {{ user_name }}! Это второй вариант.</p>'
    };

    document.getElementById('showGreeting').addEventListener('click', () => {
      // Получаем выбранный вариант по атрибуту name
      const selectedRadio = document.querySelector('input[name="variant"]:checked');
      const variant = selectedRadio ? selectedRadio.value : '1';

      // Получаем имя Пользователя
      const userName = document.getElementById('userNameInput').value.trim() || 'пользователь';

      // Выбираем шаблон по варианту
      const template = templates[variant];

      // Заменяем плейсхолдер
      const html = template.replace('{{ user_name }}', userName);

      // Вставляем результат
      document.getElementById('greetingArea').innerHTML = html;
    });
  </script>

</body>
</html>
```

При выполнении данного кода вы сможете переключать варианты вывода сообщения:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe3zSAWBIlHIWtBbAHZVb-HwVtQ-ule-cVHY2praRDrSu2C5-KVf7DmwnELjKjQFpVe35DWOURRsmvDFDUp_QSK5ivtvxqN8WP1S17cczLU5mAeChb9qGzRNUqqqYmzJM8e5cVSjQ?key=O1W9738DYevyQCZnmilgrw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd0O_YwRDbj7247yXqdol3FDiEMdvG7b1WGK0j8IQxh8sHJgICytb31afq3pd75psy10pijzN6_XRznQb0cb6nYktLMAU7tnPt5hszGlaZNXkgw3TtAulL2SSJDtqdnGk4N_xmXJQ?key=O1W9738DYevyQCZnmilgrw" alt=""><figcaption></figcaption></figure>

> Код, который вы напишете в данном поле, может изменять внешний вид интерфейса Оркестратора. Используйте данный функционал с осторожностью во избежание нежелательных эффектов.

Для указания или привязки свойства объекта в HTML используется синтаксис двойных фигурных скобок с пробелом: \{{ property \}}.Обязательное условие для всех элементов управления вводом (input, radio, checkbox, select), связанных с вложенными объектами — атрибут name, совпадающий с именем ключа.   &#x20;

\


2\. На экране Аудит (Audit) добавлен новый столбец “Object GUID”, отображающий GUID упоминаемого в записи объекта.&#x20;

\


![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcxZ9y04BufQ2Cp-PsYs1dSi9gajrmBjetYDgKPKq5CAkI4JJr9G4N8oVhSEclkHXNLJ7hIHFyJ2iVXQCXzjGC5IKWKiZGqL6nmq6tlPD9Kyb51NSjkqkMZQaxK3CuIFpZCTNXf?key=O1W9738DYevyQCZnmilgrw)

&#x20;  &#x20;

Кликом по данному полю в нужной строке таблицы Аудит (Audit) можно перейти к экрану упоминаемого объекта, на котором он будет выделен:

\


![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXf936LTqhmy8t4EYIgVPJbDRnrw-7t3JqE_fIzwQPpuR48GDrcB4Etn_Sws4Moqj8ywvW6hmyTWJV8MsqSjnuC46XUAZOtvwUtBZWGiEdfeyD5kZf4veGpq3dEuALK0qytm0i0plA?key=O1W9738DYevyQCZnmilgrw)

\


![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeKZkJkwvs0mgh5o_s70oJeYoCSX9PigmUzUsGgR6tU4U_sMSmioo2aGXal4fdIAcW8k1n2msKRzf71TCJRsMRaXYVlsfodCNPLB3S9CK4cPajIcJboCbWq2_Quony8ApGyr6yzRw?key=O1W9738DYevyQCZnmilgrw)

\


3\. Кроме того, теперь все действия, осуществленные по API, также логируются в Аудит.

&#x20;      &#x20;

4\. Во всех таблицах на экранах Оркестратора изменен формат отображения времени на \<dd-mm-yyyy 00:00:00>, что повышает читаемость информации и делает работу с данными более простой и понятной для Пользователя.

\


Например, ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXelzlLFZiGkvSppStVmY3Ge9hvasMRxNyGnFtxXnC_YA8HAD5u7yvDntuCz8hN94FzUBgBss3NgvBa5x1XRvZoI8hYilAZ7tWCSpcYE0TFyzQ59rwB45lRfzCNPRc-db5uqHARP?key=O1W9738DYevyQCZnmilgrw).

\


5\. На экране Триггеры (Triggers), при создании и редактировании Триггеров, добавлена настройка "Максимальное количество запусков в месяц" (Max monthly runs), позволяющая ограничить число срабатываний Триггера в рамках одного месяца. Например, если в поле установить 1, то при применении опции расписания "Каждый N-ный день месяца", Триггер сработает один раз и только в указанный N-ный день.

\


![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXetKKA2tzpcuIRImO_gmYoQYRhBkq6gA5ekNgTNbyaRS53SCp7UMEt7oD8OqKU1FXJJOQ-0UKtxGSywQCaHQnoYPo7KfdUy869o5bbxgq6gnYY2Mz_WgAwQJOP5Ojvoyd8GJe05-A?key=O1W9738DYevyQCZnmilgrw)

&#x20;  &#x20;

6\. Добавлено опциональное логирование истории статусов Роботов. Для этого в конфиге (backend/config/config.ini) необходимо добавить параметр: robot\_status\_logging=1.&#x20;

Таблица Логов доступна по адресу: ваш-адрес-оркестратора/main/robot-status-logs.

\


![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXd5jbe3hKF64LWh7aBq7S1U4fuxxsxLs2JZWaLF78aFG2QdtOmsCQ8Og1a0xvB8Zse62YoQBYPq2qH_YnBHqOo5IWiwm8hhCKviI1gZsuBzivcpaRZG0UuI3HNaLcH1qH6KHkGNig?key=O1W9738DYevyQCZnmilgrw)

&#x20;  &#x20;

7\. На экране Лицензии (Licenses) в настройках лицензий опции "Запретить исполнение кода C#, VB, Python и PowerShell в сценариях" (Deny C#, VB, Python and PowerShell code execution within process) и "Принудительно логировать все блоки" (Force logging in all blocks) теперь доступны также для режима Unattended.

\


![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXex9zs7aAsrM2cBKQZkftjUtNVjWsSRI6EKll23m7KVLeDOFA4ZtMGdtHsFj7RnzG22gj5A_gy2SBeB1izF6mOgGEXOoL8c-WKmKLpjsIW62k_OnDEQMYF1ZxxueXVVbuxV940uBA?key=O1W9738DYevyQCZnmilgrw)

&#x20;  &#x20;

8\. На экране Работы (Jobs) в таблицу добавлена колонка "Последнее сообщение" (Last message), в которой отображается последнее сообщение Робота, выполняющего данную Работу.

\


![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeD7mFq_k1c4ZbBGt2ur1Gtb-IqZBVWRvaUetE6O-7MR1EniRDktsRtHitJ-buvVfxLg3xSELI7ajvqS2ZBZhNGUKak4r20ToRoVQuK-ccfSVKgcWGvIzsIjYVaQOPO0ZNevDn4DA?key=O1W9738DYevyQCZnmilgrw)

&#x20;  &#x20;

9\. Внесены множественные доработки, повышающие безопасность системы.
