@echo off
if "%init%"=="" goto :EOF

echo Removing the old repo...

if exist %repoPath% goto :remove

echo Old repo not found.
goto :EOF

:remove
rmdir /s /q %repoPath%
echo Removal completed.