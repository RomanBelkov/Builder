@echo off
if "%init%"=="" goto :EOF

echo Cloning repo...

%GitPath%\git clone %gitURL% %repoPath% >nul 2>%cloneLog%

if ERRORLEVEL 1 goto :error

echo Cloning completed.
goto :EOF

:error
set cloneFailure=true
echo Error cloning repo.