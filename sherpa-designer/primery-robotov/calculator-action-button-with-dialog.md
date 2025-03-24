# Calculator Action Button with Dialog

Рассмотрим пример робота, который показывает как можно "добавить" свою кнопку в окно чужого приложения и выполнить определенное действие при клике по ней, в данном случае - показ диалогового окна с текстом и ссылкой. Перед запуском проекта должен быть запущен Калькулятор (проверено с Windows 10).

Проект робота состоит из одной диаграммы. Таким образом, если описывать пошагово, то данный робот работает следующим образом:

1. Создает кнопку для калькулятора “Показать нашу подсказку” с помощью [Редактора окон](../rabota-v-sherpa-designer/osnovnoe-menyu/panel-razrabotka/menyu-dopolnitelno/redaktor-okon.md).
2. После клика по созданной кнопке показывает  созданное в “Редакторе окон” модальное окно с подсказкой и ссылкой на калькулятор в Google Chrome
3. После клика по ссылке запускает калькулятор в Google Chrome, а после клика по кнопке “Закрыть” – закрывает модальное окно.

Диаграмма проекта выглядит так (для удобства блоки диаграммы пронумерованы):\


<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd9Q74m933XbFrtWtKk1KK-0Hsr2tAFTuniCK3AhkpLwFUsKrNkS0Hyq7ZZmCMkEbneBUfkVddvXSGCERfFAeM8ShP3YTBXOlWbe95SHwKHBzekf1qDJozuothAeEcHB0lmuAo8TeS_tNNnY1pGlCiRNydF?key=DhcpajRIrlTxITYaT99gBQ" alt=""><figcaption></figcaption></figure>

1. **Блок “Старт”** (с этого блока начинается любая диаграмма).
2. **Блок “Показать кнопку для калькулятора”** позволяет создавать свои собственные окна (формы) и отображать их в модальном и немодальном режиме, в том числе, асинхронно по отношению к ходу сценария. Если задан селектор, координаты созданного окна будут привязаны элементу управления в другом приложении.  Для создания и редактирования своего окна воспользуйтесь кнопкой «Редактировать...» блока, а для создания переиспользуемых окон - кнопкой «Редактор окон» на главной панели инструментов. Для данного блока указаны следующие свойства:

* Конфигурация (строка конфигурации);
* Объект окна (переменная с объектом окна);
* Селектор (идентификатор элемента, к которому привязано окно при его отображении);
* ID процесса (переменная, в которой хранится идентификатор процесса, указывает с каким приложением необходимо работать);
* Угол привязки (выбор значения угла привязки окна, при заданном селекторе значение угла привязки указывает привязку левого верхнего угла окна к углу найденного элемента);
* Смещение X (смещение по координате X при отображении окна);
* Смещение Y (смещение по координате Y при отображении окна).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfQutQ7GnRKyv8ZDtj84oiqMndaEZT9guKsqv1q2mqpBNIPo0ODTtuF8EULskfCm_awVKWP4XY4n_UouPXFS3aXNAsWXlgERMu4ISdWzn9NcrpPO65563drrZFfVozWF_ovFj9tN9D-u13gXGAlbJDM9yU?key=DhcpajRIrlTxITYaT99gBQ" alt=""><figcaption></figcaption></figure>

Кнопка, которую показывает блок создана помощью инструмента “Редактор окон”.

Просмотреть ее и отредактировать можно, нажав кнопку “Редактировать…”, находящуюся внутри блока.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfVdNey6Jpwvul2fu6ru4ybsCrwy5JcXtkHTLjocXT11PQWJrtS94i1AmN0a3Mks10F4Ij9N_djm-auc-bR--HJOMVw1Gapw2WEvJOBxaJc3DFsKlTtbFKLqrg2ydSGgtmrAbG9qbOCQuNpkwFIM1cGAbE?key=DhcpajRIrlTxITYaT99gBQ" alt=""><figcaption></figcaption></figure>

3. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае используется условие клика по кнопке, в качестве него установлено: $ControlEvent != "".  Т. е., если переменная $ControlEvent не пустая, то выход “Да”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc2KUtDKxeED8NSqAhXjxD0wiWA_ZC4MShKdOmQY3iocsjjKLAneWfeju2patKZGEyEyHdpC2TJj4NvoBDDOZ9m4X0TaTXVC-8k1rpP70Kb6cSPISSey7CVenTTVesz_DKGIqXVokr-XIbjMhO2Wr4fEtkd?key=DhcpajRIrlTxITYaT99gBQ" alt=""><figcaption></figcaption></figure>

4. **Блок “Показать окно с подсказкой и ссылкой”** позволяет создавать свои собственные окна (формы) и отображать их в модальном и немодальном режиме, в том числе, асинхронно по отношению к ходу сценария. Если задан селектор, координаты созданного окна будут привязаны элементу управления в другом приложении.  Для создания и редактирования своего окна воспользуйтесь кнопкой «Редактировать...» блока, а для создания переиспользуемых окон - кнопкой «Редактор окон» на главной панели инструментов. Для данного блока указаны следующие свойства:

