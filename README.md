powershell -ExecutionPolicy Bypass -File .\monitor.ps1


powershell Set-ExecutionPolicy -Scope Process Bypass; .\defaultroute.ps1
