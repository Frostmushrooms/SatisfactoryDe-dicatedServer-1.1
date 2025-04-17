@echo off
mkdir "%~dp0steamcmd8888" >nul 2>nul
CD "%~dp0steamcmd8888"
curl -o "steamcmd.zip" "https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip"
tar -xf steamcmd.zip
CD ..

taskkill /IM FactoryServer-Win64-Shipping-Cmd.exe /F >nul 2>nul

"%~dp0steamcmd8888/steamcmd.exe" +force_install_dir "%~dp0ServerCore8888" +login anonymous +app_update 1690800 -beta experimental validate +quit