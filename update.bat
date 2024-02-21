echo Instalation Update!
timeout 2
"C:\\Program Files\\WinRar\\winrar.exe" x -O+ -IBCK %~dp0UpdatePath.zip %~dp0
echo Instalation Complete!
timeout 2
del %~dp0UpdatePath.zip
@echo off
start %~dp0NearestStage.exe.lnk