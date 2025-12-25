# Calc Example

Рассмотрим пример робота, который демонстрирует использование индексов в селекторе для случайных вычислений в калькуляторе. Данный робот генерирует случайное число, по кнопке с которым он кликнет в интерфейсе калькулятора.

Проект робота состоит из одной диаграммы, она выглядит следующим образом (для удобства блоки диаграммы пронумерованы):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfiTHXDaz-CrPKL5piGUPI2SzvJZACtLFosuUgBcTZmXjQlE_MIFdjk92PGOm-LH9kdd7lfoo9WRs-mpkgiulFghA15vPoOlp56OdBfFl0juBeUK5gGiCio1T_imrckKYF9zMkm41HOYNIS74hMyHdfr_I?key=0IUVWPWjCJo2wp2B7nwtag" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc_2Oyy_j5WHN576XJCV9KWKpYYoNLmJ_sCs7ag7OpeKGGEVfM4sSOzyBHh4FRB-ih8jWUk5yzjwHiy9P6Ws7whHSo7SFFBgyGPGhf2WokBeXQdiwAjhlHP3FyYbhoqkcZ_m9lJ_XGUhW2v5wv7ITZKLtr-?key=0IUVWPWjCJo2wp2B7nwtag" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Запустить приложение”** запускает указанное приложение с заданными параметрами. Для данного блока указаны следующие свойства:

* Путь к приложению (путь к запускаемому приложению);
* Ожидание запуска (установленный флаг приостанавливает работу сценария пока заданное приложение не запустится полностью);
* Селектор (позволяет интерактивно выбрать приложение, которое будет запускаться с помощью селектора).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd6KTcLlSHgdkP02UoW-iX3vYu6zk1XbtBaTra4hr2S30SpsvEwQZNaSdTFpbkffMYwWoi7kTiu9ZQFuR7ENNoXQ-GW5RNP0Vl1YptUOBVB2XW8baLyFULeqb-SaoL8yWGYOIet8rXSLm_bnGHkbRvYHNAj?key=0IUVWPWjCJo2wp2B7nwtag" alt=""><figcaption></figcaption></figure>

3. **Блок “Пауза”** приостанавливает выполнение работы сценария на заданное время. Для данного блока указаны следующие свойства:

