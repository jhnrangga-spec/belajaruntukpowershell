powershell -ExecutionPolicy Bypass -File .\monitor.ps1


powershell Set-ExecutionPolicy -Scope Process Bypass; .\route.ps1
