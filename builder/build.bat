@echo off
if "%init%"=="" goto :EOF

echo Build solution...

%MSBuildPath%\MSBuild.exe %repoPath%\%solution% /p:Configuration=Release;VisualStudioVersion=12.0 >%MSBuildLog%
if ERRORLEVEL 1 goto :error

echo Build completed.
goto :EOF

:error
set buildFailure=true
echo Build failed!