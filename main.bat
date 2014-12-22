@echo off
set init=true
set folder=builder

echo Starting...

call %folder%\settings.bat

call %folder%\cleanup.bat

call %folder%\clone.bat
if "%cloneFailure%"=="true" goto :end

call %folder%\build.bat
if "%buildFailure%"=="true" goto :end

call %folder%\buildCheck.bat
if %checkFailure% == "true" goto :end

call %folder%\tests.bat

:end
call %folder%\email.bat

echo Done.