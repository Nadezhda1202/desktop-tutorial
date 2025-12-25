# TABLE

Виджет Table отображает таблицу. Каждая ячейка может содержать текст или число.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcn7LwoJ4nO6icit_j1JdAEnnxsA96XIlSkEbU-r2tTq-YGy7O0ahn2DueYSMZg8jMPCfLxEH0g8JM92jIzBCkcX30Ybc8DuO8FkIQoHTU6liGcGz9yJSYYWdGWiUAKJ93CKzyhDg?key=ArGsMFxOZt6u_AfXAA-94iWG" alt=""><figcaption></figcaption></figure>

## Начало настройки виджета

Для настройки виджета нажмите на значок редактирования ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcmIxOieJTlc8fo1mAy0-zMLSjvIZaF4uzm3uAlqS5_2Gw5ZdeFRMU2ENOXmEMQLaIidAseTYETJDjEqu9B0svvJJ_TCwSbbL3v-3AgDHd-iPa4HllVCRDN9JzE1m3x9baoELO2og?key=nCUpXC2iKtVeq12Xi8RnWuyw).&#x20;

<figure><img src="../../../../../.gitbook/assets/Table.png" alt=""><figcaption></figcaption></figure>

Откроется всплывающее окно “Настройки виджета”:

<figure><img src="../../../../../.gitbook/assets/изображение (16) (1) (1).png" alt=""><figcaption></figcaption></figure>

Заполните нужные поля для настройки виджета.

## **Общие поля**

* **“Название виджета \*”** – текстовое поле, заполняется вручную с клавиатуры;
* **“Режим”** – всплывающий список, в котором нужно выбрать режим создания запроса для виджета:&#x20;

| **Название**                                       | **Описание**                                                                                                                                                                                                                                                                                       |
| -------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Режим конструктора](table.md#rezhim-konstruktora) | Позволяет собрать запрос из отдельных блоков. В каждом блоке (Объединение таблиц, Фильтры, Ряды виджета, Группировка по, Сортировка, Количество строк) есть возможность настроить нужные команды для работы с данными, арифметические и логические команды, операторы сравнения.                   |
| [Расширенный режим](table.md#rasshirennyi-rezhim)  | <p>Позволяет ввести запрос вручную в поле SQL:</p><p><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcd7OIaI1R6U2xJuYuo33WaYxtzln9tYAyEjwgkaFQvmWk9805MgjR88D_8QBjGAHjvMQvGc2LJSshFRdlLNMIMSC0Bnxvufy0eEUv9QIz2KAfRGIeFykHpvaX7g_W6kqH1KqmPQg?key=nCUpXC2iKtVeq12Xi8RnWuyw" alt=""></p> |

* **“Таблицы”** – всплывающий список со всеми доступными таблицами базы данных;

## **Дополнительные поля, доступные для настройки только в Режиме конструктора**

### **Объединение таблиц**

Объединение таблиц необходимо для того, чтобы извлечь данные из нескольких связанных таблиц и сформировать более полные и информативные результаты.

Для сравнения двух таблиц, для последующего объединения, используются следующие операторы:

| **Название** | **Описание**                                                                                                          |
| ------------ | --------------------------------------------------------------------------------------------------------------------- |
| =            | Вернет строки из двух таблиц, где значения в указанных столбцах равны.                                                |
| !=           | Вернет строки из двух таблиц, где значения в указанных столбцах не равны.                                             |
| >            | Вернет строки, где значение в указанном столбце из первой таблицы больше значения в указанном столбце второй таблицы. |
| <            | Вернет строки, где значение в указанном столбце из первой таблицы меньше значения в указанном столбце второй таблицы. |

Если требуется объединить только 2 таблицы, то необходимо заполнить поля:

1. **“Столбец”** из всплывающего списка; &#x20;
2. **“Оператор”** из всплывающего списка;
3. **“Столбец 2”** из всплывающего списка;

Например,&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXciNHglBTDjXxh-ndG_wzNZcXhXND6XrUdgBCYtdVsfMv3TG6lbnmE7WNFThayemZauqrZI8azpsVmnyDFr53uPR-_7fNaoGFk-Hjobbh7QMjwunzzgtQqEHxZbkh_MB37n43DPnA?key=nCUpXC2iKtVeq12Xi8RnWuyw" alt=""><figcaption></figcaption></figure>

Если требуется объединить больше двух таблиц, то необходимо нажать кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcROZ9y7XZhK1qwKQ5hLnMx37mm7idz56ag4ue9nmrltGiCm-UFL7NI3iN_E4hvVWPnflzHFtiCErCZms5wLZNi1FY5eeteFiTJdp9-Zy1PF4XsdmLbz7YpdWSk8R6ovdrAvfzGGQ?key=nCUpXC2iKtVeq12Xi8RnWuyw), после чего заполнить нужные поля.

Если требуется удалить объединение таблиц, то необходимо нажать кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcsbV73oVpfuisxBad8hWyyeugetwarRT9Qin_QILnwD9umqNBWbO_ozoH6SbGFnkWDK2RvIW8keI5FkOlIIyyzy5QwrPSso1yRkSuG-5Kt2mo1vMGt0Id0NDy5gvYwIDa5ExuZOA?key=nCUpXC2iKtVeq12Xi8RnWuyw).

