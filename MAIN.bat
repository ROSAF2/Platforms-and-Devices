@ECHO OFF 
TITLE MAIN

:: MAIN
:: The purpose of this script is to assess the research and learning skills of the BIT students
:: on the windows command line by creating a batch script file that carries out twenty challenging tasks.
:: Francisco Rosas 1000068686
:: Platforms & Devices, first year, first semester.
ECHO %~nx0 
PAUSE>NUL

ECHO.
ECHO A1
ECHO ECHO
ECHO To output a line to the screen. 
PAUSE>NUL
ECHO.
ECHO Francisco Rosas 

PAUSE>NUL
ECHO. 
ECHO A2
ECHO CD \ and MD 
ECHO To go to the root directory and create "My Batch Script Assignment" folder. 
PAUSE>NUL
ECHO.
CD \
MD "My Batch Script Assignment"

PAUSE>NUL
ECHO. 
ECHO A3
ECHO CD 
ECHO To go to the created directory.
PAUSE>NUL
CD C:\"My Batch Script Assignment"

PAUSE>NUL
ECHO. 
ECHO A4
ECHO MD
ECHO To create the Input folder.
PAUSE>NUL
ECHO.
MD Input

PAUSE>NUL
ECHO. 
ECHO A5
ECHO MD
ECHO To create the Processing folder. 
PAUSE>NUL
ECHO.
MD Processing

PAUSE>NUL
ECHO.
ECHO A6
ECHO MD
ECHO To create the Output folder.
PAUSE>NUL
ECHO.
MD Output

PAUSE>NUL
ECHO.
ECHO A7
ECHO CD and DIR /AH 
ECHO To move in the Input folder and list all hidden files in the C:\ directory, to then save them in "Input Data.txt" using the ^> symbol.
PAUSE>NUL
ECHO.
CD Input
DIR C:\ /AH > "Input Data.txt"

PAUSE>NUL
ECHO.
ECHO A8
ECHO CD \, COPY and DEL
ECHO To move to C: to copy "Input Data.txt" there, then copy it again changing it to a bak extension, to finally remove it and keep the bak file.
PAUSE>NUL
ECHO.
CD \
COPY "C:\My Batch Script Assignment\Input\Input Data.txt"
COPY "Input Data".txt "Input Data".bak
DEL "Input Data".txt


PAUSE>NUL
ECHO. 
ECHO A9
ECHO CD \ 
ECHO To move to the root directory.
PAUSE>NUL
ECHO.
CD \

PAUSE>NUL
ECHO. 
ECHO A10
ECHO SET and PATH
ECHO The SET command to modify the value of the PATH variable by adding the Processing subfolder to it, to then show the updated path on the screen.
PAUSE>NUL
ECHO.
SET PATH=%PATH%;C:\My Batch Script Assignment\Processing
ECHO.
PATH

PAUSE>NUL
ECHO.
ECHO A11
ECHO SET, PROMPT and @ECHO ON
ECHO To change the "prompt" to show the time (^$T), the string "Hello World" and the ^> sign, to then temporarily reveal it by turning ECHO on.
PAUSE>NUL
ECHO.
SET PROMPT=$T Hello World $G
@ECHO ON
ECHO.

@ECHO OFF
PAUSE>NUL
ECHO.
ECHO A12
ECHO START and CMD "/T:24"
ECHO "START" to run the "CMD" command and open up a new instance, and "/T:24" to change to the desired colors. 
PAUSE>NUL
ECHO.
START CMD /T:24

PAUSE>NUL
ECHO.
ECHO A13
ECHO CMD /K, COLOR and PROMPT ^$V
ECHO Same as A12 but with the addition of "/K" to run the immediate commands "color" and "prompt" separated by "&", using ^$V to show the version of windows.
PAUSE>NUL
ECHO.
START CMD /K "PROMPT $V & COLOR 1F"

