@ECHO OFF
ECHO A2
ECHO CD \ and MD 
ECHO To go to the root directory and create "My Batch Script Assignment" folder. 
PAUSE>NULL
ECHO.
CD \
MD "My Batch Script Assignment"

PAUSE>NULL

dir /b | findstr /r "^.......\.txt" > C:\Users\%USERNAME%\Desktop\files.txt