* Конфигурация (строка конфигурации);
* Объект окна (переменная с объектом окна);
* Модальное (при установке флага, окно будет показано как модальное);
* ID процесса (переменная, в которой хранится идентификатор процесса, указывает с каким приложением необходимо работать);
* Угол привязки (выбор значения угла привязки окна, значение “Default” указывает на центр элемента).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdSJ2yLkSHBunRTU64VmHr-ktK-mZ2cuYgjZux8Sggcf8LlOvuJqaz_wFxssqmlcYqfJInmKw1aaN5aXQgreasGULpKuR1tZpq8dvJlqE4qawMlXEdyLud-eYvc36P58_Lx5lz-cjn-kAwf-JvAIn_Hv7U?key=DhcpajRIrlTxITYaT99gBQ" alt=""><figcaption></figcaption></figure>

Окно, которую показывает блок создана помощью инструмента “Редактор окон”. Просмотреть его и отредактировать можно, нажав кнопку “Редактировать…”, находящуюся внутри блока.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe0UVlMoXCCcXFnKGVNhNlaAnlJyJoe4wvj64kK4ZOw-UGr-tsb7LH86zhSP_uIHofnje_AfnvuY8dyBOnot5lB4-bd7fm8LltTycyQGQYANedVtC7c1yjX9CnWsW4KCFFUBH359xH229EEBKbkWSwA3YZM?key=DhcpajRIrlTxITYaT99gBQ" alt=""><figcaption></figcaption></figure>

5. **Блок “Лог”** позволяет выводить в лог произвольные сообщения и/или значения переменных в процессе работы сценария робота. Для данного блока указано свойство “Значение”. В кавычках указана текстовая константа, а имя переменной начинается с символа $. Т. е., данный блок записывает в лог робота значение переменной.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcurrCc842ZXeenJxinhWZcUKxoBHmCPY8hg9v-DUIhOFO4rgDtW86ZblBG-Z8egsSZvH6boBlxNTXVTEdQBY6bbt1yQAQ-Cn9F-qLf0COz69TqTbigsuq2vu_FscWfYb2kr398wU08G4ATlgMgxZznnYE8?key=DhcpajRIrlTxITYaT99gBQ" alt=""><figcaption></figcaption></figure>

6. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае используется условие клика по ссылке, в качестве него установлено: $ControlEvent.Contains("LinkLabel"). Т. е., если переменная содержит текст "LinkLabel", то выход “Да”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdOYoI-awn6I4dqEsuP6h1NgQs96U0wm68p29srr7kAB_BYntQ3NJeoELLYygNINYolne9HqUjDQy59Hl9blAJmFgK2vg3dlB18nbeA0qEZ4Y1-XDNv3pXHVJyGlgZs8MgDHFD953arre4sG_-uobHWbqrH?key=DhcpajRIrlTxITYaT99gBQ" alt=""><figcaption></figcaption></figure>

7. **Блок “Запустить браузер”** запускает выбранный браузер. Для данного блока указаны следующие свойства:

* Тип браузера (браузер, который необходимо открыть);
* URL (ссылка, которая должна открыться при запуске браузера);
* Время ожидания (время ожидания открытия браузера в секундах).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf8EdDnlYa69F7R6mFaOVJuVcYfCOWtRIsQqeqO9ShxtCD3nCcL2D6032j8X2RR4Fw4Mx-lqwt6OuOF63-hUsV81nHuYZUK5A4ypXXjXdgXFXJH_daF7SFYEmVYhHqjomccfLY2I4aL4qdxeGKBlGi7rcDd?key=DhcpajRIrlTxITYaT99gBQ" alt=""><figcaption></figcaption></figure>

8. **Блок “Условие”** проверяет указанное условие на истинность, после чего выполнение сценария продолжается в сторону выхода “Да” (если условие выполняется) или в сторону выхода “Нет” (если условие не выполнилось).&#x20;

Условие записывается в формате: “переменная” равна (==)/ больше (>)/ меньше (<) “значение”.&#x20;

Например: $a == “Привет”, то есть, если значение переменной $a равно “Привет”, то выход “Да”, в противном случае – выход “Нет”.

$Result > 5, то есть, если значение переменной $Result меньше 5, то выход “Да”, в противном случае – выход “Нет”.

В данном случае используется условие клика по кнопке “Закрыть”, в качестве него установлено: $ControlEvent.Contains("CloseButton"). Т.е., есди переменная содержит текст "CloseButton", то выход “Да”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf1akdUiw2omDtGBYb1qmaTC8-s9fHNawllfIr_v10D8mkGtfbcN4_6EV9JidXs10WTly9c59qIZXMutsfbwi1nwy51joRZsWiRURj1wbPnH8V8mdMXD5Qx21Pp9Li86ptNsuDtiSUlbPB5Uu33vckdCd4?key=DhcpajRIrlTxITYaT99gBQ" alt=""><figcaption></figcaption></figure>