PAUSE>NUL
ECHO.
ECHO A14
ECHO CD and DIR /AD /ON /B 
ECHO To go to the Output folder and list only the foldernames(/B) of all the directories (/AD) in alfabetical order (/ON), and ^> to save it in "Batch Script File Output Data.txt".
PAUSE>NUL
ECHO.
CD C:\My Batch Script Assignment\Output
DIR C:\Windows\System32 /AD /ON /B > "Batch Script File Output Data.txt"

PAUSE>NUL
ECHO. 
ECHO A15
ECHO DIR /W /S
ECHO Using DIR to list in wide format all folders of the C: drive, /S to go thorugh all the subfolders, seven ? (question marks) to specify the text files with up to 7-character names and ^>^> to appened them to the previous created text file.
PAUSE>NUL
ECHO.
DIR C:\???????.txt /W /S >> "Batch Script File Output Data.txt"

PAUSE>NUL
ECHO. 
ECHO A16
ECHO CD \ and RD /S
ECHO To move to the C: drive for convenience and remove the desired directory including all its subfolders.
PAUSE>NUL
ECHO.
CD \
RD /S "C:\My Batch Script Assignment"

PAUSE>NUL
ECHO. 
ECHO A17
ECHO IPCONFIG
ECHO To display all the information regarding the netwrok settings.
PAUSE>NUL
ECHO.
IPCONFIG

PAUSE>NUL
ECHO.
ECHO A18
ECHO NET USER and NET LOCALGROUP with "/ADD"
ECHO To add users and create groups respectively, NET LOCALGROUP also let us add users to the group.
PAUSE>NUL
ECHO.
NET USER Bob /ADD
NET LOCALGROUP "Awesome Users" /ADD
NET LOCALGROUP "Awesome Users" Bob /ADD

PAUSE>NUL
ECHO. 
ECHO A19
ECHO NET USER and NET LOCALGROUP with "/DELETE"
ECHO To remove the previosly created user and group.
PAUSE>NUL
ECHO.
NET USER Bob /DELETE
NET LOCALGROUP "Awesome Users" /DELETE

PAUSE>NUL
ECHO.  
ECHO A20
ECHO ECHO ^>,^>^>, USERNAME, CHKDSK ^>, PATH, SCHTASKS /CREATE /TN /TR /SC /D /ST /ST /RLECHOto be able to write one initial instruction into a bat file with ^>, to then append the rest of them using ^>^>, USERNAME to implement the same path depending on the current user, CHKDSK ^> to check the disk for errors and put them into a log file, set the PATH to be able to run the bat and finally SCHTASKS to schedule the bat file with the next switches: /CREATE to create the task /TN to name the task /TR to specify the application /SC to set the frequency /D to set the day, /ST to set the time, and /RL to grant the highest level of previlege.
PAUSE>NUL
ECHO. 
::Creating a support bat file on the Desktop
ECHO @ECHO OFF > C:\Users\%USERNAME%\Desktop\CHECKER.bat
ECHO TITLE CHECKER >> C:\Users\%USERNAME%\Desktop\CHECKER.bat
ECHO ECHO Checking the disk for errors >> C:\Users\%USERNAME%\Desktop\CHECKER.bat
ECHO ECHO. >> C:\Users\%USERNAME%\Desktop\CHECKER.bat
ECHO ECHO Please wait... >> C:\Users\%USERNAME%\Desktop\CHECKER.bat
ECHO CHKDSK ^> C:\Users\%USERNAME%\Desktop\chkdskResults.txt >> C:\Users\%USERNAME%\Desktop\CHECKER.bat
SET PATH=%PATH%;C:\Users\%USERNAME%\Desktop
::Scheduling the bat file
SCHTASKS /CREATE /TN Weekly_Check /TR CHECKER /SC WEEKLY /D SUN /ST 22:00:00 /RL HIGHEST
PAUSE>NUL
ECHO. 

ECHO.
ECHO That's all, Cheers!
PAUSE>NUL
ECHO. 
