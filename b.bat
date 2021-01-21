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
:end
