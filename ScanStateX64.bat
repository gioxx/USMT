@echo off
if "%1"=="" goto error
if not exist MigDomCustom7.xml goto error

cls
C:
echo USMT ScanState per Windows 7 x64
echo GSolone 2013 (20130507-rev0)
echo.
echo Copio i dati di %1
if not exist %systemdrive%\mig mkdir %systemdrive%\mig
"%ProgramFiles(x86)%\USMT\Binaries\v4\amd64\scanstate" %SystemDrive%\mig /ue:*\* /ui:%1 /i:"%ProgramFiles(x86)%\USMT\Binaries\v4\amd64\migapp.xml" /i:MigDomCustom7.xml /o /c /r:1
goto end

:error
cls
echo.
echo Utilizzo del batch:
echo ScanState dominio1\vecchioutente
echo Verificare la presenza del file MigDomCustom7.xml all'interno di questa cartella.
echo.

:end