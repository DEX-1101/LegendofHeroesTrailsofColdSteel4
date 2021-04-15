::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJFWF5E4xKx5ZcAiRLyuoFrZ8
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnx0"
goto :EOF
:minimized

mode con:cols=80 lines=10
color f0
title RPC Logging
SETLOCAL EnableExtensions
:: ================================================


REM ============GAME===============
start lss.exe
REM ============GAME===============

REM ===========RUNNING PROCCES=============
echo [1101] Checking Discord . . .
timeout 1 >NUL
set EXE=Discord.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ProcessFound
goto ProcessNotFound
:ProcessFound
echo %EXE% is running
echo.
goto NEXT
:ProcessNotFound
color fc
echo WARNING : %EXE% is not running
echo.
goto ERROR
REM ===========END=============


:NEXT
echo [1101] Checking Node.js . . .
where node.exe >nul 2>&1 && echo Node.js is installed. || echo Node.js not installed.
node -v
echo.

echo [1101] Running RPC . . . 
node .\rpc\index.js
echo Exiting RPC . . .
timeout 2>nul
EXIT

:ERROR
echo Make sure Discord is opened and running normally.
pause


EXIT


