@echo off
:pre_ini
git pull

:inicio
cls
echo.
echo [1] Instalar SOLO mods
echo [2] Instalar SOLO forge
echo [3] Instalar forge y mods
echo.
set /p accion=...

if %accion% == 1 goto mods
if %accion% == 2 goto forge
if %accion% == 3 goto ambos

:forge
cls
java -jar forge-1.18.2-40.1.0-installer.jar nogui
goto salir

:mods
cls
xcopy mods C:\Users\%username%\AppData\Roaming\.minecraft\mods /D
goto salir

:ambos
cls
java -jar forge-1.18.2-40.1.0-installer.jar nogui
xcopy mods C:\Users\%username%\AppData\Roaming\.minecraft\mods /D
goto salir

:salir
pause
exit