### **Фильтры**

Фильтры позволяют задавать условия для выбираемых данных с помощью операторов сравнения и логических операторов.

Для того, чтобы задать одно условие, необходимо заполнить поля:

1. **“Столбец”** из всплывающего списка;
2. **“Оператор”** из всплывающего списка;
3. **“Значение”** вручную с клавиатуры;

Например,&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcESQzpRUvRZdAMxHUoIII1p7wTfua4vjT0iUyooGLAhmICxiBb7qbQNHKqzbKZApRuiZl_JMRVo-lO8IWZhCghO3l2fju0sa8YjMa5ezF3zNgXop6rlBWBg4oAqWcBRl9mySipdQ?key=nCUpXC2iKtVeq12Xi8RnWuyw" alt=""><figcaption></figcaption></figure>

Если требуется скомбинировать несколько условий в одно целое, например, ((robots.is\_deleted = 0) AND (robots.id > 13)), то необходимо использовать логические операторы. Для этого необходимо выбрать нужный оператор, кликнув на иконку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXe5KvLHwZJMAKEekEGvTPPxIYVtQHjZGWfT2q8JjIUdDQdSA06PBo1IP04AIcbYBakRwhkUhVD-sKW9jsuk3nkz5Ywch_4C4490VxIIDM4TnUldryGqRtx8FlU36Cs7yQZ5Fty8RQ?key=nCUpXC2iKtVeq12Xi8RnWuyw), чтобы поменять её на OR, или ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXe62e1PD1G48Sa7XfyhhOgn_81A4M0YGYMbslALy5hbSxgpT6ibxOtBHD1C_Ks5SzrvMmybTuKKtcIShyipyKAi-Dz9A5vI6zTIepF8g4XZXmtNZgAcOfyLjty0GYfxagnxE6l9?key=nCUpXC2iKtVeq12Xi8RnWuyw), чтобы поменять её на AND. Далее нажать кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcAFQBjH14gIfP5ZzErkhIp8i9YMCcDu5YAeWCq8Xy6W4K6J4t2-vTqJgtAW5TNFG50Vkm6jr3LvPF6ly9Cty2Yvk0AcxvBZnnVmRO4lVXOvioRgWTJewQCqeiTZN6CcOAjsT4jDw?key=nCUpXC2iKtVeq12Xi8RnWuyw), после чего заполнить нужные поля:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcIYJZ9VjTOJzVfnAxrZdlAqQQ558qlI0bptyMwy5FBzipDgBIkz8TeFzIHSAXt4mQ215oiPVEVnOmMYy_M93Al92Ixcto6FY6tS360cqr2RvL_4RY7rCfGJWHmXBjZcptmC5fRNQ?key=nCUpXC2iKtVeq12Xi8RnWuyw" alt=""><figcaption></figcaption></figure>

