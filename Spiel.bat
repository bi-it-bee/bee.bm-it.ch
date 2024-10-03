@echo off
title Spiel von Spieler
color 9f
if "%1" neq "" ( goto %1)

:Menu
cls
echo 1. Start
echo 2. Credits
echo 3. Exit
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Credits
if %answer%==3 goto Exit

:Exit
cls
echo Thanks for playing!
pause
exit /b

:Credits
cls
echo Credits
echo.
echo Creator - Emik
pause
goto Menu

:Start_1
cls
echo You've been spotted by enemies.
echo There are five of them, and they're all armed.
echo If you fight them, you are having a high chance of winning.
set /p answer=Would you like to fight or run?
if %answer%==fight goto Fight_1
if %answer%==run goto Run_1
pause
:Run_1
cls
echo You live to fight another day.
pause
goto Start_1
:Fight_1
echo Prepare to fight.
echo The enemies suddenly rush you all at once.
set /p answer= Type 1 and press Enter to continue.
if %answer%==1 goto Fight_1_Loop
:Fight_1_Loop
set /a num=%random%
if %num% gtr 4 goto Fight_1_Loop
if %num% lss 1 goto Fight_1_Loop
if %num%==1 goto Lose_Fight_1
if %num%==2 goto Win_Fight_1
if %num%==3 goto Win_Fight_1
if %num%==4 goto Win_Fight_1
:Lose_Fight_1
cls
echo You were defeated. Play again?
pause
goto Menu
:Win_Fight_1
cls
echo You are victorious!
set /p answer=Would you like to save? [y/n]
if %answer%=='y' goto 'Save'
if %answer%=='n' goto 'Start_2'
pause
:Save
goto Start_2
:Start_2
cls
echo You've been spotted by more enemies.
echo There are six of them, and they're all armed.
echo If you fight them, you are having a high chance of winning.
set /p answer=Would you like to fight or run?
if %answer%==fight goto Fight_2
if %answer%==run goto Run_2
pause
:Run_2
cls
echo You live to fight another day.
pause
goto Start_2
:Fight_2
echo Prepare to fight.
echo The enemies suddenly rush you all at once.
set /p answer= Type 2 and press Enter to continue.
if %answer%==2 goto Fight_2_Loop
:Fight_2_Loop
set /a num=%random%
if %num% gtr 4 goto Fight_2_Loop
if %num% lss 1 goto Fight_2_Loop
if %num%==1 goto Lose_Fight_2
if %num%==2 goto Win_Fight_2
if %num%==3 goto Win_Fight_2
if %num%==4 goto Win_Fight_2

:Lose_Fight_2
cls
echo You were defeated. Play again?
pause
goto Menu
:Win_Fight_2
cls
echo SPARTAAAAA! You are winner!
pause
goto Menu