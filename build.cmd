@echo off

setlocal
set ORIGINAL_CURRENT_DIR=%cd%
set KOREBUILD_DOTNET_CHANNEL=rel-1.0.0
set KOREBUILD_DOTNET_VERSION=1.0.4

cd %~dp0

PowerShell -NoProfile -NoLogo -ExecutionPolicy unrestricted -Command "[System.Threading.Thread]::CurrentThread.CurrentCulture = ''; [System.Threading.Thread]::CurrentThread.CurrentUICulture = '';& '%~dp0build.ps1' %*; exit $LASTEXITCODE"