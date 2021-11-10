@echo off
title quiz-cmd

:ifexist_startup
rem See if the user have canceled the startup screen.
rem If yes, the command will jump right to the menu.
rem If no, you guess it :)
if exist .startup goto startup
if not exist .startup goto ifexist_profile
goto ifexist_startup

:startup
rem You know what this thing is for.
cls
echo  ________  ___  ___  ___  ________                ________  _____ ______   ________     
echo "|\   __  \|\  \|\  \|\  \|\_____  \              |\   ____\|\   _ \  _   \|\   ___ \    
echo "\ \  \|\  \ \  \\\  \ \  \\|___/  /| ____________\ \  \___|\ \  \\\__\ \  \ \  \_|\ \   
echo " \ \  \\\  \ \  \\\  \ \  \   /  / /|\____________\ \  \    \ \  \\|__| \  \ \  \ \\ \  
echo "  \ \  \\\  \ \  \\\  \ \  \ /  /_/_\|____________|\ \  \____\ \  \    \ \  \ \  \_\\ \ 
echo "   \ \_____  \ \_______\ \__\\________\             \ \_______\ \__\    \ \__\ \_______\
echo "    \|___| \__\|_______|\|__|\|_______|              \|_______|\|__|     \|__|\|_______|
echo "          \|__|                                                                         
echo "                                                                                        
echo "                                                                                        
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
if not %st% == X goto ifexist_profile
if not %st% == x goto ifexist_profile
if not defined %st% goto ifexist_profile
goto startup

:ifexist_profile
rem Before heading to the menu, the game will start looking for player's profile.
rem If there are no profiles, the game will ask you to create one and save as "profile.prfile".
rem Only one profile can be read, so to switch players, I have created an external app named "player-exchange.exe". As its name suggests, it switches players' profiles.
if exist profile.prfile goto read_profile
if not exist profile.prfile goto create_profile
goto ifexist_profile

:create_profile
cls
title quiz-cmd [Create profile]
echo  ________  ___  ___  ___  ________                ________  _____ ______   ________     
echo "|\   __  \|\  \|\  \|\  \|\_____  \              |\   ____\|\   _ \  _   \|\   ___ \    
echo "\ \  \|\  \ \  \\\  \ \  \\|___/  /| ____________\ \  \___|\ \  \\\__\ \  \ \  \_|\ \   
echo " \ \  \\\  \ \  \\\  \ \  \   /  / /|\____________\ \  \    \ \  \\|__| \  \ \  \ \\ \  
echo "  \ \  \\\  \ \  \\\  \ \  \ /  /_/_\|____________|\ \  \____\ \  \    \ \  \ \  \_\\ \ 
echo "   \ \_____  \ \_______\ \__\\________\             \ \_______\ \__\    \ \__\ \_______\
echo "    \|___| \__\|_______|\|__|\|_______|              \|_______|\|__|     \|__|\|_______|
echo "          \|__|                                                                         
echo "                                                                                        
echo "                                                                                        
echo Looks like you are new here.
echo Why don't you introduce yourself a bit?
rem These info will be stored internally, if your device doesn't have a keylogger...
echo.
set /p name="My name is "
set /p age="My age is "
set /p gender="My gender is "
set /p birth="I was born at"
set /p hobby="My hobbies are "
goto prepare_profile

:prepare_profile
echo.
echo Thank you for sharing your info. I will now save it to your PC.
echo Please make sure that you have not entered anything sensitive about you,
echo even though the information is stored only in your PC.
echo.
echo [Press Enter to continue]
echo [Type R then Enter to redo]
set /p mkprf=
if %mkprf% == R goto create_profile
if %mkprf% == r goto create_profile
if not %mkprf% == R goto make_profile
if not %mkprf% == r goto make_profile
if not defined %mkprf% goto make_profile
goto create_profile

:make_profile
mkdir profile
echo %name%>profile\name.txt
echo %age%>profile\age.txt
echo %gender%>profile\gender.txt
echo %birth%>profile\birth.txt
echo %hobby%>profile\hobby.txt
zip -r profile.prfile profile
cls
echo I have finished making your profile.
echo Enjoy the game!
echo [Press anykey to start]
pause >nul
goto menu

:read_profile_1
rem Extracts the profile.
unzip profile.prfile
copy name.txt profile\name.txt
copy age.txt profile\age.txt
copy gender.txt profile\gender.txt
copy birth.txt profile\birth.txt
copy hobby.txt profile\hobby.txt
goto read_profile_2

:read_profile_2
rem Reads every text file with the corresponding info.
< name.txt (
set /p name=
)
timeoutms 100
< age.txt (
set /p age=
)
timeoutms 100
< gender.txt (
set /p gender=
)
timeoutms 100
< birth.txt (
set /p birth=
)
timeoutms 100
< hobby.txt (
set /p hobby=
)
timeoutms 100
goto read_profile_3

:read_profile_3
rem Clean temporary files and create highscore.txt
del name.txt
del age.txt
del gender.txt
del birth.txt
del hobby.txt
echo.>profile\highscore.txt
goto menu

:menu
cls
title quiz-cmd [Home]
echo  ________  ___  ___  ___  ________                ________  _____ ______   ________     
echo "|\   __  \|\  \|\  \|\  \|\_____  \              |\   ____\|\   _ \  _   \|\   ___ \    
echo "\ \  \|\  \ \  \\\  \ \  \\|___/  /| ____________\ \  \___|\ \  \\\__\ \  \ \  \_|\ \   
echo " \ \  \\\  \ \  \\\  \ \  \   /  / /|\____________\ \  \    \ \  \\|__| \  \ \  \ \\ \  
echo "  \ \  \\\  \ \  \\\  \ \  \ /  /_/_\|____________|\ \  \____\ \  \    \ \  \ \  \_\\ \ 
echo "   \ \_____  \ \_______\ \__\\________\             \ \_______\ \__\    \ \__\ \_______\
echo "    \|___| \__\|_______|\|__|\|_______|              \|_______|\|__|     \|__|\|_______|
echo "          \|__|                                                                         
echo "                                                                                        
echo "                                                                                        
echo Hello there, %name%!
echo What would you like to do now?
echo 1. Play!
echo 2. Options
echo 3. About
echo 4. Quit
echo.
set /p menu1=">>"
if %menu1% == 1 goto play
if %menu1% == 2 goto options
if %menu1% == 3 goto about
if %menu1% == 4 goto quit
if not %menu1% == 1 goto invalid1
if not %menu1% == 2 goto invalid1
if not %menu1% == 3 goto invalid1
if not %menu1% == 4 goto invalid1
if not defined %menu1% goto invalid1
goto menu

:invalid1
echo.
echo You have entered a value that does not exist in this app's database.
pause
goto menu
