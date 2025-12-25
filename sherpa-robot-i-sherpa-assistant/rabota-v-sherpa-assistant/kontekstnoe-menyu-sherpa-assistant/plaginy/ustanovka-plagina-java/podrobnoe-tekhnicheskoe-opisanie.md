# Подробное техническое описание

Все следующие пути указаны исходя из папки установки Java. Если Java поставляется вместе с программой, то убедитесь, что она так же x86 и пути будут относительно Java в папке с установленной программой.

Установка плагина заключается в следующих действиях:

1. В файле `jre/lib/accessibility.properties` раскомментируется строка:

```
assistive_technologies=com.sun.java.accessibility.AccessBridge
```

2. В папку `jre/lib/ext` копируются файлы из:

```
Robot\Java\
access-bridge-32.jar
jaccess.jar
```

3. В папку `jre/bin` копируются файлы из:&#x20;

```
Robot\Java\
JavaAccessBridge-32.dll
JAWTAccessBridge-32.dll
```
