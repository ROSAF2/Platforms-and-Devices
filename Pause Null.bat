@ECHO OFF 
REM This is a comment 
:: Another comment 

ECHO %~nx0 
PAUSE 
CLS 

ECHO. 
ECHO A20 - 
SET PATH=%PATH%;C:\Users\ROSAF2\Desktop
SCHTASKS /CREATE /TN TEST /TR CHECK /SC WEEKLY /D SUN /ST 22:00:00
PAUSE


ECHO A7 -  -  
ECHO. 
ECHO Press any key to exit. 
PAUSE>NULL
CLS 