---
hidden: true
---

# Циклы

·         [Подробнее](https://fixmypc.ru/post/kak-rabotat-s-tsiklami-v-powershell-foreach-object-i-while-na-primerakh/)

·         Отличительной чертой циклов в Powershell является их количество, всего их 7:

\*    Foreach-Object - команда;

\*    Foreach - выражение;

\*    Foreach() - метод;

\*    For - цикл;

\*    While - цикл;

\*    Do-While - цикл;

\*    Do-Until - цикл.

·         ForEach-Object:

\*    ForEach-Object -InputObject (Get-Process) -Process {$\_}

\*    Get-Process| ForEach-Object {$\_.Name}

\*    Get-Process| % {$\_.Name}

\*    Get-Process| foreach {$\_.Name}

\*    Операторы break и continue не работают

·         ForEach:

\*    foreach ($item in $array) {Scriptblock}

\*    Оператор continue минует выполнение оставшейся части скрипта после своего выполнения

\*    В отличие от continue, break останавливает итерации полностью

\*    Outer – если при вложенности циклов foreach нужно выйти из всех:

:outer foreach ($item in $array) {foreach ($item in $array) {…. Break outer ……\}}

·         Метод ForEach:

\*    $collection.Foreach({$PSItem})

·         For:

\*    for (объект; условие; действие) {ScriptBlock}

\*    for ($i=1; $i -le 10; $i++) {Write-Host $i}

\*    Операторы break и continue работают так же

·         While и Do While:

\*    While ($a -le 10) { $a++} – сначала проверка, потом скрипт

\*    Do{$i++} While($i -le 10) – сначала скрипт потом проверка

\*    Повторяют скрипт пока условие выполняется

\*    Операторы break и continue работают так же

·         Do-Until:

\*    Do{$i++} Until($i -le 10) – сначала скрипт потом проверка

\*    Повторяют скрипт пока условие НЕ выполняется

\*    Операторы break и continue работают так же

&#x20;
