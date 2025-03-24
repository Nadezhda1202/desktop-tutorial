# Режим «Картинка в Картинке» (PiP)

Режим PiP позволяет Пользователю запускать несколько интерфейсов одновременно. Это означает, что Пользователь может взаимодействовать с одним приложением (например, с веб-интерфейсом) в то время как Робот выполняет свои Задачи в другом окне. Это особенно полезно, когда необходимо выполнять Задачи в GUI-приложениях.

Можно запрограммировать Робота так, чтобы он отслеживал активность Пользователя. Например, если Пользователь начнет работать с каким-то приложением, Робот может автоматически приостанавливать свою Работу, что позволяет избежать наложения действий и конфликта между Пользователем и Роботом.&#x20;

Такой подход значительно упрощает многозадачность и позволяет Пользователям более эффективно использовать инструменты автоматизации в своей повседневной работе.

### Настройка Робота в режиме PiP

Для успешной работы с PiP, необходимо убедиться, что настроены следующие параметры:

1. **Настройки групповой политики:**

Пользователь должен открыть Local Group Policy и перейти по пути \`Computer Configuration\Administrative Templates\System\Credential Delegation\`. Далее, он должен убедиться, что параметр \`Allow delegating default credentials\` установлен в состояние Enabled.

2. **Настройка прав Пользователя:**&#x20;

Пользователь должен участвовать в следующих политиках:

\`Computer Settings\Windows Settings\Security Settings\Local Policies\User Rights Assignment\Allow Log On Locally\`;

\`Computer Settings\Windows Settings\Security Settings\Local Policies\User Rights Assignment\Access this computer from the network\`.

<table data-header-hidden><thead><tr><th width="73"></th><th></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe8yhWINCb2r_AVmVinYYwnXKAWWrXjr5E445GU4UcMdb_G4BfnqpQXHUItGF8A2EY5oyHR6L_NJ4jbZ3jpXEChO-yWcu85I9s_J3oSaZhGGTocUwYTkEBH4Sfyc3oi_R3GmpNrtQ?key=ewmckLbdFrl5Y1peGh6-_AjW" alt="" data-size="line"></td><td>Для активации функции PiP требуются права администратора.</td></tr></tbody></table>

Для запуска PiP:

1. Пользователь должен создать файл PiPClient.dat в следующей директории:

&#x20;     c:\Users\User\AppData\Roaming\Sherpa RPA Data\Setting\\

2. Далее, он должен найти и запустить программу LaunchPiPClient.exe из следующей папки:&#x20;

&#x20;      c:\Users\User\AppData\Roaming\Sherpa RPA\Robot\Remote\PiP\\

### Запуск Робота в режиме PiP

Робота можно запустить в режиме PiP с помощью горячих клавиш. Для этого Пользователь должен:

1\. В Sherpa Assistant в окне «Роботы» выбрать нужного Робота и нажать на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXfc2vAABbP4FzSHLkan_IirlSbTBKCReHlDZXHo2ZCSPBZlFP-OJrftBhlD50aRlI8-WJYGF8-bIx0KEqXILAd9MhEN47tCYvVBr8TzQnPRvAb-2Hh9ukCPMdf5Kn9A9br2Jky4_A?key=ewmckLbdFrl5Y1peGh6-_AjW):

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfnHUDz5iBv0hYYb2Pc9EynIUQHKsksMpsZJvh5cYW1aUz0im0PIBIrexuFqbRsTO1VYrHCTq2yiBZ8jY4e1zE-GPlycjNLRKMBiTAelzfwr3QEHE3ZOGYd_WDaPoxRANeTeR8xwQ?key=ewmckLbdFrl5Y1peGh6-_AjW" alt=""><figcaption></figcaption></figure>

2\. Включить опцию "Всегда запускать в режиме PiP-клиента" и задать горячие клавиши:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcoweyxGE956ugFnFgnVkNsVE4YfE6-Ndg6dJHU_Zt-pwH9V8z3lSqSipGUgBFX_MEr-WsWrJ0s3no_4PogbUwK0ZKg3zI95jlSB-bsGpS5kSd8PWalC2pCNjBf_N0KNjdcfBvs?key=ewmckLbdFrl5Y1peGh6-_AjW" alt=""><figcaption></figcaption></figure>

Поддерживается как синхронный, так и асинхронный запуск.

Также Робота Пользователь может запустить в режиме PiP через блок "Запустить робота" в Sherpa Designer. Для этого он должен:

1\. На панели «Отладка» нажать на кнопку ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXf0WtGJAizg3c5ILR2iL_Fdp_jVHRBO2s3vLSZU24kDfpH539PaXVsEHiFtw6iQvg2fB42InpTOlr-6dvud5NxgRg0wQZrF536cTJXIHEje8KPwqt4LBzmV2QGBgonY_rzkAGo9Fg?key=ewmckLbdFrl5Y1peGh6-_AjW).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc0oLmrsjUa-l4fcnO-13ypkT-kyh7S7SIeGQpfXfza6KgbaHpNJvmVXoccGkdJbhMAvK3WfGWkVk6XJAIyLXxgHvXYrUnXnu7x9oIM6G0opWEHd4hXPM9fDFhKdChcRatGYuj9yQ?key=ewmckLbdFrl5Y1peGh6-_AjW" alt=""><figcaption></figcaption></figure>

2\. Нажать на "Запуск в режиме PiP (Картинка в Картинке)":

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXf1gkU3iJYm7at6TBYk-0RQobUQ5OYv2dJkvKo9REtKFRfLvaTpoBUw68JAiAV7FHLQmFX6DzxFoMNKcBYAjwII_eKZMgUPqKWrJZY6AxIXllVFo2JhWc3YdAjPuOMxjNS_d7RPWw?key=ewmckLbdFrl5Y1peGh6-_AjW" alt=""><figcaption></figcaption></figure>

3\. Подтвердить действие нажатием на кнопку “Да”:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcHy02iolBF8hOLhv6gQtQxz8XV5h32BFP2r1nlRbvRsX8Mf2LAukC99wT3lbBcTWFOPvgAmOylRP8RxWInae-D91Jm4_HqFENNZ9N3BvaVjUSEwxtHm729XCbCWblRSt_ymzqFLQ?key=ewmckLbdFrl5Y1peGh6-_AjW" alt=""><figcaption></figcaption></figure>

<table data-header-hidden><thead><tr><th width="58"></th><th></th></tr></thead><tbody><tr><td><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdhLsK94FWYaXy__d5PpuJle9X9VTsFu5hbCjLMhJwYF1DkG9VpQWERtUmMdIaNkve4jF2hR3ngQRNnIO__r4tRvIRYiovZwE1IHu7Jqrma_n-MIAemfBmDJNsCpqi93MGMzVsqNQ?key=ewmckLbdFrl5Y1peGh6-_AjW" alt="" data-size="line"></td><td>Если Робот не выполняет действия при работе с браузером, проверьте, не открыт ли браузер в основном сеансе.</td></tr></tbody></table>

### Блокировка мыши

При работе в обычном режиме, Пользователь может мешать Работе Робота, особенно если на экране открыты сразу несколько вкладок и/или приложений. Для решения этой проблемы в режиме PiP настроена функция Блокировки мыши.

Блокировка мыши позволяет предотвратить случайные клики мыши в процессе Работы Робота. Однако стоит отметить, что такая функция может создать сложности для самого Робота, например, если требуется взаимодействие с интерфейсом. В таком случае, Робот не сможет выполнить все необходимые действия.

### Работа с окнами и селекторами в режиме PiP

Если у Пользователя возникают проблемы с селекторами при запуске\
Java-приложения в режиме PiP, то рекомендуется проверить разрешение открывающегося окна в Логе Робота по пути:

&#x20;c:\Users\User\AppData\Roaming\Sherpa RPA Data\\!PiPClient\Log\\

Для запуска и проверки Логов:

1. Кликните правой кнопкой по ярлыку Sherpa Assistant и перейдите в папку с программой;
2. Запустите файл \`Remote\PiP\LaunchPiPClient.exe\`;
3. Проверьте Логи в блоке «Найти печати» внутри PiP, чтобы убедитесь в правильной работе сценария.

### Работа с Outlook

Если Outlook открыт на основном рабочем столе, то для Робота, работающего в режиме PiP, может возникать ошибка. Работать с двумя экземплярами Outlook одновременно нельзя. Пользователю необходимо выбрать, где ему удобнее работать: в PiP или на основном рабочем столе.

Текущие ограничения возникают из-за работы COM-объекта Outlook, который может подключаться только к первому экземпляру приложения. Если в системе Пользователя используется Exchange, то можно попробовать установить прямое взаимодействие с ним.

### Запуск автоматизации приложений в невидимом режиме

Автоматизация приложений, таких как Power BI, может быть эффективно реализована в невидимом режиме с помощью технологии PiP (Картинка в Картинке).&#x20;

Реализация режима PiP осуществляется через настройки Пользователя, предоставляя возможность управлять автоматизацией более удобно и эффективно. Для получения более подробной информации и пошаговых инструкций по настройке, вы можете обратиться к документации Microsoft (https://learn.microsoft.com/ru-ru/windows/win32/termserv/child-sessions).
