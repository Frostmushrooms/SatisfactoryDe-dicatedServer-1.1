@echo off
mkdir "%~dp0steamcmd7777" >nul 2>nul
CD "%~dp0steamcmd7777"
curl -o "steamcmd.zip" "https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip"
tar -xf steamcmd.zip
CD ..

taskkill /IM FactoryServer-Win64-Shipping-Cmd.exe /F >nul 2>nul

for /f "tokens=2" %%i in ('tasklist /v ^| findstr /c:"FactoryServerDaemon"') do (
    set pid=%%i
)

if defined pid (
    echo Find Daemon Process PID: !pid!
    taskkill /PID !pid! /F
    echo Daemon Process Stoped
) else (
    echo Daemon Process not running
)

"%~dp0steamcmd7777/steamcmd.exe" +force_install_dir "%~dp0ServerCore7777" +login anonymous +app_update 1690800 -beta public validate +quit

rmdir "%~dp0steamcmd7777" /s /q

set filesize=0
for /f "delims=" %%s in (
    'powershell -command "(Get-ChildItem -Path \"%~dp0ServerCore7777\" -Recurse -File -Force | Measure-Object -Property Length -Sum).Sum / 1GB"'
) do set filesizeGB=%%s

powershell -Command "& { [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] > $null; $template = [Windows.UI.Notifications.ToastNotificationManager]::GetTemplateContent([Windows.UI.Notifications.ToastTemplateType]::ToastText02); $xml = New-Object Windows.Data.Xml.Dom.XmlDocument; $xml.LoadXml($template.GetXml()); $toastElements = $xml.GetElementsByTagName('text'); if ($toastElements.Count -ge 2) { $titleNode = $xml.CreateTextNode('Satisfactory Server Downloaded'); $toastElements.Item(0).AppendChild($titleNode) > $null; $contentNode = $xml.CreateTextNode('Server File size: %filesizeGB% GB'); $toastElements.Item(1).AppendChild($contentNode) > $null; $toast = [Windows.UI.Notifications.ToastNotification]::new($xml); $notifier = [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier('Satisfactory Server Manager'); $notifier.Show($toast); } else { Write-Host 'Unable to create toast notification.' } }" >nul 2>nul
