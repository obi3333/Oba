@echo off
REM Get the current user's Startup folder path
set "StartupPath=%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"

REM Source path of the startup.bat file
set "SourcePath=C:\s\Oba-main\startup.bat"

REM Check if the source file exists
if exist "%SourcePath%" (
    echo Moving startup.bat to Startup folder...
    move /y "%SourcePath%" "%StartupPath%"
    if %errorlevel%==0 (
        echo File successfully moved to %StartupPath%.
    ) else (
        echo Failed to move the file. Check permissions or paths.
    )
) else (
    echo Source file not found: %SourcePath%
)

pause
