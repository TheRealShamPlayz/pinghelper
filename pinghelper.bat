echo off
title Downloading Required Files...
cls
curl "https://www.netlimiter.com/files/download/nl4/netlimiter-4.1.13.0.exe" --output netlimiter-4.1.13.0.exe
cls
curl "https://download2390.mediafire.com/wftsahxo03kg/yhvksozjmjww2ja/ImproveConnection.reg" --output ImproveConnection.reg
Title Done!
cls
Title Ping Helper
cls
echo Welcome to the "Installation" of Ping Helper! This will download multiple temporary (and some permanant) files to your computer, to improve your connection!
pause
echo First and the most important step, make a backup of your registry.
@ECHO OFF

:choice
set /P c=Do you know how to make a backup of your registry? [Y if you do, and N if you do not] 
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice


:somewhere

echo Ok, lets go on with the installation!
pause

	@ECHO OFF

	:choice
	set /P c=Would you like to do an express installation, or do a manual installation to install a customized version of pinghelper? [EXP for express, and MNU for manual] 
	if /I "%c%" EQU "EXP" goto :somewhere3
	if /I "%c%" EQU "MNU" goto :somewhere_else3
	goto :choice


	:somewhere3

	START ImproveConnection.reg
	cls
	START netlimiter-4.1.13.0.exe
	cls
	echo You will have to install netlimiter yourself, but don't worry, it is like any other program installation.
	echo Once you are down with installing netlimiter, press the enter key on your keyboard.
	pause


	:somewhere_else3

	echo "I am here because you typed N"
	pause
	exit


:somewhere_else

echo Ok, let me show you how to!
pause
echo Press and hold the Windows Key, then press the "R" key on your keyboard.
pause
echo Now type in "regedit" and press enter.
echo Click "Yes" when the prompt to select Yes or No to launch the program comes up (UAC)
pause
echo Now that you are in Registry Editor, click on "File" at the top of your screen, then click "Export".
pause
echo You can name the file whatever you want, and save it wherever you want, but I would recommend naming the file "regedit-backup" and saving it to your desktop.
pause
echo Now you can close Registry Editor and pat yourself on the back, because you just finished the hardest part! (at least in my opinion)
pause
echo Now let's get on with the installation!
	@ECHO OFF

	:choice
	set /P c=Would you like to do an express installation, or make the program download the files to optimize your internet? [EXP for express, and MNU for manual] 
	if /I "%c%" EQU "EXP" goto :somewhere4
	if /I "%c%" EQU "MNU" goto :somewhere_else4
	goto :choice


	:somewhere4

	START ImproveConnection.reg
	cls
	START netlimiter-4.1.13.0.exe
	cls
	echo You will have to install netlimiter yourself, but don't worry, it is like any other program installation.
	echo Once you are down with installing netlimiter, press the enter key on your keyboard.
	echo Also, Windows is going to give you a warning about installing the ImproveConnection.reg file. If you want it, you probably should click "Yes". If not, click "No".
	netsh interface ipv4 set dns name="Local Area Connection" static 1.1.1.1 primary
	netsh interface ipv4 add dns name="Local Area Connection" 1.0.0.1
	ipconfig /flushdns
	pause
	cls
	echo You know have all the stuff you need to have an improved internet connection! Netlimiter you have to figure out by yourself, but it is actually pretty easy to use.
	@ECHO OFF

	:choice
	set /P c=Are you sure you want to continue[Y/N]?
	if /I "%c%" EQU "Y" goto :somewhere2
	if /I "%c%" EQU "N" goto :somewhere_else2
	goto :choice


	:somewhere2

	echo "I am here because you typed Y"
	pause
	exit

	:somewhere_else2

	echo "I am here because you typed N"
	pause
	exit

	:somewhere_else4

	echo "I am here because you typed N"
	pause
	exit
