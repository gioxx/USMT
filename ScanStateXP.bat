@echo off
if "%1"=="" goto error
if not exist MigDomCustomXp.xml goto error

cls
C:
echo USMT ScanState per Windows XP
echo GSolone 2013 (20130507-rev0)
echo.
echo Copio i dati di %1
if not exist %systemdrive%\mig mkdir %systemdrive%\mig
"%ProgramFiles%\USMT301\scanstate" %SystemDrive%\mig /ue:*\* /ui:%1 /i:"%ProgramFiles%\USMT301\migapp.xml" /i:MigDomCustomXp.xml /o /c
goto end

:error
cls
echo.
echo Utilizzo del batch:
echo ScanState dominio1\vecchioutente
echo Verificare la presenza del file MigDomCustomXp.xml all'interno di questa cartella.
echo.

:end