Если требуется задать сложное условие для Фильтра, включающее в себя несколько скобок, то необходимо нажать кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXfSfbBGhG7QVxO9ioVtoXWl8Rmt2U-9B6gKdfw0ai6VOgNahfB7RR8l3UlSXNeavIBlfT96eAhr9XtqT-BJj_Fi-ep4L91DH3ojUXNUBMcPq8aGBs8vUv-FktTvqrVOnLPVdZCK?key=nCUpXC2iKtVeq12Xi8RnWuyw), после чего заполнить нужные поля.

Если требуется удалить условие, то необходимо нажать кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXd6OAWgEybohnm-V1e2pK4Z5R2yBziiiYj6BJ1ErR-ss_mBXRCxQllIK8ZF9cCs4_1coCLIq1xh_iucJN85kyIwN42FWOxA4wy4AycS4lt-awRGmfkEzeNAzOsRmNT3xbt6utzgog?key=nCUpXC2iKtVeq12Xi8RnWuyw).

### **Ряды виджета**

Ряды виджета используются для указания колонок данных, которые необходимо извлечь из базы данных. Они определяют, какие данные будут возвращены в результатах запроса.&#x20;

Для того, чтобы настроить Ряды виджета, необходимо заполнить поля:

1. **“Столбец”** из всплывающего списка;
2. **“Оператор”** из всплывающего списка;
3. **“Название ряда”** вручную с клавиатуры;

Например,

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdcNclubdHr3t-XMCgO3_e1aV2WJOz73qmI4LnaCecZjFiDo9kL43waypLoOj2xa3ySVRrPersvZWBZ4y9lKTH_a3Ln9WNhcFN31-H_gbPQqp2qvk7nSdou3OOee_-WQDcMpzvF3w?key=nCUpXC2iKtVeq12Xi8RnWuyw" alt=""><figcaption></figcaption></figure>

Если требуется вывести дополнительные данные на легенду, то следует нажать кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeFhXqnbRswxTKAYx7LnYp-kO4Opn8ZIybkorP4LBC9jNkvphbYUS0BYkkPYvxYub1vP7rmYElV4uoHTg9Ofzw5INlNLUuWyOUXOkj2w0jhJqELB8Jh4iAMwh97fjd5IWR2fk5qFw?key=nCUpXC2iKtVeq12Xi8RnWuyw).

### **Группировка по**&#x20;

Поле для настройки процесса объединения строк данных с одинаковыми значениями в определенном столбце (или столбцах) в единый набор, что позволяет выполнять агрегатные операции над этими группами. Для объединения строк данных, необходимо заполнить поле столбец из выпадающего списка;

### **Сортировка**

Поля для настройки процесса упорядочивания данных в результирующем наборе в определенном порядке в зависимости от значений в одном или нескольких столбцах. Для сортировки по возрастанию, требуется внести в поле “Сортировка по” значение “ASC”. Для сортировки по убыванию, значение “DESC”. Далее необходимо заполнить поле “Столбец” из выпадающего списка;

### **Количество строк**

Поле заполняется вручную с клавиатуры или с помощью счетчика ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXeptwsNfuXeBVsM5ITGuxu3Tk4Y-JS6u91ngfYj8jnBT8RRxSo09Eye1mhEKPaxYQQApQAA4g7ohGinnWFeznpGw9tkFSMqqmQZyL0AzL1jv9f3w_8Se6hCiwAb5JBjy2geuAxR?key=nCUpXC2iKtVeq12Xi8RnWuyw). Данное поле позволяет ограничить количество записей, которые возвращаются в результате запроса для построения Дашборда.

## Тестирование

