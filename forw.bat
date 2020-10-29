@ECHO OFF

if "%~1"=="" (GOTO NO_FILENAME)

ECHO %~1 | findstr /r "[a-z]*\_S[0-9][0-9][0-9][0-9][0-9]\.[a-z]*"

IF ERRORLEVEL 1 (GOTO INCORRECT_NAME)

copy "%CD%\*.java" "%~1" /v
ECHO Success: file %CD%\%1 created
ECHO !!! Don't forget !!!
ECHO - Name of the main class should be the same as a filename
ECHO - Only one class may be declared public
ECHO - Put all your imports at the top of a file
goto BLANK

:INCORRECT_NAME
ECHO Failed: provide correct filename
ECHO e.g. Smith_S12345.java
goto BLANK

:NO_FILENAME
ECHO Failed: provide filename as 1st arg
ECHO e.g. Smith_S12345.java
goto BLANK


:BLANK