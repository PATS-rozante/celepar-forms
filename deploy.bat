@echo off
cls
copy /Y Celepar*.prt \PATS\patsxps\customers\pats\app\do\Config >nul

echo Configuracoes PRT atualizadas...

copy /Y Truetype\* \PATS\patsxps\customers\pats\res\truetype >nul

echo Fontes TrueType atualizadas...
pause

copy /Y "POC\Amostra 01\DAE004.xfilter" \PATS\patsxps\customers\pats\app\do\Forms\POC\amostra1 >nul
copy /Y "POC\Amostra 01\DAE004.xatw" \PATS\patsxps\customers\pats\app\do\Forms\POC\amostra1 >nul

copy /Y "POC\Amostra 02\notif.autuacao.js" \PATS\patsxps\customers\pats\app\do\Forms\POC\amostra2 >nul
copy /Y "POC\Amostra 02\NOTIF.AUTUACAO.xatw" \PATS\patsxps\customers\pats\app\do\Forms\POC\amostra2 >nul

copy /Y "POC\Amostra 03\renov.auto.js" \PATS\patsxps\customers\pats\app\do\Forms\POC\amostra3 >nul
copy /Y "POC\Amostra 03\dut.renov.auto.xatw" \PATS\patsxps\customers\pats\app\do\Forms\POC\amostra3 >nul

copy /Y "POC\Amostra 04\CELPR04.xfilter" \PATS\patsxps\customers\pats\app\do\Forms\POC\amostra4 >nul
copy /Y "POC\Amostra 04\CELPR04.xatw" \PATS\patsxps\customers\pats\app\do\Forms\POC\amostra4 >nul

copy /Y "POC\Amostra 05\rhc008.xfilter" \PATS\patsxps\customers\pats\app\do\Forms\POC\amostra5 >nul
copy /Y "POC\Amostra 05\rhc008.xatw" \PATS\patsxps\customers\pats\app\do\Forms\POC\amostra5 >nul

echo Aplicacoes atualizadas...
echo.
echo Geracao dos jobs da POC para validacao
pause

del /Q \PATS\patsxps\customers\pats\ftp-test\spool\* >nul
copy "POC\tests\*" \PATS\patsxps\customers\pats\input >nul

explorer \PATS\patsxps\customers\pats\ftp-test\spool
