# Пример создания действия и его настройки

В данном примере описан вариант взаимодействия роботов и сотрудников, работающих на рабочем месте через экран “Действия”. [Видео-демонстрацию можно посмотреть здесь.](https://sherparpa.ru/ucontent/?0I)

Сначала один из роботов получает и распознает накладные, а затем создает Задачи по итогам распознавания и устанавливает в них теги 1CNew, после чего производится проверка правильности распознавания (и исправлен в случае необходимости)  данных на рабочем месте, созданном в рамках действия  , после чего в задаче меняется тег с 1CNew на 1СModified. Соответственно, другой робот будет забирать задачи с тегом 1СModified и вносить данные, которые в них есть в 1С.

Откройте экран “Действия” и нажмите кнопку “Создать”.

<figure><img src="../../../../../.gitbook/assets/ЭкрнДейств1.png" alt=""><figcaption></figcaption></figure>

В открывшейся форме укажите название, рабочую очередь (необходимо создать ее заранее), статус задач и тег.&#x20;

<figure><img src="../../../../../.gitbook/assets/image (33).png" alt=""><figcaption></figcaption></figure>

Перейдите во вкладку “Кнопки действий”. Для первой кнопки укажите название и установите флаг “Сохранить изменения в текущей задаче”. Укажите тег, который нужно добавить и тег, который нужно удалить в соответствующих текстовых полях.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeSWGgW1n1iTVT0kedN_dtZOM72fRotrPalYZLcBd6E4Y5r2TU1ec2YKgCIwTiu5rjPhdChaqFALoyjOMPWAENY875dB9KXr1bJzdvA7XTnhFt5Wg78YkbvDs4JX3QMk0ZMVqlU9f0kHu0QTO-AUQeQ9BPW?key=N4r7eGDXJEzoTozyF62-kw" alt=""><figcaption></figcaption></figure>

Сохраните и закройте форму, нажав кнопку “ОК”. Затем перейдите в “Дизайнер формы” у только что созданного действия.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeIO1ssnWyG9dOliUDsPscefSb8z3klpTsdDWTyu8v1OggymFNgX4C0zC6QZzL8CJ0vNY2ut-ud-_3ZO7uLABKJ4LNEnfTOr_B5Vzv_t-I9I1Rf7VrfljH4zFDzHAGol7ewNCV7BVUkRoH230mIeBVJwyg?key=N4r7eGDXJEzoTozyF62-kw" alt=""><figcaption></figcaption></figure>

В “Дизайнере формы” добавьте два текстовых поля (Text) и укажите в них имена параметров в задаче. Эти имена необходимо указать при  создании задачи.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcezpf16aNh-bcALZFR5RfZPvUzeEEJmyPpH6XlI2Hfa_yatyUTk3IlIcAGimOGALDn68IRgof0nRk6rC18lfnTQaaoEoL45h9X_DiODE5shBGRnBHiAr6qbp86T0lj7ot2-9pvXxHijyoJqXuXLBswLnk?key=N4r7eGDXJEzoTozyF62-kw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcSkX1TTDJcM5WoUp4VJZNhdA2wPjwzHsMck0HYOql-IWw_Lra1rJ5TTxbhiSkxgeU3ukEMsNigUfTyqD6wK6_hKlSfgXxt5vCZs5bWGSph9ne_6da4RM883MYP3ZXM_IzheX1wYL5y7FBWK6hG9gbUUR8R?key=N4r7eGDXJEzoTozyF62-kw" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfMuivym45BoHa2dhaXLElXv9M1DwjHjrXioanI0QVDvq5SjC311zzQwkt-uqWIsYMSpdHMaQ3ZB_1NGFeIH5b2q5gdNMK1ger6-Sue8ZtuPfP9WjMEaFlO5a-cHPhpVdCkapPql894mLifnYjq0RX-K1c?key=N4r7eGDXJEzoTozyF62-kw" alt=""><figcaption></figcaption></figure>

После этого добавьте поле табличных данных (Data Table) и укажите параметр задачи “Товары”

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcJ3hcl6YayyN2ajXOmDEQsI08XfgUz6okVZAM_XaXF8QH3jYBglyWhJkMzEoIqJ1ombKw7rXqekjiGJehCd9ANZu6xnb-ZGUljNo70p21Um-fTQirNuTjq3QMz1KzmwGbx1XjLbrZpEf_lt3RavdWIORUN?key=N4r7eGDXJEzoTozyF62-kw" alt=""><figcaption></figcaption></figure>

Далее добавьте поле “PDF” и укажите параметр задачи файла PDF.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcwkUKcMHkLlgC58usdtxgcJwbugBNbMascVbzdnKBb87D1I-fv0iZ9BeOulbudYRpYfwUdffq-CZrKUGcULLTuaeOqzf6Hz4Fh4w2cGWk_Rw71mf0zy63IZ421NPzIg1J4HgxMwqj8BWflAZOI_Z6oGQE?key=N4r7eGDXJEzoTozyF62-kw" alt=""><figcaption></figcaption></figure>

При необходимости измените размеры полей и переместить их.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeIvV2Grp3CHdy_LFm31hWqq1P6AsW3zRT1SqVPh1XMn1ADhd73tA1QFeEGGLaSQQadQigjRcPBjlQ9MC_0bjv7BMWss3zbtwmFDwkNnVH4dD0jdbia69_QpGzBHm_fIqru2_aj_-ld_MNmuKzIF7oiy7wX?key=N4r7eGDXJEzoTozyF62-kw" alt=""><figcaption></figcaption></figure>

Нажмите кнопку “Сохранить”. После этого нажмите кнопку, чтобы зайти в настройки созданного “Действия”, и во вкладке “Доступ” скопируйте ссылку для доступа к действию.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfVBrUBxpJOhilGW5HdzTGi1tJLN8MWdmSD5qrqQO5T2avAQFHg2qXaJaA_wZhejkg5bixTSRGy7APOx-Uhnt_2UImta0Ci2V_KWivateVECK68bNyMmWlCrEUfjBZBQ9qm9XTdcXjn0CgbWbpTOWwyq2T-?key=N4r7eGDXJEzoTozyF62-kw" alt=""><figcaption></figcaption></figure>

При переходе по ссылке доступна созданная форма.&#x20;

Если Вы запустили роботов  в процессе получения и распознавания накладных, то в очереди уже будет создана  задача и при ее выборе будут показаны распознанные данные.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXegeBRs0BUOVPET9V0vB6WT93Mv-QEKIREf06lKIvIxLjWuxcWtG8k-1RmBP4gJOkgso79Iaj-pArX_kCEJTONESs2klbzDTKaAmBf-j1Psyd-76fTBFu0MoA9xnlPQeuKFkihRwFZ88tCMXOvIAWdS7Ls8?key=N4r7eGDXJEzoTozyF62-kw" alt=""><figcaption></figcaption></figure>

После проверки данных и внесения корректировки нажмите кнопку  “Сохранить изменения”. У задачи поменяется тег по алгоритму, который Вы указали  в настройках “Действия” у этой кнопки. &#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfq1N757zaB70SNUQWjNPX-Ndv5DhahsfNGQ2kQ_LRhdfMjad0LrsJE134kMyBFIEvKI2qtW5pYvuUe7A9mLAwoJkV4syxf0X2FFD-tcnuLsRt6Vk4EkEbulVwgHlVH9YmZvFO1ZmRerl9ihXlVosVjRUo7?key=N4r7eGDXJEzoTozyF62-kw" alt=""><figcaption></figcaption></figure>

После выполнения указанных выше действий, данная задача больше не будет отображаться в списке формы рабочего места Действия.   Можно приступать к внесению данных из обработанных задач в 1С.

<br>
