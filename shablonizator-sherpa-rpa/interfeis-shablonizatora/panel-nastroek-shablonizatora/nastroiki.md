# Настройки

Шаблонизатор использует несколько видов модулей для извлечения данных из исходных файлов.&#x20;

## **OCR модуль**

**OCR модуль** — модуль, которым будет производиться распознавание текста.

В платформу Sherpa RPA интегрированы несколько OCR-модулей. Два из них поставляются вместе с роботом: Tesseract OCR и Microsoft OCR. Данные модули могут работать офлайн, без подключения к интернету).

**Tesseract OCR** — это движок оптического распознавания символов (OCR) с открытым исходным кодом, является самой популярной и качественной OCR-библиотекой. OCR использует нейронные сети для поиска и распознавания текста на изображениях.

**Yandex Vision и ABBYY OCR** – онлайн-модули, которые используют функции соответствующих облачных сервисов.

**Yandex Handwriting** — модуль, позволяющий распознавать рукописный текст.

**Microsoft OCR** — модуль, позволяющий распознавать текст на изображениях и сканированных документах с помощью оптического распознавания символов (OCR).

**OCR Space** — модуль, позволяющий распознавать кириллический шрифт на изображениях формата .jpg.&#x20;

&#x20;**ABBYY FineReader** – это коммерческий оффлайн-модуль, использование которого требует отдельной лицензии.

Платформа Sherpa RPA позволяет настроить работу сценария с распознаванием изображений и переключаться между этими OCR-модулями в любой момент времени.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc5wQm5BnR3s0rrtVVagBUFOa9bQZfBIGLCOu05ud8fT8ATCmSn1H90gPDz2IdKDFaQOcY-yhqREATWytKHV25ANB49OjFMfmLiGJLXaByiEfkOSOUv1cgPEovKNE2fpqmN-vVhykU7P5YGuWoeVeYF3PLq?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

## **OCR масштаб**

**OCR масштаб** — параметр, позволяющий улучшить качество распознавания, если документы имеют плохое разрешение. &#x20;

В случае высокого и среднего качества сканированного документа рекомендуется оставить значение масштаба равное «2».

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeODRWoGcrgKJuR5Tg5DSfosGZQ7_N-MMMx7jam6ju6zV9I3dAn8LV7H2eFIdv5Z4uayMe5DpnCLWQbR70F8TjfKJXEfBbXGnETQegzf2FYDIDIEZCO2b7iEn5vG51TzFihUBMW2_WSNijbZWATrYOccpM?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

## **Язык распознавания**

**Язык распознавания** – параметр, позволяющий увеличить точность распознавания документа. Также, можно задать несколько языков, использовав в качестве разделителя запятые.

При выборе настройки “Язык распознавания” открывается выпадающий список, в нем с помощью флагов можно отметить нужные для распознавания языки.&#x20;

&#x20; &#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcXS_sm-jr2gOHL4LGT5GBdpvdGX-DTZrBiJCLARfVgvm2uJ52I1RMM14eofPH2BnmG82Q_enWfJnWsnwCSD7WyrCBb6zXnwZIOyhW3IYT6su3dDETSWSEo5c_mDasPbnqDAWacNtGc-u0sKQ0cO2VW9Ohq?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXctHB-ncF3mH3N6q3zfbeROXQRfeQfx4rcOwtTeSxcs4y-E9VrYdny4dCOrbQh_LWzGQ0WkyctjIIAU26nPDJBn3r7UzxjyzpA_kKrp30QStWtscfvT62yfrTQYi6vzwI6vY3abmGuAocpkp5H8Sm5OInQ?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXepdn4YDHk7SxgYYuYpGBiIZlArKMCUvMAx-QqHQmZtW-AAI9WAZZJ6S_z34YihcLns9ybM6xyvmwIY_EhmYyf5pfatZpXKe4ha7LMt9GmtzotYjvEPtUtu-GchBbSHObTR1VFHPqhh2D3YBGo2t7Mt-E8?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

## **Язык распознавания для якорей**

