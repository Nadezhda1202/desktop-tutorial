# Чат

Пункт меню “Чат” включает в себя вкладки со всеми проведенными ранее диалогами с нейросетью, а также предоставляет возможность создать новый диалог и настроить его в соответствии с индивидуальными потребностями Пользователя. Также реализована возможность прикреплять файлы/папки и сохранять диалоги, что делает процесс общения нейросети и Пользователя более удобным и эффективным.&#x20;

Кнопка "Новый диалог" позволяет создать новый диалог с нейросетью. Если подвести к данной кнопке курсор мыши, то справа появится иконка настройки Чата: ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXd1S6lr2REB69BOCksWmkH_H7SdpwD-JUS_SU88fqbF1YLzPlalqRp-DeIyKn_4k9he6ETxwjTJVmCMzr8am5GuxJGtmcC_Y65lZz_q3sG1lrB-eyneklkT0W17I6D06bekxAVp8g?key=jXxpQJRYkQW6F4d0HoRgIxP1). По нажатию на неё откроется всплывающее окно Настройки Чата по умолчанию:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXej8kMd55v01dsTYcEtYnaPuKAq-xh9ZcTaP9t2TrjqFIl0VoQOSs4k16qwLM_sh4njvjrkeXz3EaWtIoh7MHs9fSGoSqoYYYbtp8BipFoETEOU0WjHuC72BEtK61o8kA?key=jXxpQJRYkQW6F4d0HoRgIxP1" alt=""><figcaption></figcaption></figure>

В данном окне содержатся поля:

* Системное сообщение

В данном поле можно указать системное сообщение, которое будет направлено нейросети для обработки запросов. Это сообщение может содержать инструкции о том, как нейросеть должна себя вести, в каком стиле отвечать или какую информацию использовать.

* Температура

Ползунок позволяет регулировать креативность ответов нейросети — чем выше значение, тем более случайные и менее предсказуемые ответы он будет генерировать. Это может быть полезно в ситуациях, когда требуется больше разнообразия в ответах.

В правом верхнем углу отображается счетчик ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeWJ7KQKYNZriOkkYlociECWWgJMyf3r9EEZWlgmSWhR26tV8LTEMBEsg43lSeKW-HFPJIcZkw5T_E4cdeDYTA2oVV-OVbNIJBqwVEfDmAUfXitkIw6jBvua47vfVJ0ekn8zg1Avg?key=jXxpQJRYkQW6F4d0HoRgIxP1), где можно свериться со значением в цифровом эквиваленте, или ввести его вручную.

Настройка "Температура" позволяет регулировать креативность нейросети с помощью шкалы от 0 до 1, где:

0 – отсутствие креативности. Все ответы на одни и те же вопросы будут почти одинаковыми, строгими и лаконичными. Этот режим подходит для ситуаций, когда необходимы точные ответы или решения задач по генерации кода;

1 – максимальная степень креативности. Все ответы нейросети будут разными и непредсказуемыми. Подходит для написания статей и творческих текстов.

По умолчанию значение "Температура" установлено на отметке 0,7. Если вы работаете с документами, рекомендуется установить значение на 0,4.

После установки подходящих значений в данных полях необходимо нажать кнопку ОК. Введенные настройки сохранятся и будут применяться ко всем новым создаваемым Чатам, но не повлияют на уже существующие.

<table data-header-hidden><thead><tr><th width="72"></th><th></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcxc2b8TdrfZqycPshhCbgy96T0frsjaOJ1MZa2bIqZZP1dhuSOP95I5mMl66ly35jiyfzdq9d0E9XWvmWOqo-0BMTMX6kET5GwE-fhhKomUnQXtR4Y4t-gd8kistfSQ5QnIvPmtA?key=jXxpQJRYkQW6F4d0HoRgIxP1" alt="" data-size="line"></td><td>Изменить настройки уже существующего Чата после начала диалога нельзя.</td></tr></tbody></table>

### Создать новый диалог

