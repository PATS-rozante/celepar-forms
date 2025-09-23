@echo off
del /Q .\out\Amostra_02_full.pdf >>nul
del /Q .\out\Amostra_02_full.log >>nul
node notif.autuacao.js -in 2016.09.17_NOTIFI.AUTUACAO.xml -out TEMP.xml
call DO Merge -form ./NOTIF.AUTUACAO.xatw -data ./TEMP.xml -config $U/Config/CeleparPDF.prt -output ./out/Amostra_02_full.pdf -imagePath "/DocOrigin/User/Forms/celepar/POC/Amostra 02/999999/20240818" -logfile ./out/Amostra_02_full.log
dir .\out\Amostra_02_full.*