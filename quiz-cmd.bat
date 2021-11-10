@echo off
title quiz-cmd

:ifexist_startup
rem See if the user have canceled the startup screen.
rem If yes, the command will jump right to the menu.
rem If no, you guess it :)
if exist .startup goto startup
if not exist .startup goto menu
goto ifexist_startup

:startup
rem You know what this thing is for.
cls
echo ________  ___  ___  ___  ________                ________  _____ ______   ________     
echo |\   __  \|\  \|\  \|\  \|\_____  \              |\   ____\|\   _ \  _   \|\   ___ \    
echo \ \  \|\  \ \  \\\  \ \  \\|___/  /| ____________\ \  \___|\ \  \\\__\ \  \ \  \_|\ \   
echo  \ \  \\\  \ \  \\\  \ \  \   /  / /|\____________\ \  \    \ \  \\|__| \  \ \  \ \\ \  
echo   \ \  \\\  \ \  \\\  \ \  \ /  /_/_\|____________|\ \  \____\ \  \    \ \  \ \  \_\\ \ 
echo    \ \_____  \ \_______\ \__\\________\             \ \_______\ \__\    \ \__\ \_______\
echo     \|___| \__\|_______|\|__|\|_______|              \|_______|\|__|     \|__|\|_______|
echo           \|__|                                                                         
echo.
echo Welcome to QUIZ-CMD!
echo.
echo QUIZ-CMD, as the name described... is just a quiz game written in DOS language, nothing special.
echo The game has some interesting quiz that can help you kill time like the other quiz games floating
echo out there, makes your life less boring and blah blah blah. It just a quiz game, that's all.
echo But if you gonna ask why I made this thing, then I will show you one more cool features about
echo this game. It gives you score! (no one cares). I know. But how about you can make your own questions?
echo Yes, it is possible!
echo [Press any key to continue]
pause >nul
echo.
echo Unlike other quiz games, this one allows you to create your own quizes, choices, and even hints!
echo How cool, right? What's even cooler, you can share your quiz pack to challenge your friends and
echo try out with other brain-hacking questions around the world! (if anyone play my game. hope so.)
echo [Press any key to continue again]
pause >nul
echo.
echo For the score part, due to limitations of DOS language, I can't create leadboards right now.
echo Though, it can save score and let you break old records. I will try to improve this part in
echo further updates.
echo.
echo Also, if you're interested in improving this game, don't hesitate to contribute your ideas
echo to the project's GitHub page that i left at github.txt. Feel free to do so!
echo.
echo and now... enjoy the game.
echo - karonboi (if you're curious about the name, look at my github avatar)
echo [Press Enter to end]
echo [Or type X before press Enter to disable this startup screen, if you hate to see it again]
set /p st=
if %st% == X goto del_startup
if %st% == x goto del_startup
if not %st% == X goto menu
if not %st% == x goto menu
if not defined %st% goto menu
goto strtup
