rem @echo off
cd /d %~dp0



fc META-INF\AIR\application0.txt META-INF\AIR\application.xml > nul
if %ERRORLEVEL% == 0 (
copy /y META-INF\AIR\application1.txt META-INF\AIR\application.xml >nul
goto end
)
fc META-INF\AIR\application1.txt META-INF\AIR\application.xml > nul
if %ERRORLEVEL% == 0 (
copy /y META-INF\AIR\application2.txt META-INF\AIR\application.xml >nul
goto end
)
fc META-INF\AIR\application2.txt META-INF\AIR\application.xml > nul
if %ERRORLEVEL% == 0 (
copy /y META-INF\AIR\application3.txt META-INF\AIR\application.xml >nul
goto end
)
fc META-INF\AIR\application3.txt META-INF\AIR\application.xml > nul
if %ERRORLEVEL% == 0 (
copy /y META-INF\AIR\application0.txt META-INF\AIR\application.xml >nul
goto end
)


goto end

rem echo "%1"
set l1=%1
set cont=%Loa2cont%
if "%cont%" == "" (
 set /a Loa2cont=cont=0
)
fc META-INF\AIR\application0.txt META-INF\AIR\application.xml > nul
if %ERRORLEVEL% == 1 (
    echo '0'
) else (
set /a Loa2cont=%cont%+1
)

copy /y META-INF\AIR\application%Loa2cont%.txt META-INF\AIR\application.xml > nul
echo "%cont%"
set /a Loa2cont=%cont%+1
if %cont% geq 3 (
 set /a Loa2cont=0
)
rem echo %Loa2cont%
rem start "League of Angels II.exe" %l1%

copy /y META-INF\AIR\application0.txt META-INF\AIR\application.xml >nul
copy /y META-INF\AIR\application1.txt META-INF\AIR\application.xml >nul
copy /y META-INF\AIR\application2.txt META-INF\AIR\application.xml >nul
copy /y META-INF\AIR\application3.txt META-INF\AIR\application.xml >nul
:end
