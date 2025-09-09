@echo off
del /Q Amostra_02_sample.pdf
del /Q Amostra_02_sample.log
node notif.autuacao.js -in 2016.09.17_NOTIFI.AUTUACAO-sample.xml -out NOTIFI.xml
DO Merge -form ./NOTIF.AUTUACAO.xatw -data ./NOTIFI.xml -documentTag Document -config $U/Config/CeleparPDF.prt -output ./Amostra_02_sample.pdf -logfile ./Amostra_02_sample.log
dir Amostra_02_sample.pdf