@echo off
if "%init%"=="" goto :EOF

echo Sending EMail...

if %cloneFailure%==true (
  set emailBody=Cloning failed.
  set emailSubject=%emailSubject%
  set emailFile=%cloneLog%
)
 
if %buildFailure%==true (
  set emailBody=Build failed.
  set emailSubject=%emailSubject%
) 
 
if %checkFailure%==true (
  set emailBody=File %missingFile% not found amongst assemblies.
  set emailSubject=%emailSubject%
)  

if %testsFailure%==true (
  set emailBody=Tests failed miserably!
  set emailSubject=%emailSubject%
  set emailFile=%testsOutput%
)  

%BlatPath%\blat.exe -s "%emailSubject%" -body "%emailBody%" -to %mailTO% -attacht %emailFile% 

if errorlevel 1 goto :error

echo Sending succeeded.
goto :EOF

:error
echo Error in sending. Please check your Internet connection and try again.