После выбора "Новый диалог" в рабочей области Sherpa AI Server откроется окно нового диалога:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcs6Zt2KCWEbzIO1VIOiYpQ_L-61yGASk6LheymCjSDRX1V28mKmKIBiqyfeOAub8gD-dGCAJVP8J-4efhdrp8P5Ay_vUmrvvvdDZvnqyIIVItB_qbNmworx2R9TqUcYCPuiOurrQ?key=jXxpQJRYkQW6F4d0HoRgIxP1" alt=""><figcaption></figcaption></figure>

После первого ответа на сообщение Пользователя нейросеть переименует Чат в зависимости от контекста диалога:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeJed1gTtHLVigqzPk4fo3B30wy4RJG3kKieDpz-zZHUWB4M51PXc95w4FAkrtGZ61REzssY9iumjAVFnX1wbexS3qohw_aeYf_t-jSCsj5MYqRf1auwwtivDQSCNcvlIyBPvzQ3Q?key=jXxpQJRYkQW6F4d0HoRgIxP1" alt=""><figcaption></figcaption></figure>

Для отправки сообщения нажмите кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdHmXCV5GmyarLpQZaCJtA9uqjJeWnn3_0Tqbpa1XvUrIN2N3WKG-vV8BbPeFq1kWDu8mGNjDS8zyPNg7PPPDFX6eP2q7WTviJJLZ_DTQ3cDrbrSxOOExHA-Fdq4-2YnU5lE_AH1g?key=jXxpQJRYkQW6F4d0HoRgIxP1) справа от поля “Сообщение в чат…” или клавишу Enter.

Если вы хотите задать название Чата самостоятельно, наведите курсор на название, которое нужно изменить и нажмите на иконку “Редактировать: ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXc_Y1s8hS3aNd8p5kFuBziluJTCx4eLlpJN6TgemUTnTIJjTJtlkbDhWpKcBbRdVPkCVSywe_d5S3ELQsUsZSlFQCA_Ix03ufPQ-ImdOzGe2hmhzc74tNk8rl_UNuOs7iouXi74?key=jXxpQJRYkQW6F4d0HoRgIxP1). Введите новое название во всплывающем окне и подтвердите изменение названия диалога нажатием кнопки ОК:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfKJo13u9QBp5oBUtgCsfsNsObBcduxMONLKfRNhZMnqI0Z8BTqfkzV-jUnxUTIpGjOXe_ggCCBAUq-mmTullDvW3o4fXPD3KP3JES8XHYcxlRQjgZh4Fosh2u6EFhmt5bLY3lkYw?key=jXxpQJRYkQW6F4d0HoRgIxP1" alt=""><figcaption></figcaption></figure>

Для удаления диалога с нейросетью необходимо нажать на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXc93vYLup8zm7QBN6MRKHej22ctCnSJDa4w76VYi25jErOEwEe2sBG4P3l0RvI0-UnerzjhxlbMX1bGWegOZYFyxpEcIyUAm0_26IkKetThyk8sylg2TEjIYqyMumaJM9zgRwtBDg?key=jXxpQJRYkQW6F4d0HoRgIxP1) и подтвердить удаление нажатием кнопки “Да” во всплывающем окне:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfIOACXX2YFFZsF3Nu78qpXOTeMJX4NlnuDYSATgQXksZTlMaODjbOUl8qO3PWIVXcVWOb5vxN9AErHVphZ-Y-RA3CsLM7kocNkXBJV6dX2qRa9Pte_MZYHsnxc1Q_1g7pVGD4WRg?key=jXxpQJRYkQW6F4d0HoRgIxP1" alt=""><figcaption></figcaption></figure>

### Прикрепить файлы и папки

Помимо стандартного текстового диалога, вы можете прикрепить к своему сообщению одну или несколько папок с документами или файлов с компьютера. Для этого необходимо воспользоваться кнопками слева от поля “Сообщение в чат…”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXclB0FBq2Et305Si5Oz88BypjdBdA8i5EsWsB8TivThn5H02jj0Y4OoJyq630nXpas427hFY36yN0OfjNdwDYWCakkrCPWzXywoY3M-YiNWy6RxOUuyIGI6QeS7qJMeeooH-Ww72Q?key=jXxpQJRYkQW6F4d0HoRgIxP1" alt=""><figcaption></figcaption></figure>

