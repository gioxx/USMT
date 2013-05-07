@echo off
if "%1"=="" goto error
if "%2"=="" goto error
if not exist MigDomCustomXp.xml goto error

cls
echo USMT LoadState per Windows XP
echo GSolone 2013 (20130507-rev0)
echo.
echo Sposto i dati da %1 a %2
"%ProgramFiles%\USMT301\loadstate" %SystemDrive%\mig\ /mu:%1:%2 /i:"%ProgramFiles%\USMT301\migapp.xml" /i:MigDomCustomXp.xml /c
goto end

:error
cls
echo.
echo Utilizzo del batch:
echo LoadState dominio1\vecchioutente dominio2\nuovoutente
echo Verificare la presenza del file MigDomCustomXp.xml all'interno di questa cartella.
echo.

:end