Для того чтобы удостовериться, что запрос настроен верно, необходимо нажать на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXcbp8LyKi6t7wwKr6oCoZ7K1bg0aTKcf0j9tsfjgaSwf4hAwVarepSDi_1h6mapWcJVnG_6f2OV41rJuNM5NYM7LC7rlVLZYwX0TqKY3-T7exIoAfQTif6D2hrkSd3bB58_z7CZ?key=nCUpXC2iKtVeq12Xi8RnWuyw), после чего появится таблица с данными, по которым будет построен Дашборд Table.

Для вывода Дашборда на панель, следует нажать кнопку “ОК”.

Для удаления всех заполненных данных, следует нажать кнопку “Отмена”.

Пример:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcn7LwoJ4nO6icit_j1JdAEnnxsA96XIlSkEbU-r2tTq-YGy7O0ahn2DueYSMZg8jMPCfLxEH0g8JM92jIzBCkcX30Ybc8DuO8FkIQoHTU6liGcGz9yJSYYWdGWiUAKJ93CKzyhDg?key=ArGsMFxOZt6u_AfXAA-94iWG" alt=""><figcaption></figcaption></figure>

Для вывода информации о Роботах на Дашборд Table, необходимо внести в соответствующие поля в окне "Настройки виджета" данные:

## Режим конструктора (пример)

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd1YE5TfbtRcRZXqDdRsaSZeYwC80lDheESVsEolNKLP262GW2dawYIXtwkx0T_jMHv102ds4509gQiWOHnMwOwSnMZm3DvknWuYe2e-oraj7OxxM2ZrzQSblDpQsjE8nI1Dbj8Uw?key=ArGsMFxOZt6u_AfXAA-94iWG" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcV7L2WW4hbHn1FrCvuBBY5cTI_Nj6FhD0u4q4GHUaVGUedMviAQOEsqIj127LbAoADN_4JZgc5ahBWLE3jGI08-fQnRD7jKLO7Aoh57Zz6_mTru1zLmUrMz7W9XNNcrUJvG0BI4w?key=ArGsMFxOZt6u_AfXAA-94iWG" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdtjomaDYICQyOshOiFRywgKzDoD2ogaiwuMB66MNh17CRS9UoXMMTYUmFOXpwdXT9LcG2z_tIwqpKOi1E8mf2SrVukb7SqmN8S8mdnYqERSFvRaJB0tTLfk7WwT2Mioodreh6Fbw?key=ArGsMFxOZt6u_AfXAA-94iWG" alt=""><figcaption></figcaption></figure>

Необходимо заполнить поля:

**Таблицы \***

_robots_

**Ряды виджета**

<table data-header-hidden><thead><tr><th width="234"></th><th></th><th></th></tr></thead><tbody><tr><td><strong>Столбец</strong></td><td></td><td><strong>Название ряда</strong></td></tr><tr><td><em>robots.guid</em></td><td></td><td><em>id</em></td></tr><tr><td><em>robots.name</em></td><td></td><td><em>name</em></td></tr><tr><td><em>robots.created</em></td><td></td><td><em>created</em></td></tr><tr><td><em>robots.updated</em></td><td></td><td><em>updated</em></td></tr><tr><td><em>robots.description</em></td><td></td><td><em>description</em></td></tr><tr><td><em>robots.local_robot_name</em></td><td></td><td><em>local_name</em></td></tr></tbody></table>

**Группировка по**

_robots.updated_

**Сортировка**

| **Столбец**      | **Сортировка по** |
| ---------------- | ----------------- |
| _robots.created_ | _ASC_             |

**Количество строк**

_10_

## Расширенный режим (пример)

Необходимо заполнить поле:

**SQL**

```sql
SELECT
    robots.guid AS id,
    robots.name AS name,
    robots.created AS created,
    robots.updated AS updated,
    robots.description AS description,
    robots.local_robot_name AS local_name
FROM
    robots
GROUP BY robots.updated
ORDER BY robots.created ASC;
LIMIT 10
```
