@echo off
del /Q Amostra_02_full.pdf
del /Q Amostra_02_full.log
node notif.autuacao.js -in 2016.09.17_NOTIFI.AUTUACAO.xml -out NOTIFI.xml
DO Merge -form ./NOTIF.AUTUACAO.xatw -data ./NOTIFI.xml -documentTag Document -config $U/Config/CeleparPDF.prt -output ./Amostra_02_full.pdf -logfile ./Amostra_02_full.log
dir Amostra_02_full.pdf