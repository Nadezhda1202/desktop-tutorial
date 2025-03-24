# Настройка входных и выходных параметров в свойствах проекта

## Входные параметры <a href="#docs-internal-guid-d38c9f78-7fff-61cd-927f-7bb762959528" id="docs-internal-guid-d38c9f78-7fff-61cd-927f-7bb762959528"></a>

Для работы с входными параметрами, необходимо сделать следующие шаги:

### 1. Откройте свойства проекта

Перейдите во вкладку Проект, кликните правой кнопкой мыши на папку проекта и нажмите во всплывающем меню на строку “Свойства проекта”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdI6Da9OMLtq8-aTZFBIIBHRSYPbpNR-Uhl_00QK-RfaDZaaO4iLvHaorRMgdf1JajuRGWFxMpf-GH5_fYWQgF-pftxZzNdiVvQRnDml2QtVBGr2CrCQ_PBXKtg7gaJrFrgGmQXlQ?key=MVhelRPj_eaVLTQ0AIJ-sOAD" alt=""><figcaption></figcaption></figure>

### 2. Создайте JSON файл

В открывшемся окне Свойства проекта нажмите на кнопку “Создать файл аргументов”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdgzdxEXGK1wEYzmWWZmouzRiUJZQxZa8I4eMfI7frnfy-hbOympgfhjIpF8Rd2uBbmFgEn0zaMWIje1Frrx24TCr-JkCX2_JlqRd6qTOpLfso6pzQOuqCjFjgdz5z5YA_BZo-d_Q?key=MVhelRPj_eaVLTQ0AIJ-sOAD" alt=""><figcaption></figcaption></figure>

Выберите директорию для JSON файла, который будет использоваться для передачи параметров Роботу, введите его название и нажмите кнопку Сохранить:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd6BtEDE038r-n21pF537e2tkRe0d8mcBI--mxJIyBazsiB2nxjvArHR42xM6kNdD98azmIVY_Xo-5wOTn_YDHz-GQ5LN3egATAPYECXLjPnfYlC_QtNmZ4FHNfHRKz-bjW8lhF?key=MVhelRPj_eaVLTQ0AIJ-sOAD" alt=""><figcaption></figcaption></figure>

Ознакомьтесь с предупреждением Sherpa Designer и нажмите кнопку ОК.

### 3. Укажите входные параметры

Нажмите на кнопку “Добавить параметр”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfZVUReqGZEfKdQCA3Ag5_JUKkZIvM3cTTBDLLHi61RmbhPGtxNSeUG4FgSh0XFb0-z5qe-UGHAzd406HNjjeU249W2eg0zIKcHcWectfU7j2S0eiXLN4bOG3y4DVn5W9J5FbMB?key=MVhelRPj_eaVLTQ0AIJ-sOAD" alt=""><figcaption></figcaption></figure>

В нажмите на поле Имя и выберите нужный параметр:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfEsBt3mbMTHqiNuISR5txPcy5UucwL-wqvT7y1UtOxwIVMR22e23GVzY6NB86T7_1-AOmEj2rYfMD9vAWkbAz5M5LOcxPwt-j3pAYDxcOhmGfxXeJMMFDgzx8VCb6M4oPFGY6mIQ?key=MVhelRPj_eaVLTQ0AIJ-sOAD" alt=""><figcaption></figcaption></figure>

Нажмите на кнопку ОК.

### 4. Добавьте аргументы в JSON файл

Откройте созданный JSON файл, созданный на Шаге 2, в выбранной директории.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfh2Kk-u_5Emb6kNiKbBrkBbl3AKi7PAQBd3HQfOOKNcBeJ_TxReo5MUVRFEGTPgZoGRUz9Ss_05VTa6jdQQWrmSoZa40DL_gbrJu_xh8vYTwMfY6qq6uhFs6WzLiOwO5tR8mKfgg?key=MVhelRPj_eaVLTQ0AIJ-sOAD" alt=""><figcaption></figcaption></figure>

Укажите аргументы, которые хотите передать в вашем сценарии. Например,&#x20;

`[{"Name":"file_name","Type":"Text","Direction":"In","Value":"file_name"}]`

### 5. Запустите Робота

Откройте Командную строку, введите путь к файлу `ProcessAgent.exe` и далее команду:

`ProcessAgent.exe -args "путь к файлу аргументов" "путь к файлу .robot"`

где:

* `-args` — ключ командной строки (параметры из JSON файла).
* `"путь к файлу аргументов"` — это полный путь к JSON файлу, который был создан на Шаге 2.
* `"путь к файлу .robot"` — это путь к файлу сценария Робота.

Например,

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXei8e-0DW_8LsrQJBy8a4LvqoR12_okO25YUyjPwO-iqiIAWXpB6Zze78znS9UVZkFwYKhRCsPqMDJCRAYq7QWcxv29eB6zjkpo6c2eoA0JTiJnITbgP_jyaVDSD2B6HvHZqNej?key=MVhelRPj_eaVLTQ0AIJ-sOAD" alt=""><figcaption></figcaption></figure>

