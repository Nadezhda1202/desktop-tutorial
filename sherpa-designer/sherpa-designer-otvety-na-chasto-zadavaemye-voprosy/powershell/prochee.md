---
hidden: true
---

# Прочее

## Логические конструкции

·         if() {} elseif{} else{} – elseif и else не обязательны. [Подробнее](https://docs.microsoft.com/ru-ru/powershell/scripting/learn/deep-dives/everything-about-if?view=powershell-7.1)

·         switch() {0{} 1{} 2{} 3{} default{\}} - Инструкция switch позволяет указать переменную и список возможных значений. Если значение соответствует переменной, выполняется ее блок ScriptBlock. [Подробнее](https://docs.microsoft.com/ru-ru/powershell/scripting/learn/deep-dives/everything-about-switch?view=powershell-7.1)

&#x20;

&#x20;

## Проверка на $null

·         [Подробнее о $null](https://docs.microsoft.com/ru-ru/powershell/scripting/learn/deep-dives/everything-about-null?view=powershell-7.1)

·         $null -eq $value - $null всегда слева

·         В PS в логических выражениях можно использовать командлеты и функции, которые будут работать по логике: if ($null\_object){$False}else{$True}

_\*if($var+=(function)){$True}else{$False} - назначает переменную в условии и проверяет на $null_

_\*if($var+=$var){$True}else{$False}_

## Строки подстановки

_$string = “’объект’”; $string1 = “продан”_

·         “Тестовый’ $string успешно”” $string1” = Тестовый’ ‘объект’ успешно” продан

·         'Тестовый” '+$string+' успешно’’ '+$string1 = Тестовый” ‘объект’ успешно’ продан

·         HereString: @“Тестовый+@’ $string успешно” $string1”@ = Тестовый+@’ $string успешно” $string1

·         F-строки: (“Тестовый {0} успешно {1}” –f $string, $string1) = Тестовый ‘объект’ успешно продан

&#x20;PSCustomObject и прочее

·         PSCustomObject - объект PowerShell хранящий данные по принципу хэш-таблицы, но с ним можно работать как с объектом. [Подробнее](https://docs.microsoft.com/ru-ru/powershell/scripting/learn/deep-dives/everything-about-pscustomobject?view=powershell-7.1)

·         Учетные данные в функции PowerShell

·         [Подробнее о ShouldProcess](https://docs.microsoft.com/ru-ru/powershell/scripting/learn/deep-dives/everything-about-shouldprocess?view=powershell-7.1)

&#x20;

### Ошибка запуска файлов ps1

Ключевой является информация: _“Невозможно загрузить файл ....ps1, так как выполнение сценариев отключено в этой системе”._ Причина ошибки в том, что в системе Windows по умолчанию запрещено запускать пакетные файлы, скрипты PowerShell. Проблема заключается в том, что политика выполнения скриптов запрещает выполнять эти самые скрипты. Узнать текущее значение политики можно командой _Get-ExecutionPolicy_. Чтобы разрешить выполнение файлов с расширением .ps1, то есть чтобы запустить скрипт PowerShell в Windows:

·         Запустите PowerShell ISE как админ

·         Выполните команду _Set-ExecutionPolicy unrestricted_

·         Нажмите _Да_

