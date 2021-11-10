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
echo ________  ___  ___  ___  ________                ________  _____ ______   ________     
echo |\   __  \|\  \|\  \|\  \|\_____  \              |\   ____\|\   _ \  _   \|\   ___ \    
echo \ \  \|\  \ \  \\\  \ \  \\|___/  /| ____________\ \  \___|\ \  \\\__\ \  \ \  \_|\ \   
echo  \ \  \\\  \ \  \\\  \ \  \   /  / /|\____________\ \  \    \ \  \\|__| \  \ \  \ \\ \  
echo   \ \  \\\  \ \  \\\  \ \  \ /  /_/_\|____________|\ \  \____\ \  \    \ \  \ \  \_\\ \ 
echo    \ \_____  \ \_______\ \__\\________\             \ \_______\ \__\    \ \__\ \_______\
echo     \|___| \__\|_______|\|__|\|_______|              \|_______|\|__|     \|__|\|_______|
echo           \|__|                                                                         
echo.
echo 
