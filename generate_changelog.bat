bat@echo off
powershell -NoProfile -ExecutionPolicy Bypass -Command "& { $CHANGELOG_FILE='changelog.md'; $Date=Get-Date -Format 'yyyy-MM-dd';"  | Set-Content -Path $CHANGELOG_FILE -Encoding UTF8; Write-Output '# Changelog' | Add-Content -Path $CHANGELOG_FILE -Encoding UTF8; Write-Output \"*$Date*\"| Add-Content -Path $CHANGELOG_FILE -Encoding UTF8; $Commits=git log -10 --pretty=format:'- %h %s'; $Commits | Add-Content -Path $CHANGELOG_FILE -Encoding UTF8 }"


