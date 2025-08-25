# Список команд для Sherpa Designer

### 1. Обновление всех удаленных пакетов

* _Команда:_ `-updateremotepackages`
* _Примеры:_
  *   Для обновления удаленных пакетов с указанием проекта:

      `DiagramDesigner.exe -updateremotepackages "myproject.sherpa"`
  *   Для обновления удаленных пакетов без указания проекта:

      `DiagramDesigner.exe -updateremotepackages`

### 2. Обновление блоков на всех палитрах

* _Команда:_ `-updateallpackages`
* _Пример:_
  * `DiagramDesigner.exe -updateallpackages "myproject.sherpa"`

### 3. Обновление конкретной палитры

* _Команда:_ `-updatepackage "имя палитры"`
* _Пример:_
  * `DiagramDesigner.exe -updatepackage "файловая система" "myproject.sherpa"`

### Использование несколько команд одновременно

* _Пример:_
  * `DiagramDesigner.exe -updateremotepackages -updateallpackages "myproject.sherpa"`

> После выполнения команд необходимо самостоятельно нажать "Опубликовать" или "Сохранить".
