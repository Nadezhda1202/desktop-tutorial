# Основные сведения

PowerShell — многофункциональная командная оболочка и язык сценариев, используемый для автоматизации задач в Windows. Его возможности позволяют управлять системой, автоматизировать процессы и создавать интерактивные скрипты.

{% embed url="https://docs.microsoft.com/ru-ru/powershell/?view=powershell-7.2" %}

## Способы отображения данных

* Вывод текста в консоль `[Console]::WriteLine("PowerShell")`
* Показать полноценное окно сообщений (MessageBox)  `[System.Windows.Forms.MessageBox]::Show()`
*   Ввод пользовательских данных (InputBox)&#x20;

    `[Microsoft.VisualBasic.Interaction]::InputBox()`

## Вспомогательные команды

* Вызов справки `Get-Help ForEach-Object -Parameter InputObject`
* Пауза в выполнении сценария (задержка на 15 секунд) `Start-Sleep -s 15`

## Командлеты

Командлеты — это небольшие, целенаправленные команды PowerShell, выполняющие определённую функцию. Они имеют универсальный формат: глагол-существительное (например, `Get-Help`, `Get-Process`, `Start-Service`). Кроме того, у многих командлетов есть короткие псевдонимы для быстрого вызова:

* `Get-Process` → `gps`
* `Out-GridView` → `ogv`

Это помогает ускорить работу и писать компактный код.&#x20;

* Просмотр свойств и методов объекта процесса: `Get-Process | Get-Member`
* Визуальный интерактивный просмотр данных: `Get-Process | Out-GridView`
  * Данные отображаются в виде удобной таблицы, которая позволяет пользователю вручную производить сортировку и фильтрацию элементов по различным параметрам.
  * Достаточно прописать в консоли Sherpa: `$Object | Out-GridView` , и откроется окно с данными, позволяющее просматривать содержимое переменных во время отладки.
  * Легко встроить в код Робота в Sherpa Designer для отображения данных во время выполнений сценария. Каждое такое окно будет отображаться, пока код выполняется (т.е. окно закроется, когда закончится исполнение выполнения сценария или будет нажата кнопка остановки выполнения сценария).&#x20;

[Подробнее](https://winitpro.ru/index.php/2021/04/21/out-gridview-gui-tablica-v-skripte-powershell/) или [здесь](https://forsenergy.com/ru-ru/windowspowershellhelp/html/8f657905-0eaf-4d10-ae93-3217eb97e0e3.htm) или в [документации](https://docs.microsoft.com/ru-ru/dotnet/api/system.windows.controls.gridview?view=netframework-4.8).

## Лексическая структура&#x20;

{% embed url="https://learn.microsoft.com/ru-ru/powershell/scripting/lang-spec/chapter-02?view=powershell-7.5&viewFallbackFrom=powershell-7" %}

## Арифметические операции

{% embed url="https://learn.microsoft.com/ru-ru/powershell/module/microsoft.powershell.core/about/about_arithmetic_operators?view=powershell-7.5&viewFallbackFrom=powershell-7.1" %}

PowerShell поддерживает стандартные арифметические операции и может использоваться для сложных расчетов.&#x20;

Например, измерение скорости выполнения блока команд: `1..10 | Measure-Command -Expression { <выражение> }` , где `Measure-Command` позволяет определить время выполнения определенного выражения.