**Язык распознавания для якорей** – параметр, позволяющий указывать конкретный язык распознавания для якорей. Также, можно задать несколько языков, использовав в качестве разделителя запятые.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcdw-kgfNrAJlKhOznCM2DCGrdh_aefm5HxXTX6vNvs6MBvUDKih9-UkmVYLE2g3M2PzmVYk6QUGgrPTCCfrgXD1JFO5P31n29ofSY_-eDH_qvoLV3b9wUpRoOSaHjtk2VzAjP0WaxGyAuS_U6h707BDHgd?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXevYXKTicS68HhbP6giiAZPiuQ_oFNY-mH0jzzhT_7zST3hM5ZYAGdt1jlaXrVZ4zTDw2NlPP2A3u6eO4tKctP_ULe_1yjJLFlBfxUIjw24vS6SvDUFJ3G5ylYcqfsVD9LvDgPHXXdUckKMmVmoBWdNpW7l?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcKSPKZzDrdFIin2kpGn21cCIlRwoWJrr3bRPhwWrOHQzx-_rdjjjDS-wj_3OElbz9oVkhSGxne1q93bBXIBGjKGZ2NC1GBSYSmfrlkY8cnOCW2vuA9meGdMydpbTCCH-G_Bfy1CfookFiXOokAXqXCmutP?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

## **Прямое извлечение текста из PDF**

**Прямое извлечение текста из PDF** – параметр, позволяющий управлять прямым извлечением текста со страницы.&#x20;

Возможные значения:

* No - отключено;
* Yes - используется только прямое извлечение текста;
* Auto - автоматический режим (если на странице нет текста, то будет реализовано распознавание текста с заданным OCR модулем).

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcTbZTMMsjjRsaCksiR05t4XqDcf1f2QSQJ2Au4sxpbH-woIASPtzQKw9YmCCNuB2ZQMJqRrN6lpdsMHCm_3kRp6HUnzEsA4xqN5WPVlxZtUhK4pgCD3wZdLcrRO67_QOSX6FFX9K8-dfRPoC0tDB1BO8g?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

## **OCR размер ячейки по горизонтали**

**OCR размер ячейки по горизонтали** – параметр, позволяющий указать делитель по горизонтали, по которому определяются ячейки таблиц на странице. Значение должно быть больше или равно 1.

Размер ячейки определяется как размер изображения, деленное на это значение.

Шаблонизатор использует два параметра (по горизонтали и по вертикали) для более точного определения таблиц.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeuLDyo4CtrKvGUsvsVPECC8lYYHY85JaQ9v2OaAkjbrOHvNiEJw_KlH3l9cjc-0NYZTg5iV40k7-MZqf68r6dXv0CCKCMqNbV4YvMS_wemZWIRd04yxnhSgZ5yGaGGwICpNvSF_ODxa4ifyX1Xm4C2CDJr?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

По умолчанию заданы параметры:

40 – OCR размер ячейки по горизонтали

Это значение является оптимальным при распознавании документов со стандартными (или близкими к стандартным) размерами ячеек таблиц.

Рекомендуем оставлять эти значения без изменений и менять их только в случае некорректного распознавания (после проверки).

Если при заданных параметрах (значение по горизонтали 40) таблица не будет распознана, то алгоритм Шаблонизатора увеличит это значение на 10 автоматически и осуществит попытку повторно.

## **OCR размер ячейки по вертикали**

**OCR размер ячейки по вертикали** – параметр, позволяющий указать делитель по вертикали, по которому определяются ячейки таблиц на странице. Значение должно быть больше или равно 1.

Размер ячейки определяется как размер изображения, деленное на это значение.

Шаблонизатор использует два параметра (по горизонтали и по вертикали) для более точного определения таблиц.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeuLDyo4CtrKvGUsvsVPECC8lYYHY85JaQ9v2OaAkjbrOHvNiEJw_KlH3l9cjc-0NYZTg5iV40k7-MZqf68r6dXv0CCKCMqNbV4YvMS_wemZWIRd04yxnhSgZ5yGaGGwICpNvSF_ODxa4ifyX1Xm4C2CDJr?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

По умолчанию заданы параметры:

20 — OCR размер ячейки по вертикали.

Это значение является оптимальным при распознавании документов со стандартными (или близкими к стандартным) размерами ячеек таблиц.

Рекомендуем оставлять эти значения без изменений и менять их только в случае некорректного распознавания (после проверки).

Если при заданных параметрах (значение по вертикали 20) таблица не будет распознана, то алгоритм Шаблонизатора увеличит это значение на 10 автоматически и осуществит попытку повторно.

## **Фильтр горизонтальных линий**

