# Установка Sherpa RPA Coordinator на Windows

Перед установкой Sherpa RPA Coordinator необходимо добавить робота типа "Координатор" на экране “Роботы” в Оркестраторе. Подробнее о добавление робота [здесь](../../rabota-v-sherpa-orchestrator/nachalo-raboty-v-sherpa-orchestrator/dobavlenie-robota-v-orkestratore.md).

Дистрибутив [SherpaRPACoordinator.exe](https://sherparpa.ru/downloads/SherpaRPACoordinator.exe) устанавливается под учётной записью администратора и впоследствии запускается как сервис от имени System.

Робот в любом из способов установки (с дизайнером или без) может иметь роль как Attended, так и Unattended, это определяется его лицензией (локальной или полученной из Оркестратора) и способом запуска (локально или через Оркестратор).

Принцип работы Координатора описан [здесь](../../rabota-v-sherpa-orchestrator/nachalo-raboty-v-sherpa-orchestrator/principy-raboty-raznykh-tipov-robotov-v-orkestratore.md#princip-raboty-koordinatora-unattended-robotov).

Установку программы осуществляет инсталлятор, запускаемый файлом  SherpaRPACoordinator.exe. Сохраните данный файл на компьютер и запустите его. В открывшемся окне нажмите кнопку “Дальше”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe2nq4k-zdE0oS7NExb-BPGqqliRt0hOCyZK7EspS0sCwrMtBwWLr5yV5Kd5TY8-r_KP4XVdy5iEoCUa8KuhGvBF3xLnqBsiTCURvQvmImfDzaRFKhDv7xzOEikfEjKeDSczwQIrCSBu1lbddbMIlkOhsM?key=3MRkwEGP2PExxw6V8tqLDLtA" alt=""><figcaption></figcaption></figure>

Затем заполните следующие поля:

* Оркестратор. Домен сервера / IP;
* Оркестратор. GUID координатора.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd5pEcCsPNNc7E7B7k8nG27yw0uGOqmQUsHqrarbcdYxWnTnH4gJl8pGSNrniHo3T3qdrnYhV8IhB-wWBZkUOZfaiHdaSf8qNcKmeIeqvLCOEieJOKzb49ECN4vy5HNx1nDTDZM_28jqcyiJy09FOJNoMzp?key=3MRkwEGP2PExxw6V8tqLDLtA" alt=""><figcaption></figcaption></figure>

GUID Координатора необходимо скопировать из карточки робота. Для этого, откройте экран “Роботы” в Оркестраторе.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcOr0DBr3JOZEAqm-MMlgoaLN1KwHtlhwYozzbo8zyIZn0bkEiaSO2SZaIy22zm3TSOOxt_IkLXv_W0ALIMHG37SBdgvQm2WdqaUPtw6h6PeVnrLz_zhkVpP-dp6KnOa1mcuSUl8y6KwhvUABacwTCP87so?key=3MRkwEGP2PExxw6V8tqLDLtA" alt=""><figcaption></figcaption></figure>

&#x20;Затем откройте карточку робота с помощью кнопки ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXe4RYBp6hfz40ITJp2lbypLg33C1hgWIFENNtKzuTGvFufJq6hDQ7j0KG50IrtAHp2fXKl92vEpeKCUtYjj5DkHGzLXBOns_K5ztjvKP3EPQZkY1rGryU_zuzSRqIlrSKZWHcRXWbfYoRPW8EBdWDqWSTRa?key=3MRkwEGP2PExxw6V8tqLDLtA) и скопируйте GUID, воспользовавшись кнопкой ![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXch2Fyf_GHfkE8oVu8BAGdJIcRCZYsRp_zbaskJRRNItLDa7vuFpNWdSfVgQtyzKHjo9wppm29qDSKXv6nKJ053oZOeL4mo_1xPfhJn7Bwp4u_E0ew_XNPCO6B2HeT3PfYfiqOmLlTcyQax8i_nWiJegD8c?key=3MRkwEGP2PExxw6V8tqLDLtA).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfEqpa66waHAW81SAQuRzNBIyyfx7feiMlDkQFy64dvgfjoRTmQjSO7Y3En-_pgdrdKgg91U2aGYorEWFK2I0j1dclm0inD4j-mmgkM8gIFgdcmkViEQurFHTd_CROaMrRlBP4IIYTrQjtd53CuyS9UqQTz?key=3MRkwEGP2PExxw6V8tqLDLtA" alt=""><figcaption></figcaption></figure>

Далее необходимо проверить подключение. Для этого нажмите кнопку “Проверить подключение” в окне установки Координатора.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdtIla51RBvhSumaIw5q7cUfjawvCCubV2TzDlUGDjWgU8-1ktug0iwsFXOUpSxg5ghxae4c2J38-JoLCP_FqGbd1FBgAgLQujlLxKCxW4H3b6MObT4R_EGNjOjbMSzNBTCLNq1S72umMZwdmQjHda2CZ8?key=3MRkwEGP2PExxw6V8tqLDLtA" alt=""><figcaption></figcaption></figure>

При необходимости можно воспользоваться дополнительными настройками Координатора (с помощью кнопки “Дополнительные настройки”), а также настроить прокси (с помощью кнопки “Настройки прокси”).

При установке можно выбрать один из двух способов создания RDP-подключения:

* FreeRDP - данный способ основан на открытом исходном коде программы FreeRDP. При работе данного способа задействуются минимальные системные требования для инициализации подключения;
* MS RDP - этот способ использует стандартный способ подключения, встроенный в Windows. Более требовательный к ресурсам, но также более стабильный.

Дополнительная настройка  “Сбрасывать зависшие сессии через:” позволяет настроить частоту сброса зависших RDP-сессий. Данный функционал работает если робот завершил выполнение работы, инициировал выход из RDP-сессии и сам закрылся, но операционная система не дала завершить сессию, например,  из-за установки обновлений или из-за другой программы. В этом случае Координатор принудительно завершает процесс RDP-сессии и запускает её заново. Принцип работы данного  функционала заключается в следующем: когда робот работает – он каждые 15 секунд отправляет в Оркестратор сообщение, когда появляется новая работа для этого робота, то в Координатор приходит команда на запуск и время этого последнего сообщения робота. Если время больше указанного, то Координатор сбрасывает текущую сессию и запускает новую.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeDTiEUxl4OiF__IDS747eYjtibvkIvwMfumwR4dtrXo7HELArCkz3H0yAn_oSCCRYEvWUPG_xtjwEIPHSP3SeXU92OqnOLW5V-klhv4LHzdpyml_5g_fgC_BsD_PzREZw38oR7thkT-MiLhWFLfiO5-IWI?key=3MRkwEGP2PExxw6V8tqLDLtA" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXePNy3XLipdxZWLequG8nmSAg40TVAV5q8YIghhuZmYCC5Ipf89MwYUqRHkHKWwuXaYajaeRFgup9Gw4hHs6Xr75o9KnMbjV4t4TppnG5b1zmz0qI5N6O32kzw30wpHr09a69nd70jF4z5O5rNxiXE6j3ih?key=3MRkwEGP2PExxw6V8tqLDLtA" alt=""><figcaption></figcaption></figure>

После настройки дополнительных параметров Координатора нажмите кнопку “Дальше”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfjRT7tPdYvGhEZb971E1bktaEL6Z7as6prvC54C7_rHzgSxyCqnWXJiXRFZJCRVoDEW1nx373nOwS2FfJ6snK5Aovs2Tw8YdODSWPFcox1EoGbSPFKHyi_wSMuUulTtljfoZHHU2C1-OerbIWO4SWmwiPH?key=3MRkwEGP2PExxw6V8tqLDLtA" alt=""><figcaption></figcaption></figure>

Установка завершена.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfqr35hsCncIJtCMTVhptl18AYkL_AynlnA130A6UXusVd3wvt0Q8yUQCi8Gt_SVOMWlM2JEty85hBHXTL8IWqxkYegMqGP0WH_vTjqc18CrzQgho0e4dBxg17K2-4RDXVQ4xi7zr06qMv8UbOZPmAphVeX?key=3MRkwEGP2PExxw6V8tqLDLtA" alt=""><figcaption></figcaption></figure>

После завершения установки Координатора, запускается служба “Sherpa RPA Service”. Чтобы проверить наличие службы “Sherpa RPA Service” необходимо зайти в “Службы” компьютера.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdlkK9Eu1pYLLkBKRXq1F1mJNzaNUGh_JUM7iF-76T9HJUNDtIcBHCPbfv4-6O1RXlNyEgcff4drorkpXJttqBkSqdJkWtsItyHPIvTFCjMLo7mG2ldDnU3XNMXlSaXTpE_RmAIY3BsMk0FQF6RiMIN7Ynk?key=3MRkwEGP2PExxw6V8tqLDLtA" alt=""><figcaption></figcaption></figure>

При проверке наличия службы Sherpa RPA Service в реестре служб, видно, что она установлена и находится в состоянии “Выполняется”.

В настройках свойств “Sherpa RPA Service” предусмотрена возможность выбрать “Тип запуска” (вкладка Общие). Для удобства тип запуска можно установить “Автоматически”.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfdv6tgaxn4YiuTs9NfriSRXUfJ_O5AaQS3FcFUIyofSMiq8BZL_jpz23J--uX6ePTzXDbzQ5Bl2zqQEtQIPn7BDGLCn9p5lUvhIe_rfwkyGSABknM8xv_UuctSSPhDnniNGyT2Y5C6kj6HSjepbegj-JzK?key=3MRkwEGP2PExxw6V8tqLDLtA" alt=""><figcaption></figcaption></figure>
