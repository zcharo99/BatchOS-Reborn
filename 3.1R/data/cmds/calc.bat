@echo off

:bef_load
title Calculator for BatchOS 3.1R

:loading
cls
echo Loading calc.bat...
set math=0
set /a math_ans=0
timeout 3 >nul
echo Loaded!

:menu
cls
echo ---------------------------------------------------
echo Welcome, %username% in the Calculator!
echo Type "exit" to exit.
echo ---------------------------------------------------
echo.
pause
cls

:math
echo %math%=%math_ans%
echo Enter the mathematic problem:
set /p math=
if /i "%math%"=="exit" (
    cls
    echo Bye!
    exit /b
)
set /a math_ans=%math%
cls
goto :math