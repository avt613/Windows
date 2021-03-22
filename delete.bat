@echo off
:: Script to delete all files and folders in the following directories
set todel[0]=%userprofile%\Documents
set todel[1]=%userprofile%\Pictures
set todel[2]=%userprofile%\Downloads

set "x=0"
:Symloop
if defined todel[%x%] (
	call set todelt=%%todel[%x%]%%
	echo %todelt%
	:: Delete all files
	Del %todelt%\* /F /Q
	:: Delete all folders
	for /d %%f in (%todelt%\*) do rd ^"%%f^" /s /q
	set /a "x+=1"
	GOTO :Symloop
)