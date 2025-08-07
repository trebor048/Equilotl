$link = "https://github.com/trebor048/Equilotl/releases/latest/download/EquilotlCli.exe"

$outfile = "$env:TEMP\EquilotlCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