**Фильтр горизонтальных линий** – параметр, указывающий процент, меньше которого линии будут проигнорированы. Определяется как отношение горизонтальной линии к ширине изображения. Данный параметр используется для атрибутов.

&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXe_moWdrBt7Yu7IPx42Ru-7CjPvh307F0O7RtipvKYYG7Y2RpzSalmRGzkrbrMHLZ7OM625wNdxZaJdjOH_WFHk2d-sT6eSq8yx836xHAfTc9XOcKft9ZpW8KkfEfeNRUYSAOB1x0qrqQO2WOxAwBcc0NPj?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

По умолчанию значение данного параметра равно 5.

Часто в сканированных документах присутствуют линии, не являющиеся границами таблиц (различные артефакты, которые необходимо отфильтровать). При заданном параметре все лишние артефакты (линии, нарисованные ручкой или линии, появившиеся при некачественном сканировании) будут проигнорированы.

## &#x20;**Автоповорот страницы**

**Автоматический поворот страницы** – параметр, позволяющий автоматически разворачивать страницы на угол, кратный 90 градусам (90̊, 180̊ и 270̽). Автоповорот страницы не разворачивает документ на малые углы. По умолчанию значение параметра «True», рекомендуем оставлять его без изменения.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXc8YCtl42jeY1ZMlmiMgBC7JrNrRnnQOwfUCzwavSCXsjGWlMKLl_GWETv-i3uM9jyUIeKEYOjaCJxiKItIX_ErWozZ33Uj7eXSMh05ZHWCseBYyVYMccPZiwi_c18SxXExqdqENuZFukRvS0BJ2riG4kTR?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

## **Автовыравнивание страницы**

**Автоматическое выравнивание страницы** – параметр, позволяющий выравнивать содержимое страницы при некорректном сканировании листа. В отличие от Автоповорота страницы, Автовыравнивание разворачивает документ на малые углы.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXda6PQy5xsTHp9opR5iiI0PJ3nom1j5HS5lNVVt8U9H11rY6LptbvxJfjO83frSjvkq-q3DIkDfG5S3xWMND7nQFPblSWQ6xw2FTi1CFDGXzUB3I6RK7EOBrdp7rXOVE6y_I2MdLwJuMGTmrqYn-yio_rBP?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

При автовыравнивании страницы распознается самая длинная OCR линия, имеющаяся на странице (чаще всего это линия из таблицы или атрибута) и определяет угол ее наклона относительно горизонтали. После этого происходит разворот документа, чтобы найденная линия стала параллельна линии горизонта.

По умолчанию значение параметра «True», рекомендуем оставлять его без изменения.

Этот параметр нежелательно использовать в случае, если сканированный документ сильно повернут и угол поворота составляет более 40̊, в этом случае Шаблонизатор не сможет распознать, в какую сторону нужно выровнять документ и выдаст ошибку. В такой ситуации можно использовать параметр Корректировка угла.

## **Критерий длины. Автовыравнивание страницы**

**Критерий длины. Автовыравнивание страницы** – параметр, позволяющий ограничивать длину линии. Данный параметр используется как делитель для ширины страницы. Если длина линии меньше вычисленного значения, то она пропускается в алгоритме. Если страница изначально сильно повернута, то следует указать или большее значение или 0 для отключения параметра. По умолчанию значение равно 10.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdlbXmtu8R3lNyHzLilPNBSmci8mciEeD3VD3GcmmFY_8huT6pS32CxgI_8-NztST1gSuQ3NQaax3ctV2vAPVBVEUn2lVaGVcf2okdk6ghQ-uFASQYD4u4PuIlJKdpoU2gsI1Ue6T0ImRHuRvNulE5T3JY?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

## **Обрабатывать PDF аннотации**

**Обрабатывать PDF аннотации** – параметр, позволяющий включить обработку аннотаций PDF-файла.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfPhgHchoQLzDVrM8gpP7bV6_wU1crvrDI5W375BKwtxUwpRjHnlGKkSB0bV6GNGCLjODJ7ApbLHsvHywq675xziuetILqiscbFY98AZrdZA53O_HzecWd0xDfA3naXR9Eczg3-JFAe30uo8X9sCIqpUKb0?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

## **Обрабатывать все страницы**

