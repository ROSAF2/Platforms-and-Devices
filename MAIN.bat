@ECHO OFF 
TITLE MAIN
REM This is a comment 
:: The name of the batch script file
REM A paragraph describing the purpose of the script
:: Your name and student ID
REM The course name, your year and semester, and your study stream
ECHO %~nx0 
PAUSE 
CLS 


ECHO A1 - ECHO command to output a line to the screen 
ECHO Francisco Rosas 
PAUSE 

ECHO. 
ECHO A2 - CD \ and MD to go to the root directory and create the folder 
CD \
MD "My Batch Script Assignment" 
PAUSE 

ECHO. 
ECHO A3 - CD to go to the desired directory 
CD C:\"My Batch Script Assignment"
PAUSE

ECHO. 
ECHO A4 - MD to create the folder 
MD Input
PAUSE

ECHO. 
ECHO A5 - MD to create the folder 
MD Processing
PAUSE

ECHO. 
ECHO A6 - MD to create the folder 
MD Output
PAUSE

ECHO. 
ECHO A7 - CD and DIR /AH to move, and list all hidden files, to then save them in the desired file
CD Input
DIR C:\ /AH > "Input Data.txt"
PAUSE

ECHO. 
ECHO A8 - CD \, COPY and DEL to move to C: to copy the file there, then copy it again with the bak extension, and remove the txt file 
CD \
COPY "C:\My Batch Script Assignment\Input\Input Data.txt"
COPY "Input Data".txt "Input Data".bak
DEL "Input Data".txt
PAUSE

ECHO. 
ECHO A9 - CD \ to move to the root directory
CD \
PAUSE

ECHO. 
ECHO A10 - (SET, PATH) The command SET to modify the value of the PATH variable by adding the desired subfolder, to then show the updated path on the screen.
SET PATH=%PATH%;C:\My Batch Script Assignment\Processing
ECHO.
PATH
PAUSE

ECHO.
ECHO A11 - SET and PROMPT to change the "prompt" to show the time (^$T), the string "Hello World" and the ^> sign.
SET PROMPT=$T Hello World $G
@ECHO ON
PAUSE

@ECHO OFF
ECHO.
ECHO A12 - START, CMD, "START" to run the "CMD" command and open up a new instance, and "/T:24" to change to the desired colors 
START CMD /T:24
PAUSE

ECHO.
ECHO A13 - Same as A12 but with the addition of "/K" to run the immediate commands "color" and "prompt" separated by "&"
START CMD /K "PROMPT $V & COLOR 1F"
PAUSE

ECHO.
ECHO A14 - CD to go to the Output folder and DIR with "/AD /ON /B" to list only the foldernames(/B) of all folders (/AD) in alfabetical order (/ON).
CD C:\My Batch Script Assignment\Output
DIR C:\Windows\System32 /AD /ON /B > "Batch Script File Output Data.txt"
PAUSE

ECHO. 
ECHO A15 - DIR /W, /S to list in wide format all folders and subfolders of the C: drive, using ^*.txt to go thorugh all the text files, using seven ? (question marks) to specify the text files with 7-character names and ^>^> to appened them to the desired text file.
DIR C:\ ???????*.txt /W/S >> "Batch Script File Output Data.txt"
PAUSE

ECHO. 
ECHO A16 - RD /S to remove the desired directory with all its subfolders.
RD /s "C:\My Batch Script Assignment"
PAUSE

ECHO. 
ECHO A17 - IPCONFIG to display all the information regarding the netwrok settings.
IPCONFIG
PAUSE

ECHO. 
ECHO A18 - NET USER and NET LOCALGROUP with "/ADD" to add users and create groups respectively, NET LOCALGROUP also let us add users to the group.
NET USER Bob /ADD
NET LOCALGROUP "Awesome Users" /ADD
NET LOCALGROUP "Awesome Users" Bob /ADD
PAUSE

ECHO. 
ECHO A19 - NET USER and NET LOCALGROUP with "/DELETE" to remove the previosly created user and group.
NET USER Bob /DELETE
NET LOCALGROUP "Awesome Users" /DELETE
PAUSE

ECHO. 
ECHO A20 - 
SET PATH=%PATH%;C:\Users\ROSAF2\Desktop
SCHTASKS /CREATE /TN TEST /TR CHECK /SC WEEKLY /D SUN /ST 22:00:00
CHECK
PAUSE
