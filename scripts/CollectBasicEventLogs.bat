@echo off
setlocal enabledelayedexpansion

rem ■概要説明
rem テキストでイベントログを回収するサンプル。
rem Application、System、Securityの主要な3つのログを回収する。

rem ■設定事項
set original=
set target=

rem ■このバッチが存在するフォルダをカレントにして、標準出力をクリア
pushd %0\..
cls

rem ■本処理
call :PreCausion
call :CollectEventLogs
goto :End

rem 管理者実行しないと回収できないログがあるので、前もって警告
:PreCausion
echo.
echo ****
echo You need execute as an Administrator to collect the Security event logs.
echo ****
echo.
exit /b

rem 主要3つのイベントログをcsvファイルで回収
:CollectEventLogs
cscript DumpEventLog.vbs 127.0.0.1 Application.csv "Application"
cscript DumpEventLog.vbs 127.0.0.1 System.csv "System"
cscript DumpEventLog.vbs 127.0.0.1 Security.csv "Security"
exit /b

:End

endlocal
pause
exit