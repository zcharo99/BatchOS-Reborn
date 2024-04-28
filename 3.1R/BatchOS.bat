@echo off
title BatchOS 3.1 Reborn
echo Welcome to BatchOS!

:usernameIn
echo PC Username:
set /p usernameInput=$ 
if /i %usernameInput%==%username% (
  goto logging_in
) else (
  echo Incorrect!
  goto usernameIn
)

:logging_in
echo Logging in...
timeout 2 >nul
echo Logged in!
pause
cd data
kernel