* Единица измерения (единица измерения, в которой задана длительность паузы);
* Длительность (количество секунд, на которое будет приостановлена работа сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc5n-J7tyZ8Nh-tzqLd_B6npnjieZeQyog_9YF8nO9Yd4wmn6zTzH_3nbFv0-B7puflSs-WTOQ2PPJ2qjkEnZS2kFvje6GofmVjxg6nXpLuEYEv4mgMt3-12zurtgU0kKQ3sJz5IaRmQC9yNaBROdDpjL9E?key=0IUVWPWjCJo2wp2B7nwtag" alt=""><figcaption></figcaption></figure>

4. **Блок “Случайное число”** генерирует случайное число с заданными параметрами. Для данного блока указаны следующие свойства:

* Мин.значение (минимальное значение для случайного числа);&#x20;
* Макс. значение (максимальное значение для случайного числа);
* Шаг (шаг случайного числа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdvTtuU4RRAWFqjmzRztrAB6iNC4VGMbUZOZ2BKt3asm3pURa0m5a5blENAylayJzTkYSboODhc4QKrd_IkUOFKc3CBPSKPkEFhrQN1RMMjUflvLaXQBGrWInVINKfwpoALYVCDQJ9FQjdRAE5mGHyCZGIT?key=0IUVWPWjCJo2wp2B7nwtag" alt=""><figcaption></figcaption></figure>

5. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае в свойствах указано одно значение, которое необходимо присвоить конкретной переменной.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdCrFoLghURIEz5AZZJZye9AILjEhBb5GPrTUzxJy7S5BBs4zqnbiDvVh699JQwDddhfFHAv8aj3TRRphM7eqDacmDDOMfqFDFJKkl1XUfrx6aX2BQ_C3jUOMuD78vGFPrKiHB42yCbK2QIrxzqYlb1THsZ?key=0IUVWPWjCJo2wp2B7nwtag" alt=""><figcaption></figcaption></figure>

6. **Блоки “Клик мышкой”** производят клик по заданному элементу приложения Для данных блоков используются селекторы.&#x20;

В первом селекторе происходит клик по кнопке с цифрой, которое было получено ранее через блок “Случайное число”.\
Во втором селекторе происходит клик по кнопке сложения (+).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfbeRJBRPzAg_S7EvXLeL3L8dVP07MIIExZN0nYw_byE8STF2tjguXRvhpOnHLia9BJL5brOGOjZuWX20J5Pw-GHQ8li4oQQdlCUhWYFqLs7yxFZb9eHgD70Z1iXPPoPm45JsYOkR6224tH0gEcqbBNm2zN?key=0IUVWPWjCJo2wp2B7nwtag" alt=""><figcaption></figcaption></figure>

7. **Блок “Случайное число”** генерирует случайное число с заданными параметрами. Для данного блока указаны следующие свойства:

* Мин.значение (минимальное значение для случайного числа);&#x20;
* Макс. значение (максимальное значение для случайного числа);
* Шаг (шаг случайного числа).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfJ7Krr-ru5BcxmMi10TDqkF1g7u2aBGFa0JlwhvVU87TScR2Gk7DdfIUsspGXtT8Hii2W62vynB1D-xaCc1kZCuj0NjrK1cJ8I3Fk7Uqdqwn0HnTld7r8UMPhIX2BQ9waZn_dVSM_6Cd0vvUhq2knA9daY?key=0IUVWPWjCJo2wp2B7nwtag" alt=""><figcaption></figcaption></figure>

8. **Блок “Присвоить значение переменной”** устанавливает новые значения для одной или нескольких переменных. В данном случае в свойствах указано одно значение, которое необходимо присвоить конкретной переменной.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcObw--oX5jNWXDZZbkkjICKF1Xp-aHeH2Swr2Pfzj1gR5LtRaKHFQlKvgeEAVJU5LMNiePN2rGOmkS4FMb4QrKewZsWn0tFxUdRirL6051UjRwmSrsuwtruYIV36IR1AzGpcG-MXxfmm6U4AloRvax2-Bf?key=0IUVWPWjCJo2wp2B7nwtag" alt=""><figcaption></figcaption></figure>

9. **Блоки “Клик мышкой”** производят клик по заданному элементу приложения. Для данных блоков используются селекторы.

В первом селекторе происходит клик по кнопке с цифрой, которое было получено ранее через блок “Случайное число”.\
Во втором селекторе происходит клик по кнопке сложения (+).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd0oUDinR5XLbOsWqUYv4FLeEPPJyry3wTzshV42hAvKhWBgDYnlJ3LmI8a3KlGaYohkvF1Xd-lF3h1iuLGjE8z__-LJDBW4uUyLQtYdq3Gnc9RWrPeqf_c3K9eW7oJAWSTQUu1syautwi9yq-Qi-1Oj9cU?key=0IUVWPWjCJo2wp2B7nwtag" alt=""><figcaption></figcaption></figure>

10. **Блок “Пауза”** приостанавливает выполнение работы сценария на заданное время. Для данного блока указаны следующие свойства:

* Единица измерения (единица измерения, в которой задана длительность паузы);
* Длительность (количество секунд,на которое будет приостановлена работа сценария).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc5n-J7tyZ8Nh-tzqLd_B6npnjieZeQyog_9YF8nO9Yd4wmn6zTzH_3nbFv0-B7puflSs-WTOQ2PPJ2qjkEnZS2kFvje6GofmVjxg6nXpLuEYEv4mgMt3-12zurtgU0kKQ3sJz5IaRmQC9yNaBROdDpjL9E?key=0IUVWPWjCJo2wp2B7nwtag" alt=""><figcaption></figcaption></figure>

11. **Блок “Нажать клавиши”** эмулирует нажатие клавиш на клавиатуре. Для данного блока указаны следующие свойства:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcVFPkn_FThG7Tu-4-T686OJJx4W0nqWHAAYPAM8ZGof5Ke1RLzL5nJxlhDPDUrWIcBq556odG6-G5IluVvNhtddJMkqzDpK1QZIBJSjTLNiJ7ODLKB9R2di9sOQ_ntrqVEvZaC_og1kFA1DrotRRqUK_cU?key=0IUVWPWjCJo2wp2B7nwtag" alt=""><figcaption></figcaption></figure>

12. **Блок “Конец”** (этим блоком завершается работа сценария или возврат диаграммы подпроцесса в основной процесс).
