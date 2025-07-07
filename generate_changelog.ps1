$f = 'changelog.md' 
$d = Get-Date -Format 'yyyy-MM-dd'
Set-Content -Path $f -Value ("Update from " + $d)

$log = git log -10 --pretty=format:'---`nCommit: %H`nAuthor: %aN`nDate: %ad`nMessage: %s' --name-only

$blocks = $log -split '---'

foreach ($block in $blocks) {
    $b = $block.Trim()
    if ($b) {
        Add-Content -Path $f -Value $b

        $lines = $b -split "`n"
        $mds = @()

        foreach ($line in $lines) {
            if ($line -match "\.md$") {
                $mds += $line
            }
        }

        if ($mds.Count -gt 0) {
            Add-Content -Path $f -Value 'Modified .md files:'
            $mds | ForEach-Object { Add-Content -Path $f -Value $_ }
        }
    }
}