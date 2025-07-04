powershell# имя файла для хранения changelog
$CHANGELOG_FILE = "changelog.md"

# текущая дата
$Date = Get-Date -Format "yyyy-MM-dd"

# Создаем новый changelog или перезаписываем
@"
# Changelog
*$Date*

"@ | Set-Content -Path $CHANGELOG_FILE -Encoding UTF8

# Получаем последние 10 коммитов
$Commits = git log -10 --pretty=format:"- %s (%h)"

# Добавляем их в файл
$Commits | Add-Content -Path $CHANGELOG_FILE -Encoding UTF8
