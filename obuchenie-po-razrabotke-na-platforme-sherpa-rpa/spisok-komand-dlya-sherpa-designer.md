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

### 4. Обновление всех удаленных пакетов при запуске

* _Команда:_ `-updateremotepackages`
* _Пример:_
  * `DiagramDesigner.exe -updateremotepackages "myproject.sherpa"`

### 5. Обновление всех блоков в проекте

* _Команда:_ `-updateallpackages`
* _Пример:_
  * `DiagramDesigner.exe -updateallpackages "myproject.sherpa"`

### 6. Обновление только указанного пакета по имени

* _Команда:_ `-updatepackage "имя пакета"`
* _Пример:_
  * `DiagramDesigner.exe -updatepackage "файловая система" "myproject.sherpa"`

> Внимание: После выполнения обновлений Sherpa Designer не сохраняет проект автоматически. Для сохранения изменений необходимо вручную нажать кнопку "Сохранить".

### Использование несколько команд одновременно

* _Пример:_
  * `DiagramDesigner.exe -updateremotepackages -updateallpackages "myproject.sherpa"`

> После выполнения команд необходимо самостоятельно нажать "Опубликовать" или "Сохранить".
