PowerShell "Remove-Item -Path C:\ansible-utils\StartupLog.txt -ErrorAction SilentlyContinue"
PowerShell "Set-ExecutionPolicy Unrestricted -Scope CurrentUser; C:\ansible-utils\delete-temp-files.ps1" >> "C:\ansible-utils\StartupLog.txt" 2>&1
