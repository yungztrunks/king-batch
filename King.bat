@echo off
title The Secret Group of Konoha

set count=0
mode con cols=50 lines=5
:password
cls
color 0a
set /p pass=Please type in the password: 
if %pass%=="" goto fail
if %pass%==King (goto start) else (goto fail)
:fail
cls
set /a count+=1
color 0c

:fail
echo Wrong password
set /a left=5-%count%
if %count%==4 goto help
if %count%==5 goto lock
echo %left% tries out of 5 left.
pause >nul
goto password

:help
echo Need help? The password is "King"
echo This is your last chance! Type it in correctly this time
echo Also, you can just press Enter to gain access, it really works
pause >nul
goto password

:lock
cls
color 0c
echo.
echo msgbox "How did you fuck this up? Better luck next time" > "%temp%\popup.vbs"
wscript.exe "%temp%\popup.vbs"
pause >nul
exit

:start
mode con cols=50 lines=20
cls 
echo.
color 0a
echo Successfully logged in!
timeout /NOBREAK /T 2 >nul
cls
:menu
color 0a
cls
echo ----------------
echo : KING MENU    :
echo ----------------
echo ----------------
echo.
echo 1. Truth about M18
echo 2. Truth about M24
echo 3. Truth about D26
echo 4. Information
echo 5. Calculator
echo 6. Dede
echo.

set /p optionInput= Type in your option number.
if %optionInput%==1 goto :optionOne
if %optionInput%==2 goto :optionTwo
if %optionInput%==3 goto :optionThree
if %optionInput%==4 goto :optionFour
if %optionInput%==5 goto :calculator
if %optionInput%==6 goto :optionDede
if %optionInput%==9 goto :secretOption
echo.
cls
echo Wrong input! Do not type in %optionInput%
echo.
pause
cls
goto menu
:optionOne
cls
echo The Truth about M18:
echo.
echo M18's level of stupidness is 400.
echo.
pause
cls
goto menu
:optionTwo
cls
echo The Truth about M26:
echo.
echo M26 did not go to [REDACTED] he was getting help on how to become a real B for Life
echo.
pause
cls
goto menu
:optionFour
cls
echo  Information about this Project
echo.
echo. twitter user @yungztr is the goat!
echo. This program itself and the various texts are not the original ones
echo. I translated and edited them for different reasons!
pause
cls
goto menu
:optionThree
cls
echo The truth about D26
echo.
echo D26's level of stupidness is over 9000 and the rocks he collected
echo. are stolen from my close friend Barack Obama
pause
cls
goto menu
:optionDede
cls
echo The Truth about Dede
echo.
echo Dede has been secretly training to surprass *ZTrunks in
echo the fighting game "Super Smash Flash 2"! This shows how trash he is
echo.
echo *ZTrunks vs Itachison stats: 57 - idk 3 lmao ratio
pause
cls
goto menu
:calculator
echo.
echo ----------------------------------
echo       Yo, my name is Tobi
echo ----------------------------------
echo.
echo ///////////////////////////////////////////
echo Your previous answer was: %sum%
echo ///////////////////////////////////////////
echo.
echo What do you need to calculate?
echo.
echo 1) An addition
echo.
echo 2) A subtraction
echo.
echo 3) A division
echo.
echo 4) A multiplication
echo.
echo 5) Nothing, bring me back
echo.
set /p do=Ergebnis.
if %do%== 1 goto add
if %do%== 2 goto sub
if %do%== 3 goto div
if %do%== 4 goto mul
if %do%== 5 goto redirect
echo.
cls
echo Wrong input! Do not type in %do%
echo.
pause
cls
goto calculator

:add
cls
echo Addition
echo.
set /p no1="First Number:  "
echo       +
set /p no2="Second Number: "
set /a sum=no1+no2
echo ------------
echo %sum%
echo.
pause
cls
goto calculator


:sub
cls
echo Subtraction
echo.
set /p no1="First Number:  "
echo       -
set /p no2="Second Number: "
set /a sum=no1-no2
echo ------------
echo %sum%
echo.
pause
cls
goto calculator


:div
cls
echo Division
echo.
set /p no1="First Number:  "
echo       /
set /p no2="Second Number: "
set /a sum=no1/no2
echo ------------
echo %sum%
echo.
pause
cls
goto calculator


:mul
cls
echo Multipication
echo.
set /p no1="First Number:  "
echo       *
set /p no2="Second Number: "
set /a sum=no1*no2
echo ------------
echo %sum%
echo.
pause
cls
goto calculator

REM :next
REM echo The answer is: %ans%
REM echo.
REM echo 
REM pause
REM cls
REM set /p input=Press 1 to open the main menu or 2 to open the calculator.
REM if %input%== 1 goto redirect
REM if %input%== 2 goto calculator
REM if %inpu%=="" goto erroroccured

:erroroccured
cls
timeout /NOBREAK /T 3 >nul
echo Wrong input!
pause
cls
goto menu

:redirect
color B0
cls
echo Please wait... 
echo you are being redirected
echo to the main menu
echo like a KING in his Porsche!
TIMEOUT /NOBREAK /T 6 >nul
goto menu

:secretOption
cls
echo Yo yo yo yungztr here
echo This is the secret screen nobody should know of
echo If you found this by looking through the code you a bitch
echo If you found this by typing in 9 randomly you the goat
echo message me on twitter @yungztr I will like on of your posts
echo but yeah this is random
echo I will now redirect you to the password section because why not
echo bye
echo.
pause
cls
%count%==0
goto password