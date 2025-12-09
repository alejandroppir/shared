@echo off
setlocal
set TIEMPO=120
echo Simulando tecla F15 cada %TIEMPO% segundos. Presiona Ctrl+C para detener.

powershell -NoProfile -ExecutionPolicy Bypass -Command "Add-Type -AssemblyName System.Windows.Forms; while ($true) { [System.Windows.Forms.SendKeys]::SendWait('{F15}'); Start-Sleep -Seconds %TIEMPO% }"