**Обрабатывать все страницы** – параметр, позволяющий включить обработку всех страниц в документе. Этот режим не делает проверку якоря LastPage.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXco1AF07qC1FOGG9KiTP2YCyM9_TPg0RYwcC8LO_edCv1gUdTy4wsHgTZ3o6VWDpqUhNpNfqkJNdSbhvVIqcnIf-PZDVmLAglmKxKh0dI07DedzwEG662e_Y2hDxG-RoRjytdaMHzt2_tfdE6lPWK8LocU?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

## **Склеивать блоки**

**Склеивать блоки** – параметр, позволяющий склеивать рядом стоящие блоки в один блок.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdf_E8VepS9tELbMRj8QiVphr-Igvetv5ZuQoINYt6T7KUx0UitmAeFkhXQ_2dLQLaScurRiePzaZOoxmKzU1HV6k1g1H2IvEbbuWTW60-ZeiTUhsMO5LOM7BJxn4lNCJvyHHzpZ7wfd9GyaZkQDCW-YZCA?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

## **Разделить блоки**

**Разделить блоки**  – параметр, позволяющий разделить блоки содержащие пробелы на блоки без пробелов.&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfmTM-LDK35fcKaQjEVGvobE7Ty_klTs4QqRbRL7vKDOCPKX3tieIjj92WIlFbSSnFsOv60o51nanUZwtAlsL-id72ottxhXK1KAfvnTj3Gk0kuxWjiMLFSDzASG-sEV1pz3gk5m-tAtR-QpUHybE8zGUY?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

## **Игнорировать ошибки якорей**

**Игнорировать ошибки якорей**  – параметр, позволяющий отключить генерацию ошибок, если якори (любые) не найдены. В этом случае, область якоря считается нулевой.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXdyhUZdP_3zmcQqyApO__Z-i9Tp-tlxdEOha832BpFnyrPb70sycLFi-wCpsdKlPJUs2zX1g1uI8r6UkDeoAoO3vDd_IB51Rt-ld-NdpFzTuBPc4UnhzY6-mO1HgfFkBBXQ3ykXFospXtHdxvWRYPlGX-V7?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

## **Удалить блоки превышающие размер**

**Удалить блоки, превышающие размер** – параметр, позволяющий удалить блоки превышающие указанный размер. Поле для ввода расположено рядом с наименованием параметра. Если указать одно число, то будут удалены блоки, у которых ширина или высота будут больше этого значения. Также, можно указать значения через запятую в формате: ширина, высота.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXd4vuw2DpYEMkFAV9TYbZH9t0d0zxz6tqRNZ0FcYcbHlOeDNydWBoH45ILLfFxamzdVsyfTFeUwm90wW55xkTB9CtPrkPqyXz6nK1SPuVKIKEuJ4tHV3pETXA5IF8mUMLe3WO_XHu7UGMzlNGh7ah8V5j8?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

## **Процент изображения для распознавания**

**Процент изображения для распознавания** – параметр, позволяющий указать процент изображения, который пойдет на распознавание OCR движком. Поле для ввода расположено рядом с наименованием параметра. Значение необходимо записывать как одно число или два числа через тире.&#x20;

Например:&#x20;

30 (0-30) - будет распознано 0-30% изображения;\
30-70 - будет распознана часть изображения;\
70-100 - будет распознано нижние 30% изображения.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfm7amC63dxhA-CBceKRrVtMhoRhN_7f_zO80lu_2mog_QZli2l9namZN9IxmUm8eezpQg1mymjAKRGFoE-zSFwC913Z1BTuLZIcSgfgYv6NmFEtqnF_LqtsTPNASyncNv4H96uOVmzmTVlji71jwkvjopC?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>

## **Найти печать**

**Найти печать** – параметр, позволяющий включить поиске печатей на документе. В атрибуты будет добавлен ключ “Stamps”, который возвратит массив объектов StampItem со свойствами X, Y, Width, Height, PageIndex.

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfB8bnXeFBCqZIcNg6U8idxJzDK4mWEEKh2iDAYTjp-XamKbY4BCdahYdcAzrwCDK3XOi30_GqdcvTEnYd49irOw2wdq59qN7LYuj5nYNc6eIj0NrUMOGJhVx9hke0NwUibP254cFwvFN2i4ehC_bsxKIs?key=MBC6hVHKTrgfBdJNL64AXQ" alt=""><figcaption></figcaption></figure>