Для того, чтобы добавить папку к сообщению нажмите на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXfEnfWOs_MdCBubivj3BXBXfS0PBJsanlWSG78sJaBdWMLhjZafUGgMKrH1942IaphdUXnmgR85QE-rHWTODB11Y6LzocgH3Z4neAX5zXez8q-he1ssLDRZ2RUqAJ71-eTYCMzheg?key=jXxpQJRYkQW6F4d0HoRgIxP1), заполните чекбоксы с справа от одной или нескольких папок, которые необходимы в диалоге:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfBqZ61Zzg9gX0B2IvXqUa5gblVMyN6HRgycVwDKSHPGOmIKC9475gZV-hivJ2dHTm-I2PcelpoRq3lkLVAu9Um8nH_qaOaS66liuBMpZkklUXHuHtVu2DdM5xf9Mr1kP7z_IKEzQ?key=jXxpQJRYkQW6F4d0HoRgIxP1" alt=""><figcaption></figcaption></figure>

Если папок много, то воспользуйтесь полем “Искать” для поиска папок, нужных в диалоге. Нажмите кнопку "Добавить в чат":

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXctA2nhcy59185zOtOeac38eeJJz_TLd_022RkVaUkzNgyJSnTLU-VLY631tyGwvNUjCUavsDxWxUPJvkbu5cryNp3kyVZza-duCW284f-UiMfrgsh1fEnWHlZzgPVrZii4DN0x7Q?key=jXxpQJRYkQW6F4d0HoRgIxP1" alt=""><figcaption></figcaption></figure>

Добавленную папку можно удалить, нажав на крестик в правом верхнем углу:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcRfmvjdrMd5yJDUzm01QCzI1o-l50OgqDLYDXj2nD7mtgQ_X0EPdd_kGaf_eYkJqwj-E2JMLlMvxlVisODPOUrIRxelP_nRjireRXbRD_30Gg0Z3H-rmszm9lHXm13kDql68HMMw?key=jXxpQJRYkQW6F4d0HoRgIxP1" alt=""><figcaption></figcaption></figure>

<table data-header-hidden><thead><tr><th width="74"></th><th></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcxc2b8TdrfZqycPshhCbgy96T0frsjaOJ1MZa2bIqZZP1dhuSOP95I5mMl66ly35jiyfzdq9d0E9XWvmWOqo-0BMTMX6kET5GwE-fhhKomUnQXtR4Y4t-gd8kistfSQ5QnIvPmtA?key=jXxpQJRYkQW6F4d0HoRgIxP1" alt="" data-size="line"></td><td>Создание папок осуществляется с помощью пункта меню "Документы" на левой панели.</td></tr></tbody></table>

Чтобы добавить текстовый файл с компьютера, нажмите кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdv94_HT3ZZm0hgsE0n8wPWnGdrmJe65cU8RtAGL640lN-VBCU6O22XwIYA5CRjx0i5gRmgY4v0HPPvdgjGKxXNwKV56MBdq9Z8i4Lt59Cp99T_DhtxQourF7l3safx1saCRgSZHQ?key=jXxpQJRYkQW6F4d0HoRgIxP1) и в открывшемся окне выберите нужный файл (поддерживаются любые форматы текстовых файлов) и нажмите кнопку “Открыть”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfx5KeLp6wLVj_I8tR6FrL7rwWKdC0RN4p4jwO-QqIOI1xtr8Vguazys040j1HwOjw9RBqoC88FVEeFNSBt061PvVBT8MG_TuFUQeA_bcY2tQ1PkEj2qY6EzKqU5alHK4wXtj72aA?key=jXxpQJRYkQW6F4d0HoRgIxP1" alt=""><figcaption></figcaption></figure>

Также вы можете прикрепить файл путем перетаскивания его в окно Чата.

Вы можете прикрепить несколько файлов разных типов. После прикрепления файл индексируется. Как только индексирование завершается, файл можно отправить нейросети.

