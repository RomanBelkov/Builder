@echo off
if "%init%"=="" goto :EOF

echo Checking build consistency...

for /F "tokens=*" %%i in (%fileList%) do if not exist "%buildFolder%\%%i" set missingFile=%%i& goto :error

echo Build is correct.
goto :EOF  

:error
echo Not found: %missingFile%.
set checkFailure=true