@echo off
if "%init%"=="" goto :EOF

echo Running tests...

%NUnitPath%\nunit-console.exe %testsLocation%\Tests.dll > %testsOutput%

if ERRORLEVEL 1 goto :error

echo All tests passed successfully.
goto :EOF

:error
set testsFailure=true
echo Tests failed.