# Создание Задачи в Оркестраторе

Выберите в таблице “Очереди” очередь, в рамках которой нужно создать задачу, и отметьте ее флагом. Далее нажмите кнопку “Создать” в таблице “Задачи” и заполните открывшуюся форму.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcYcN1AhM-Xi2wVMMGRrFzjrJRR0vNU7SWOH-Mij4m2emkiTdgfsBZQ76jRxe902F2FZRiOUyHNXed21f6QnxtpSuzicKvXGSICnyFnkkwNQhiAtuFcNDfuNoBf6x2RmFtmI-lJipR2xqJSDCcpbLqD8rp9?key=badYObIGwGYqyghIBmuxWQ" alt=""><figcaption></figcaption></figure>

* поле “Имя” (является обязательным для заполнения);
* поле “Описание”  (при необходимости);
* поле “Комментарий” (при необходимости);
* поле “Приоритет” (с помощью выпадающего списка выберите приоритет выполнения задачи).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdZeDBUSRb7y7dryAUfEN_dreY5lUHUpRhqR7hfSDkx1QopIOFyQzkezu4Rc4sgVExqtZAkgQ2B8P1BF_DsJSq_DWevi0quWsIE0vC-xMlAILTRH93KZVoOpCXAU5VpZw32a-JJIcX-I88dJQu4uuSAfaY?key=iLsscOkAYkVnzVdVDr-zyA" alt=""><figcaption></figcaption></figure>

* поле “Теги” (при необходимости);
* поле “Повтор” (количество повторов выполнения задачи).

После заполнения формы нажмите кнопку “ОК”, чтобы сохранить созданную задачу.

У каждой созданной задачи в колонке “Статус” указан ее текущий статус.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe0wc6xOESPagDiIao4xYg0oLzRTha0BGS07awRcW_kHzAp9EoRv3_mq8pUm7v17pEArXZ3-RVVkPhwLCOU9-wxQCELjvNR6oVO-DiDwJXwQgU9untqY1dq4qgWAWGxqjX41FRC0YNd7DzwUkBg8hHc8dEu?key=iLsscOkAYkVnzVdVDr-zyA" alt=""><figcaption></figcaption></figure>

* статус “Создана” (New) – новая задача;
* статус “В процессе” (InProgress) — задача находится в работе;
* статус “Успешно” (Success) — задача успешно выполнена;
* статус “Неудачно (Приложение)” Failed (Application) — обнаружена ошибка при выполнении задачи. Данный статус присваивается задачам, если возникшая проблема может быть решена при повторном выполнении задачи (например, при зависании системы, с которой работает робот);
* статус “Неудачно (Бизнес)” Failed (Business) — обнаружена ошибка при выполнении задачи. Данный статус используется, когда автоматическая попытка сигнализирует о проблемах с входными данными или со статусами внешних информационных систем, с которыми работает робот, и повторное выполнение задачи ожидаемо будет безрезультатным;
* статус “Отложена до” (Postponed) – задача отложена. Данный статус автоматически устанавливается из сценария Дизайнера в случае, если мы хотим отложить задачу до определенного времени, чтобы Оркестратор в течение этого времени вернул эту задачу обратно в очередь;
* статус “Заброшена” (Abandoned) – данный статус проставляется, если задача была взята в работу, но в течение более 1 суток не была выполнена.

При создании задачи по умолчанию проставляется статус “Создана”. При необходимости статус задачи можно изменить в процессе ее редактирования. Для этого нажмите кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeViaI7x0T6SUHkKvVxRAFPGO-jsiSbjc9bSrAzG5SkjGcDWFh02rSnDRsWUw_XmlveMPPq60tme5sMWzes5ZLhoaAtcxki2bhMyeuBlnJ6lA6_ScW5v4fFV05q4KtNAMwdsU-3Zw3q3ZXzis24XyY29pYc?key=iLsscOkAYkVnzVdVDr-zyA) в строке с нужной задачей, после чего откроется форма редактирования задачи.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfnrNYeTgjTybaxhU6kZy38DJUqP6_MNLd_BNrQeKc4Pf7ICVhSxqMqevCagTdawl6agTr07gOD-twFbtTXd5oxBQBbUMPaZK23N4DqaZlZzByelgt0AlYgrCoxYBR0bVDdWpxZ9ndXUl8f__U7nJK_jF8?key=badYObIGwGYqyghIBmuxWQ" alt=""><figcaption></figcaption></figure>

В данной форме можно изменить не только статус задач, но и указать дату и время до которых задача отложена и дату и время дедлайна, если это необходимо.

Также для каждой задачи можно установить набор параметров. Благодаря этой опции можно передать суть задачи, например, указать ID документа, с которым должен работать робот, а также указать путь к папке, в которой расположен документ.

Для установки параметров задачи нажмите кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcnv-yvx3AHAvzOfnChrp_MkWSS9XP41jmLeYnGbwWd-Mus7lw_2bFBC5Lo0MLGThKRMO6b0IM3gpyio5RFXypuVckO7TIqZQl2GOr3vYbB1irDqV-seyiF3asgg1PI5K1-O-J_hUpReIljwVL8GfNmrLsV?key=iLsscOkAYkVnzVdVDr-zyA), здесь доступны три типа данных:

* Текст;
* Таблица;
* Хэш-таблица.

При выборе типа данных “Текст” Вы можете сохранить необходимый текст в качестве параметра задачи в предназначенном для этого текстовом поле.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdhsjF-4RtfW9xzpnacxY8KeA_Hj1CyhSWt6GIe-TAccTYuSPMrJs20i4xpr2y2OVas_Zz2FIJbLnzOmJ9Ofm0sC5Ar25tOhhDpsp-a4MO54sZVktjtRSStB-MDqWLgpP3xK3TFUu_IYhiKuFxc0jRuzrgE?key=iLsscOkAYkVnzVdVDr-zyA" alt=""><figcaption></figcaption></figure>

При выборе типа данных “Таблица” Вы можете создать и сохранить таблицу в качестве параметра задачи в предназначенном для этого редакторе таблицы.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf-hhcguCqAD6Ioqm0gPJKduI2iJWa9E6ngxUSoNAGxiU7apuazJfFoyXS6aeVGj6k9Di0olLbZsUW7lueCecjKEeE5LKFCxaxmGqZI2w9DwrQa4V8e49eUiwiG0_AWcy_hUB6z2PwUnI6Ayk8Bw4emDJA_?key=iLsscOkAYkVnzVdVDr-zyA" alt=""><figcaption></figcaption></figure>

При выборе типа данных  “Хэш-таблица” Вы можете создать и сохранить хэш-таблицу (указать пары ключ-значение) в качестве параметра задачи в предназначенных для этого полях, где параметр – это ключ.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfBmpdciJoVsewz4EJEA59ar4SG7m2s3BQdizPwTSz_zhXiMEwhJYZXAC2vabyomRTdFdMbPZBk_yI0tnFb2nx3xL8s0pJc3fXIfYVWeR2wa0h2kv5k2w2hUF84_DYUmmMMKGSoaWG0EuE3-OZN778788ty?key=iLsscOkAYkVnzVdVDr-zyA" alt=""><figcaption></figcaption></figure>

Важно! К задачам из сценария обращаются по GUID, который присваивается каждой созданной задаче после ее создания. В конце выполнения задачи, ее статус нужно снова изменить, в зависимости от того, была она завершена успешно или неуспешно. Пока Статус задачи не изменен на “В процессе”, ее может взять любой робот, но со статусом “В процессе” задача закрепляется за конкретным роботом.
