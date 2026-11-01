@echo off
title Deploiement Automatique Club Alpha by STIEL sur Vercel
cd /d "D:\data\club-alpha-deploy"

echo ========================================================
echo   DEPLOIEMENT AUTOMATIQUE - CLUB ALPHA SUR VERCEL
echo ========================================================
echo.

echo Verification de la connexion Vercel...
call "C:\Users\lemji\AppData\Roaming\npm\vercel.cmd" whoami >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [INFO] Une fenetre de navigateur va s'ouvrir pour vous connecter a Vercel.
    echo Veuillez confirmer la connexion dans votre navigateur...
    echo.
    call "C:\Users\lemji\AppData\Roaming\npm\vercel.cmd" login
)

echo.
echo ========================================================
echo   Lancement du deploiement en Production...
echo ========================================================
echo.
call "C:\Users\lemji\AppData\Roaming\npm\vercel.cmd" --prod --yes

echo.
echo ========================================================
echo   Deploiement termine avec succes !
echo ========================================================
pause

