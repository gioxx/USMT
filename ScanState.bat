@echo off
if "%1"=="" goto error
if not exist MigDomCustom-Gioxx.xml goto error

cls
echo USMT ScanState per Windows 7
echo GSolone 2013 (20130205-rev0)
echo.
echo Copio i dati di %1
if not exist %systemdrive%\mig mkdir %systemdrive%\mig
"%ProgramFiles%\USMT4.01\scanstate" %SystemDrive%\mig /ue:*\* /ui:%1 /i:"%ProgramFiles%\USMT4.01\migapp.xml" /i:MigDomCustom-Gioxx.xml /o /c /r:1
goto end

:error
cls
echo.
echo Utilizzo del batch:
echo ScanState dominio1\vecchioutente
echo Verificare la presenza del file MigDomCustom-Gioxx.xml all'interno di questa cartella.
echo.

:end