Добавленный файл можно удалить, нажав на крестик в правом верхнем углу:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdcn9-xO07dKsWyk0yPbxEbdkUWQtMTX3fzw32z6HrJ2fvg9IOWy_YqR_UHoZt7s5OtuTv93kDXlAYsLe7ib4PklRTDFVDjsxhLI7mwJ9OC8pf91_9nCGcCUFudSh0BqH0cLrlUIQ?key=jXxpQJRYkQW6F4d0HoRgIxP1" alt=""><figcaption></figcaption></figure>

Во всех созданных Чатах сохраняются файлы и папки, прикрепленные к сообщениям пользователя. Нейросеть может использовать цитирование информации из файлов в своих ответах. Цитаты отмечаются иконкой ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeEg77qKmYWmCvv_L8rN100kKP8jlILo0Xbo0y0CC5lZtP6CD07ubU_2zxOWLSNOtA4geaV80C-JxMv7ovke0QglCHJJ8awfQteiQoD0ju71jmmufBHPAMORNOOFa5pQ9SMkdI0HA?key=jXxpQJRYkQW6F4d0HoRgIxP1), и их может быть несколько. Для просмотра цитаты нажмите на иконку, после чего откроется всплывающее окно с цитатой и ее источником. Например:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcJRYNr6phdv82jWeN7Mm03aPDo-U8UsGhrgHKatE941ibd1YBVm9RfgOIcqmXkWuTVkfo4knFxd-EB7wE0hrmijT4d_EZVjzd2aGFtLqE3q8IV5nbizLTH4WMmKQAzfUl1lIQK4w?key=jXxpQJRYkQW6F4d0HoRgIxP1" alt=""><figcaption></figcaption></figure>

Чтобы закрыть окно с цитатой, нажмите кнопку ОК в нижнем правом углу всплывающего окна.

### Дополнительные функции Чата

Для того, чтобы открыть всплывающий список с дополнительными функциями Чата нажмите кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXdXqRtnUaWjXVP_plW_b7qGn4837cKBNRv39e9rL7noYk2gAwomIqYSZ0BplUhabNvRuHWDC4n3KMoMzOyDdVaBbwkue4x4OH7b2DiGeQ6i9OE47ahKLzxE8TX7U48D0nkk1jqtuQ?key=jXxpQJRYkQW6F4d0HoRgIxP1) справа от поля “Сообщение в чат…”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdGF6mcaPn1GgM4J90GRpTfvTl0ozQsBLcgPgS39Eo6PPFQHCnG3Kh5zjdlKA6L-AJcmBkpC7ug9ndyfmdZ3zVrsA1TPLbI4Ph-aRgBV-moBH5Mul6Vw3nokJr8p0r46uaGDrlV?key=jXxpQJRYkQW6F4d0HoRgIxP1" alt=""><figcaption></figcaption></figure>

Список включает в себя следующие кнопки:

| Кнопка               | Описание                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Сбросить чат         | Позволяет удалить все сообщения в данном Чате, но оставить вкладку с его названием в левой панели для нового диалога.                                                                                                                                                                                                                                                                                                                                         |
| Запрос               | Включает режим, когда каждое сообщение рассматривается нейросетью как отдельный, изолированный запрос. Это означает, что нейросеть не учитывает предшествующие сообщения и контекст общения. Пользователи могут использовать этот режим для проверки реакции нейросети на конкретные запросы, не беспокоясь о том, как предыдущее сообщение повлияло на ответ нейросети.                                                                                      |
| Полнотекстовый поиск | Ищет совпадения в текстах внутри файлов/папок, после чего направляет Пользователю чанки, или ссылки на соответствующие данные, в Чат. Перед началом Полнотекстового поиска Пользователю необходимо выбрать нужные файлы или папки, предварительно загруженные во вкладке “Документы”.                                                                                                                                                                         |
| Диалог               | Включает режим, когда нейросеть учитывает весь контекст общения. Нейросеть может использовать информацию из предыдущих сообщений для формирования более релевантных и обоснованных ответов. Данный режим позволяет нейросети запоминать предпочтения пользователя и настраивать свои ответы в зависимости от стиля общения или интересов. Пользователи могут задавать уточняющие вопросы и развивать тему, что делает общение более динамичным и вовлеченным. |
