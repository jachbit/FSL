@echo off
title FOCUS SHOPPING LIST — Backup
set TS=%date:~10,4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%
set TS=%TS: =0%

set ROOT=D:\ClaudeCodeProjects\FOCUS Shopping List
set BAK=D:\ClaudeCodeProjects\Backup\FOCUS Shopping List\%TS%

echo ============================================
echo   FOCUS SHOPPING LIST — Full Backup
echo   Timestamp: %TS%
echo ============================================

mkdir "%BAK%"

xcopy /I /Y "%ROOT%\index.html"  "%BAK%\"
xcopy /E /I /Y "%ROOT%\lib"       "%BAK%\lib\"

echo.
echo ============================================
echo   Backup complete! Saved to:
echo   %BAK%\
echo ============================================
pause
