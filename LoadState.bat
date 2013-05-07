@echo off
if "%1"=="" goto error
if "%2"=="" goto error
if not exist MigDomCustom7.xml goto error

cls
echo USMT LoadState per Windows 7
echo GSolone 2013 (20130507-rev0)
echo.
echo Sposto i dati da %1 a %2
"%ProgramFiles%\USMT4.01\loadstate" %SystemDrive%\mig\ /mu:%1:%2 /i:"%ProgramFiles%\USMT4.01\migapp.xml" /i:MigDomCustom7.xml /c
goto end

:error
cls
echo.
echo Utilizzo del batch:
echo LoadState dominio1\vecchioutente dominio2\nuovoutente
echo Verificare la presenza del file MigDomCustom7.xml all'interno di questa cartella.
echo.

:end