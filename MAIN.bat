@ECHO OFF 
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
ECHO A7 - CD, TYPE NUL and DIR /AH to move, create and list all hidden files to then save them in the file  
CD Input
TYPE NUL > "Input Data".txt
DIR C:\ /AH > "Input Data".txt
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
::SETX PATH=%PATH%;C:\My Batch Script Assignment\Processing
SET PATH=%PATH%;C:\My Batch Script Assignment\Processing
PATH
PAUSE

ECHO. 
ECHO Test Program of a new Directory path
Output
PAUSE
