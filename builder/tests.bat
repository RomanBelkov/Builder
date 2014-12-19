@echo off
if "%init%"=="" goto :EOF

echo Running tests...

%NUnitPath%\nunit-console.exe %testsLocation%\Tests.dll > %testsOutput%

echo Done.