 @echo off
:startup
@echo off
chcp 65001
mode 80,16
cls
setlocal EnableDelayedExpansion EnableExtentions
set load=
set /a loadnum=0
cls


::loadingscreen
:loading
title ZMR ║ %USERNAME% ║ Loading...
set load=%load%-
cls
echo.
echo [40;36mLoading...
echo   [38;2;255;255;255m+--^----------,--------,-----,--------^-,
echo  [38;2;255;255;255m‖ [40;36m‖‖‖‖‖‖‖‖‖[38;2;255;255;255m   `--------'     ‖         O%load%
echo  [38;2;255;255;255m`+---------------------------^----------‖
echo   [38;2;255;255;255m`\_,---------,---------,--------------'
echo      [38;2;255;255;255m/ [40;36mXXXXXX[38;2;255;255;255m /'[40;36m‖       [38;2;255;255;255m/'
echo     [38;2;255;255;255m/ [40;36mXXXXXX[38;2;255;255;255m /  [40;36m`\    [38;2;255;255;255m/'
echo    [38;2;255;255;255m/ [40;36mXXXXXX[38;2;255;255;255m /`-------[40;36m'
echo   [38;2;255;255;255m/ [40;36mXXXXXX[38;2;255;255;255m /
echo  [38;2;255;255;255m/ [40;36mXXXXXX[38;2;255;255;255m /
echo [38;2;255;255;255m(________(                
echo  [38;2;255;255;255m`------'             
ping localhost -n 1 >nul
set /a loadnum=%loadnum% +1
if %loadnum% == 38 goto done
goto loading
:done
echo [40;36m%USERNAME%[38;2;255;255;255m @ [40;36mZMR  :  
echo 	[40;36mGoing [38;2;255;255;255mto [40;36mCheking [38;2;255;255;255mUpdates [40;36m [ %date% ]
timeout 2 >nul

cd %userprofile%/documents

if exist "Login system" goto skip

md "Login System"



::login system
:skip

cd "Login System"

ping localhost -n 5 >nul

:home
mode 80,13
color B

title ZMR ║ %USERNAME% ║ Login

cls
echo.
echo                            [40;36m_   _  [38;2;255;255;255m_____  [40;36m__  __  [38;2;255;255;255m____ 
echo                           [40;36m( )_( )[38;2;255;255;255m(  _  )[40;36m(  \/  )[38;2;255;255;255m( ___)
echo                            [40;36m) _ (  [38;2;255;255;255m)(_)(  [40;36m)    (  [38;2;255;255;255m)__) 
echo                           [40;36m(_) (_)[38;2;255;255;255m(_____)[40;36m(_/\/\_)[38;2;255;255;255m(____)

echo.
echo [38;2;255;255;255m════════════════════════════════════════════════════════════════════════════════
echo.
echo     [38;2;255;255;255m╔═══════════════╗           ╔═══════════════╗          ╔═══════════════╗
echo     ║ [[40;36m1[38;2;255;255;255m] [40;36msignup[38;2;255;255;255m    ║           ║ [[40;36m2[38;2;255;255;255m] [40;36mlogin[38;2;255;255;255m     ║          ║ [[40;36m3[38;2;255;255;255m] [40;36mexit[38;2;255;255;255m      ║
echo     ╚═══════════════╝           ╚═══════════════╝          ╚═══════════════╝
echo.
echo.
set /p "a=[40;36m%USERNAME%[38;2;255;255;255m @ [40;36mZMR  [38;2;255;255;255m:[40;36m   "

if ["%a%"] == ["1"] goto signup

if ["%a%"] == ["2"] goto login

if ["%a%"] == ["3"] goto exit

if ["%a%"] == ["zmrdaddy"] goto home2

:signup

color B

title ZMR ║ %USERNAME% ║ sign up

cls

set /p "nuser=[38;2;255;255;255mNew Username:[40;36m "

if ["%nuser%"] == [""] goto signuperror

if EXIST "%nuser%.bat" goto usertaken

goto npass

:usertaken

cls

color 4

echo USERNAME taken, please try another one.

pause >nul

goto signup

:npass

set /p "npass=[38;2;255;255;255mNew Password:[40;36m "

if ["%npass%"] == [""] goto signuperror

set /p "npassr=[38;2;255;255;255mRepeat Password:[40;36m "

if ["%npassr%"] == ["%npass%"] goto signupc

goto signuperror

:signupc

echo set "auser=%nuser%"> %nuser%.bat

echo set "apass=%npass%">> %nuser%.bat

cls

color a

echo Signup successful!


echo press any button to continue!

pause >nul

goto home

:login

color B

title ZMR ║ %USERNAME% ║ login

cls

set /p "user=[38;2;255;255;255mUsername:[40;36m "

if ["%user%"] == [""] goto LOGIN

if EXIST "%user%.bat" goto pass

goto usernotexist

:usernotexist

color 4

cls

echo [40;36mUSERNAME [40;36mdoesn't exist.

pause >nul

goto login

:pass

call %user%.bat

set /p "pass=[38;2;255;255;255mPassword:[40;36m "

if ["%pass%"] == ["%apass%"] goto logingood

goto passinvalid

:passinvalid

color 4

cls

echo The PASSWORD you entered is INVALID

pause >nul

goto login

:logingood

color a

cls

echo [38;2;255;255;255mYou have Successfully logged in[40;36m %user%


ping localhost -n 7 >nul

goto home2


:signuperror

color 4

cls

echo ERROR

echo proceeding back to SIGNUP...

ping localhost -n 2 >nul

goto signup

:passerror

color 4

cls

echo PASSWORD INVALID

pause >nul

goto delaccount

:usernotexistdel

color 4

cls

echo USERNAME doesn't exist.

pause >nul

goto delaccount



::home
:home2
mode 80,20
color B

title ZMR ║ %USER% ║ home

cls
echo.
echo                            [40;36m_   _  [38;2;255;255;255m_____  [40;36m__  __  [38;2;255;255;255m____ 
echo                           [40;36m( )_( )[38;2;255;255;255m(  _  )[40;36m(  \/  )[38;2;255;255;255m( ___)
echo                            [40;36m) _ (  [38;2;255;255;255m)(_)(  [40;36m)    (  [38;2;255;255;255m)__) 
echo                           [40;36m(_) (_)[38;2;255;255;255m(_____)[40;36m(_/\/\_)[38;2;255;255;255m(____)
echo.
echo [38;2;255;255;255m════════════════════════════════════════════════════════════════════════════════
echo.
echo  ╔═══════════════╗   ╔═══════════════╗    ╔═══════════════╗   ╔═══════════════╗
echo  ║[[40;36m1[38;2;255;255;255m]  [40;36mpinger[38;2;255;255;255m    ║   ║[[40;36m2[38;2;255;255;255m] [40;36mstressers[38;2;255;255;255m  ║    ║[[40;36m3[38;2;255;255;255m]  [40;36mIP lookup[38;2;255;255;255m ║   ║[[40;36m4[38;2;255;255;255m]  [40;36mWhatsMyIp[38;2;255;255;255m ║
echo  ╚═══════════════╝   ╚═══════════════╝    ╚═══════════════╝   ╚═══════════════╝
echo.
echo  ╔═══════════════╗   ╔═══════════════╗    ╔═══════════════╗   ╔═══════════════╗
echo  ║[[40;36m5[38;2;255;255;255m]  [40;36mspammer[38;2;255;255;255m   ║   ║[[40;36m6[38;2;255;255;255m]    [40;36mDOS[38;2;255;255;255m     ║    ║[[40;36m7[38;2;255;255;255m]  [40;36mDOX TOOL[38;2;255;255;255m  ║   ║[[40;36m8[38;2;255;255;255m]  [40;36mgrabbers[38;2;255;255;255m  ║
echo  ╚═══════════════╝   ╚═══════════════╝    ╚═══════════════╝   ╚═══════════════╝
echo.
echo                      ╔═══════════════╗    ╔═══════════════╗
echo                      ║[[40;36m9[38;2;255;255;255m]   [40;36mlogin[38;2;255;255;255m    ║    ║[[40;36m10[38;2;255;255;255m]   [40;36mexit[38;2;255;255;255m    ║   
echo                      ╚═══════════════╝    ╚═══════════════╝   
echo.
set /p "a=[40;36m%USER%[38;2;255;255;255m @ [40;36mZMR  [38;2;255;255;255m:[40;36m   "

if ["%a%"] == ["1"] goto zmrpinger

if ["%a%"] == ["2"] goto stressers

if ["%a%"] == ["3"] goto ipinfo

if ["%a%"] == ["4"] goto whatsmyip

if ["%a%"] == ["5"] goto webhookspammer

if ["%a%"] == ["6"] goto DOS

if ["%a%"] == ["7"] goto DOXTOOL

if ["%a%"] == ["8"] goto grabbers

if ["%a%"] == ["9"] goto startup

if ["%a%"] == ["10"] exit



::grabbers
:grabbers
title ZMR ║ %user% ║ IP Logger
mode 80,20
@echo off
chcp 65001
cls
echo.
echo                         [40;36m__    [38;2;255;255;255m_____  [40;36m___   ___  [38;2;255;255;255m____  [40;36m____ 
echo                        [40;36m(  )  [38;2;255;255;255m(  _  )[40;36m/ __) / __)[38;2;255;255;255m( ___)[40;36m(  _ \
echo                         [40;36m)(__  [38;2;255;255;255m)(_)([40;36m( (_-.( (_-. [38;2;255;255;255m)__)  [40;36m)   /
echo                        [40;36m(____)[38;2;255;255;255m(_____)[40;36m\___/ \___/[38;2;255;255;255m(____)[40;36m(_)\_)
echo.
echo [38;2;255;255;255m════════════════════════════════════════════════════════════════════════════════
echo.
echo.
echo     ╔═══════════════╗           ╔═══════════════╗          ╔═══════════════╗
echo     ║[[40;36m1[38;2;255;255;255m]  [40;36mgrabify[38;2;255;255;255m   ║           ║[[40;36m2[38;2;255;255;255m]   [40;36mps3cfw[38;2;255;255;255m   ║          ║[[40;36m3[38;2;255;255;255m]   [40;36mcanary[38;2;255;255;255m   ║
echo     ╚═══════════════╝           ╚═══════════════╝          ╚═══════════════╝
echo.
echo                                 ╔═══════════════╗          
echo                                 ║[[40;36m4[38;2;255;255;255m]   [40;36mhome[38;2;255;255;255m     ║          
echo                                 ╚═══════════════╝          
echo.
echo.
echo [38;2;255;255;255m════════════════════════════════════════════════════════════════════════════════
set /p "a=[40;36m%user%[38;2;255;255;255m @ [40;36mZMR  [38;2;255;255;255m:[40;36m  "

if ["%a%"] == ["1"] goto g1

if ["%a%"] == ["2"] goto g2

if ["%a%"] == ["3"] goto g3 

if ["%a%"] == ["4"] goto home2

::grabers redirect
:g1
@echo off
cls
start https://grabify.link/
goto grabbers
:g2
@echo off
cls
start https://www.ps3cfw.com/iplog.php
goto grabbers
:g3
@echo off
cls
start https://canarytokens.org/generate#
goto grabbers



::stressers
:stressers
mode 80,20
color B

title ZMR ║ %USER% ║ stressers

cls
echo.
echo.
echo              [40;36m ___  [38;2;255;255;255m____ [40;36m ____ [38;2;255;255;255m ____  [40;36m___  [38;2;255;255;255m___  [40;36m____  [38;2;255;255;255m____  [40;36m___ 
echo              [40;36m/ __)[38;2;255;255;255m(_  _)[40;36m(  _ \[38;2;255;255;255m( ___)[40;36m/ __)[38;2;255;255;255m/ __)[40;36m( ___)[38;2;255;255;255m(  _ \[40;36m/ __)
echo              [40;36m\__ \  [38;2;255;255;255m)(   [40;36m)   / [38;2;255;255;255m)__) [40;36m\__ \[38;2;255;255;255m\__ \ [40;36m)__)  [38;2;255;255;255m)   /[40;36m\__ \
echo              [40;36m(___/ [38;2;255;255;255m(__) [40;36m(_)\_)[38;2;255;255;255m(____)[40;36m(___/[38;2;255;255;255m(___/[40;36m(____)[38;2;255;255;255m(_)\_)[40;36m(___/
echo.
echo [38;2;255;255;255m════════════════════════════════════════════════════════════════════════════════
echo.
echo  ╔═══════════════╗   ╔═══════════════╗    ╔═══════════════╗   ╔═══════════════╗
echo  ║[[40;36m1[38;2;255;255;255m] [40;36mstressthem[38;2;255;255;255m ║   ║[[40;36m2[38;2;255;255;255m] [40;36mstresser st[38;2;255;255;255m║    ║[[40;36m3[38;2;255;255;255m][40;36mhrd stresser[38;2;255;255;255m║   ║[[40;36m4[38;2;255;255;255m] [40;36mnightmare[38;2;255;255;255m  ║
echo  ╚═══════════════╝   ╚═══════════════╝    ╚═══════════════╝   ╚═══════════════╝
echo.
echo                      ╔═══════════════╗    ╔═══════════════╗
echo                      ║[[40;36m5[38;2;255;255;255m]   [40;36mhome[38;2;255;255;255m     ║    ║[[40;36m6[38;2;255;255;255m]   [40;36mexit[38;2;255;255;255m     ║
echo                      ╚═══════════════╝    ╚═══════════════╝
echo.
set /p "b=[40;36m%USER%[38;2;255;255;255m @ [40;36mZMR  :[38;2;255;255;255m   "

if ["%b%"] == ["1"] goto s1

if ["%b%"] == ["2"] goto s2

if ["%b%"] == ["3"] goto s3

if ["%b%"] == ["4"] goto s4

if ["%b%"] == ["5"] goto home2

if ["%b%"] == ["6"] exit



::stresser websites
:s1
@echo off
cls
start https://www.stressthem.to/
goto stressers

:s2
@echo off
cls
start https://stresser.st/
goto stressers

:s3
@echo off
cls
start https://hardstresser.com/
goto stressers

:s4
@echo off
cls
start https://nightmarestresser.net/
goto stressers



::iplookup
:ipinfo
cls
echo.
echo                     [40;36m__    [38;2;255;255;255m_____  _____  [40;36m_  _  [38;2;255;255;255m__  __  [40;36m____ 
echo                    [40;36m(  )  [38;2;255;255;255m(  _  )(  _  )[40;36m( )/ )[38;2;255;255;255m(  )(  )[40;36m(  _ \
echo                     [40;36m)(__  [38;2;255;255;255m)(_)(  )(_)(  [40;36m)  (  [38;2;255;255;255m)(__)(  [40;36m)___/
echo                    [40;36m(____)[38;2;255;255;255m(_____)(_____)[40;36m(_)\_)[38;2;255;255;255m(______)[40;36m(__)  
echo.
echo [38;2;255;255;255m════════════════════════════════════════════════════════════════════════════════
echo.
set ipv4=127.0.0.1
set /p ipv4=IP: [40;36m
echo sUrl = "http://ipinfo.io/%ipv4%/json" > %temp%\%webclient%.vbs
:localip
cls
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> %temp%\%webclient%.vbs
echo oHTTP.open "GET", sUrl,false >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> %temp%\%webclient%.vbs
echo oHTTP.send sRequest >> %temp%\%webclient%.vbs
echo HTTPGET = oHTTP.responseText >> %temp%\%webclient%.vbs
echo strDirectory = "%temp%\response.txt" >> %temp%\%webclient%.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> %temp%\%webclient%.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> %temp%\%webclient%.vbs
echo objFile.Write(HTTPGET) >> %temp%\%webclient%.vbs
echo objFile.Close >> %temp%\%webclient%.vbs
echo Wscript.Quit >> %temp%\%webclient%.vbs
start %temp%\%webclient%.vbs
set /a requests=0
echo.
rem echo Waiting for API response. . .
echo  Looking up IP Address. . .

:checkresponseexists
set /a requests=%requests% + 1
if %requests% gtr 7 goto failed
IF EXIST "%temp%\response.txt" (
goto response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto checkresponseexists
)
:failed
taskkill /f /im wscript.exe >nul
del "%temp%\%webclient%.vbs" /f /q /s >nul
echo.
echo Did not receive a response from the API.
echo.
pause
goto 
:response_exist
cls
echo.
for /f "delims= 	" %%i in ('findstr /i "," %temp%\response.txt') do (
	set data=%%i
	set data=!data:,=!
	set data=!data:""=Not Listed!
	set data=!data:"=!
	set data=!data:ipv4:=IP:		!
	set data=!data:hostname:=Hostname:	!
	set data=!data:org:=ISP:		!
	set data=!data:city:=City:		!
	set data=!data:region:=State:	!
	set data=!data:country:=Country:	!
	set data=!data:postal:=Postal:	!
	set data=!data:loc:=Location:	!
	set data=!data:timezone:=Timezone:	!
	echo !data!
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
pause
if '%ipv4%'=='' goto 
goto home2



::discord webhook spammer
:webhookspammer
cls
@echo off
title ZMR ║ %USER% ║ DISCORD WEBHOOK SPAMMER
color b

echo.
echo                   [40;36m___  [38;2;255;255;255m____   [40;36m__    [38;2;255;255;255m__  __  [40;36m__  __  [38;2;255;255;255m____  [40;36m____ 
echo                  [40;36m/ __\[38;2;255;255;255m(  _ \ [40;36m/__\  [38;2;255;255;255m(  \/  )[40;36m(  \/  )[38;2;255;255;255m( ___)[40;36m(  _ \
echo                  [40;36m\__ \ [38;2;255;255;255m)___/[40;36m/(__)\  [38;2;255;255;255m)    (  [40;36m)    (  [38;2;255;255;255m)__) [40;36m()   /
echo                  [40;36m(___/[38;2;255;255;255m(__) [40;36m(__)(__)[38;2;255;255;255m(_/\/\_)[40;36m(_/\/\_)[38;2;255;255;255m(____)[40;36m(_)\_)
echo.
echo                                LIMIT SET TO 10
echo.
echo [38;2;255;255;255m════════════════════════════════════════════════════════════════════════════════
echo.
set /p msg=[38;2;255;255;255mMESSAGE: [40;36m
echo.
set /p webh=[38;2;255;255;255mWEBHOOK: [40;36m
echo.
goto ja

:ja
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%msg%\"}" %webh%
goto ja1

:ja1
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%msg%\"}" %webh%
goto ja2

:ja2
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%msg%\"}" %webh%
goto ja3

:ja3
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%msg%\"}" %webh%
goto ja4

:ja4
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%msg%\"}" %webh%
goto ja5

:ja5
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%msg%\"}" %webh%
goto ja6

:ja6
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%msg%\"}" %webh%
goto ja7

:ja7
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%msg%\"}" %webh%
goto ja8

:ja8
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%msg%\"}" %webh%
goto ja9

:ja9
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%msg%\"}" %webh%
goto home2



::dos tool
:DOS
@echo off
chcp 65001
mode 80,24
:main
title ZMR ║ %USER% ║ DOS
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                          [40;36m____   [38;2;255;255;255m__    [40;36m_  _  [38;2;255;255;255m____  
echo                         [40;36m(  _ \ [38;2;255;255;255m/__\  [40;36m( \( )[38;2;255;255;255m( ___)[40;36m(  )  
echo                          [40;36m)___/[38;2;255;255;255m/(__)\  [40;36m)  (  [38;2;255;255;255m)__)  [40;36m)(__ 
echo                         [40;36m(__) [38;2;255;255;255m(__)(__)[40;36m(_)\_)[38;2;255;255;255m(____)[40;36m(____)
echo.                               [40;36mCNTRL + C [38;2;255;255;255mto stop
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout 2 >nul
echo [38;2;255;255;255mTYPE [40;36mTARGET [38;2;255;255;255mIP
timeout 1 >nul
set /p IPDOS= [38;2;255;255;255m@[38;2;255;255;255m[[40;36mZMR[38;2;255;255;255m][38;2;255;255;255m  :  
timeout 2 >nul
echo [8;2;255;255;255mENTER [40;36mPORT
timeout 1 >nul
set /p PORT= [38;2;255;255;255@[38;2;255;255;255m[[40;36mZMR[38;2;255;255;255m][38;2;255;255;255m  :  

:A
Set /a Send=%Send%+1
ping %PIPI% -l %Puffer% -w 15 -n 1 -4 >NUL
echo  [40;36m@[38;2;255;255;255mAttack [40;36mSending.. [38;2;255;255;255m([38;2;255;255;255mSent[38;2;255;255;255m) 
goto A



::doxtool
:DOXTOOL
@echo off
Title ZMR ║ %USER% ║ DOX TOOL
mode 80,24
cls
color b
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                [40;36m____  [38;2;255;255;255m_____  [40;36m_  _   
echo                               [40;36m(  _ \[38;2;255;255;255m(  _  )[40;36m( \/ )  
echo                                [40;36m)(_) )[38;2;255;255;255m)(_)(  [40;36m)  (   
echo                               [40;36m(____/[38;2;255;255;255m(_____)[40;36m(_/\_)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
set /p ipdox=[38;2;255;255;255mEnter IP (optional)  :[40;36m  
cls
set /p firstname=[38;2;255;255;255mFirst Name  :[40;36m  
cls
set /p lastname=[38;2;255;255;255mLast Name  :[40;36m  
cls
set /p csoz=[38;2;255;255;255mCity State Or Zip Code  :  [40;36m  
cls
set /p doxusername=[38;2;255;255;255mUsername/Alias on websites  :[40;36m  

goto checkifip

:checkifip
@echo off
mode 80,24
cls
if ipdox==123 goto currentlydoxxing
goto currentlydoxxing

:currentlydoxxing
@echo off
mode 80,24
cls
start https://www.whitepages.com/name/%firstname%-%lastname%/?fs=1&l=%csoz%&q=%firstname%+%lastname%
start https://www.advancedbackgroundchecks.com/names/%firstname%-%lastname%_%csoz%
start https://www.zabasearch.com/people/%firstname%+%lastname%/
start https://www.anywho.com/people/%firstname%-%lastname%/%csoz%
start https://www.youtube.com/results?search_query=%doxusername%
start https://twitter.com/%doxusername%
start https://www.reddit.com/user/%doxusername%/
start https://www.twitch.tv/%doxusername%
start https://www.instagram.com/%doxusername%/
start https://www.instagram.com/%firstname%%lastname%/
start https://www.google.com/search?q=%firstname%+%lastname%&sxsrf=ALeKk008zXYOCVyRSvJFEspKyknWgU6f1Q:1589005197978&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjjnfzSkabpAhUCP30KHbRpDS8Q_AUoAnoECAsQBA&biw=1920&bih=938
goto choice2

:choice2
@echo off
mode 80,24
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                       
echo                      [38;2;255;255;255m╔═══════════════╗    ╔═══════════════╗   
echo                      ║[40;36m[1]   home     [38;2;255;255;255m║    ║[40;36m[2]   exit     [38;2;255;255;255m║   
echo                      ╚═══════════════╝    ╚═══════════════╝   
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p choice= [40;36m %USER% [38;2;255;255;255m @ [40;36mZMR  :  [40;36m 
if %choice%==1 goto home2
if %choice%==2 goto end
echo %choice% is not a valid answer
pause
goto choice2

:end
cls
exit



::pingers
:zmrpinger
@echo off
chcp 65001
mode 117,29
cls
title ZMR ║ %USER% ║ DOX TOOL                                                                                            
echo.
echo.
echo                                                   [40;36m╔═╗╦╔╗╔╔═╗╔═╗╦═╗ 
echo                                                   [40;36m╠═╝║║║║║ ╦║╣ ╠╦╝   
echo                                                   [40;36m╩  ╩╝╚╝╚═╝╚═╝╩╚═ 
echo.
echo.
echo.
echo.
echo.   
echo.
echo                                      [38;2;255;255;255m╔═══════════════[40;36m[zmr#0001][38;2;255;255;255m══════════════╗
echo                                      ║                [40;36mENTER IP[38;2;255;255;255m               ║
echo                                      ║           [40;36m____  [38;2;255;255;255m__  __  [40;36m____          [38;2;255;255;255m║                               
echo                                      ║          [40;36m(_  _)[38;2;255;255;255m(  \/  )[40;36m(  _ \         [38;2;255;255;255m║                     
echo                                      ║           [40;36m/ /_  [38;2;255;255;255m)    (  [40;36m)   /         [38;2;255;255;255m║
echo                                      ║          [40;36m(____)[38;2;255;255;255m(_/\/\_)[40;36m(_)\_)         [38;2;255;255;255m║
echo                                      ║          ENTER to go back             ║
echo                                      ╚═══════════════════════════════════════╝
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo ═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
set /p SPEED= [40;36mZMR[38;2;255;255;255m @ [40;36mkix [38;2;255;255;255m║ [40;36msnelheid pinger [38;2;255;255;255m: [38;2;255;255;255m║ [40;36m1 = fast / 2 = default / 3 = slow [38;2;255;255;255m║  [38;2;255;255;255m:  [40;36m
echo [38;2;255;255;255m═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
if %SPEED% == 1 goto next
if %SPEED% == 2 goto next
if %SPEED% == 3 goto next
if %SPEED% == nul goto bad
:bad
echo.
echo [40;36mZMR[38;2;255;255;255m @ [40;36mkix [38;2;255;255;255m ║ ERROR ! Choose a number between (1, 2, 3)
timeout /t 2 /nobreak > nul
goto ippinger
echo.
:next
set /p IPPING= [40;36mZMR[38;2;255;255;255m @ [40;36mkix [38;2;255;255;255m ║ [40;36mPlease specify an IP  [38;2;255;255;255m║  : [40;36m
echo.

:ipping
PING -n %SPEED% %IP% | FIND "TTL=">nul
IF ERRORLEVEL 1 goto downed
IF NOT ERRORLEVEL 1 goto connected

:connected
echo [40;36mZMR[38;2;255;255;255m @ [40;36mkix [38;2;255;255;255m║ [40;36m[ %time% ] [38;2;255;255;255m║ [102m online [0m to [[40;36m %IPPING% [0m] [[92m+[0m] Status : [102m online [0m
echo.
goto ipping
:downed
echo [40;36mZMR[38;2;255;255;255m @ [40;36mkix [38;2;255;255;255m║ [40;36m[ %time% ] [38;2;255;255;255m║[41m offline [0m to [[40;36m %IPPING% [0m] [[40;36m-[0m] status : [41m OFFLINE [0m
echo.
goto ipping

:whatsmyip
title ZMR ║ %USER% ║ Whats my ip 
mode 80,20
color F
cls
echo ════════════════════════════════════════════════════════════════════════════════
echo.
ipconfig | findstr /R /C:"IPv4 Address"
echo.
echo ════════════════════════════════════════════════════════════════════════════════
echo.
echo [40;36mpress enter to go back
echo.
pause >nul
goto home2
