$link = "https://github.com/Equicord/Installer/releases/latest/download/EquicordInstallerCli.exe"

$outfile = "$env:TEMP\EquicordInstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
