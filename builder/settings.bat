@echo off
if "%init%"=="" goto :EOF

set GitPath="C:\Program Files (x86)\Git\bin"
set MSBuildPath="C:\Windows\Microsoft.NET\Framework\v4.0.30319"
set BlatPath="C:\Program Files\Blat"
set NUnitpath="C:\Program Files (x86)\NUnit-2.6.4\bin"

set repoPath="C:\Work"
set repo=GeomBuilder

set gitURL=http://github.com/RomanBelkov/%repo%

set solution=GeomBuilder.sln
set buildFolder="%repoPath%\%repo%\bin\Release"

set cloneLog=clone.log
set MSBuildLog=msbuild.log

set cloneFailure=false
set buildFailure=false
set checkFailure=false

set fileList=%folder%\files.txt
set missingFile=

set testsLocation="%repoPath%\Tests\bin\Release"
set testsOutput=tests.txt

set mailTO=romanbelkov@gmail.com
set emailSubject=Auto-Builder Log
set emailBody=Builder finished. Everything is fine.
set emailFile=%MSBuildLog%
