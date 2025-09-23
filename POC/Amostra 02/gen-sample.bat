@echo off
del /Q .\out\Amostra_02_sample.pdf >nul >>nul
del /Q .\out\Amostra_02_sample.log >nul >>nul
node notif.autuacao.js -in 2016.09.17_NOTIFI.AUTUACAO-sample.xml -out TEMP.xml
call DO Merge -form ./NOTIF.AUTUACAO.xatw -data ./TEMP.xml -config $U/Config/CeleparPDF.prt -output ./out/Amostra_02_sample.pdf -imagePath "/DocOrigin/User/Forms/celepar/POC/Amostra 02/999999/20240818" -logfile ./out/Amostra_02_sample.log
dir .\out\Amostra_02_sample.*