<table data-header-hidden><thead><tr><th width="53"></th><th></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcyRBTAi8cYOivyW1IKyutwXs8k36sklbv8f3Ax3odSnRS2QNq3FlcOsE1Zd3BsvKT4sTmg1RsG6bmq2_WxXsGaNyroCVc5KGsVRPQnniPgPH10HA0_jAor6Z1GnDyaPviGl7JO5Q?key=MVhelRPj_eaVLTQ0AIJ-sOAD" alt="" data-size="line"></td><td>Путь к файлу <code>ProcessAgent.exe</code> можно найти кликнув правой кнопкой мыши по ярлыку Sherpa Assistant на рабочем столе и выбрать "Расположение файла".</td></tr></tbody></table>

## Выходные параметры

Для работы с выходными параметрами, необходимо сделать следующие шаги:

### 1. Откройте свойства проекта

Перейдите во вкладку Проект, кликните правой кнопкой мыши на папку проекта и нажмите во всплывающем меню на строку “Свойства проекта”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdI6Da9OMLtq8-aTZFBIIBHRSYPbpNR-Uhl_00QK-RfaDZaaO4iLvHaorRMgdf1JajuRGWFxMpf-GH5_fYWQgF-pftxZzNdiVvQRnDml2QtVBGr2CrCQ_PBXKtg7gaJrFrgGmQXlQ?key=MVhelRPj_eaVLTQ0AIJ-sOAD" alt=""><figcaption></figcaption></figure>

### 2. Создайте JSON файл

В открывшемся окне Свойства проекта нажмите на кнопку “Создать файл аргументов”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdgzdxEXGK1wEYzmWWZmouzRiUJZQxZa8I4eMfI7frnfy-hbOympgfhjIpF8Rd2uBbmFgEn0zaMWIje1Frrx24TCr-JkCX2_JlqRd6qTOpLfso6pzQOuqCjFjgdz5z5YA_BZo-d_Q?key=MVhelRPj_eaVLTQ0AIJ-sOAD" alt=""><figcaption></figcaption></figure>

Выберите директорию для JSON файла, который будет использоваться для передачи параметров Роботу, введите его название и нажмите кнопку Сохранить:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd6BtEDE038r-n21pF537e2tkRe0d8mcBI--mxJIyBazsiB2nxjvArHR42xM6kNdD98azmIVY_Xo-5wOTn_YDHz-GQ5LN3egATAPYECXLjPnfYlC_QtNmZ4FHNfHRKz-bjW8lhF?key=MVhelRPj_eaVLTQ0AIJ-sOAD" alt=""><figcaption></figcaption></figure>

Ознакомьтесь с предупреждением Sherpa Designer и нажмите кнопку ОК.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd5u1WaTn4W-XnADYDLs1g9OzB5A7nUyODcJG6pWc4DDdz8I0n8aLC9bQ7rXwtx3T5AXMl5FamacZ7rTlKXWMgG5SmfSu1EFZ8O3EqvipRqbbgu51mDFlTvjZbcxw-Rl4B-NQc9Ww?key=MVhelRPj_eaVLTQ0AIJ-sOAD" alt=""><figcaption></figcaption></figure>

### 3. Укажите выходные параметры

Перейдите во вкладку Выходные параметры. Нажмите на кнопку “Добавить параметр”. Нажмите на поле Имя и выберите нужный параметр:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdjTbvEK9S0s0W2b0-Q0TeTPVvb0KH4lGpFrNE6KIa6VlF8hruDZAhF6p78V-0kKdpCRLOu2sjUWWJ0zFiR5e6CHdSUFcsY35VwaXik1IYMx3eYouV-sa0CNTMlKu8ni4r85TC7?key=MVhelRPj_eaVLTQ0AIJ-sOAD" alt=""><figcaption></figcaption></figure>

Нажмите на кнопку ОК.

### 4. Добавьте аргументы в JSON файл

Откройте созданный JSON файл в выбранной директории:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfh2Kk-u_5Emb6kNiKbBrkBbl3AKi7PAQBd3HQfOOKNcBeJ_TxReo5MUVRFEGTPgZoGRUz9Ss_05VTa6jdQQWrmSoZa40DL_gbrJu_xh8vYTwMfY6qq6uhFs6WzLiOwO5tR8mKfgg?key=MVhelRPj_eaVLTQ0AIJ-sOAD" alt=""><figcaption></figcaption></figure>

Укажите аргументы, которые хотите передать в вашем сценарии. Например,&#x20;

`[{"PathData":"14.03.2025","Type":"Text","Direction":"Out","Value":"PathData"}]`

### 5. Запустите Робота

Откройте Командную строку, введите путь к файлу `ProcessAgent.exe` и далее команду:

`ProcessAgent.exe -args "путь к файлу аргументов" "путь к файлу .robot"`

где:

* `-args` — ключ командной строки (параметры из JSON файла).
* `"путь к файлу аргументов"` — это полный путь к JSON файлу, который был создан на Шаге 2.
* `"путь к файлу .robot"` — это путь к файлу сценария Робота.

<table data-header-hidden><thead><tr><th width="51"></th><th></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcyRBTAi8cYOivyW1IKyutwXs8k36sklbv8f3Ax3odSnRS2QNq3FlcOsE1Zd3BsvKT4sTmg1RsG6bmq2_WxXsGaNyroCVc5KGsVRPQnniPgPH10HA0_jAor6Z1GnDyaPviGl7JO5Q?key=MVhelRPj_eaVLTQ0AIJ-sOAD" alt="" data-size="line"></td><td>Путь к файлу <code>ProcessAgent.exe</code> можно найти кликнув правой кнопкой мыши по ярлыку Sherpa Assistant на рабочем столе и выбрать "Расположение файла".</td></tr></tbody></table>
