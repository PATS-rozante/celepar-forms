@echo off
del /Q Amostra_02_full.pdf
del /Q Amostra_02_full.log
DO Merge -filter "./notif.autuacao.js" -form ./NOTIF.AUTUACAO.xatw -data ./2016.09.17_NOTIFI.AUTUACAO.xml -documentTag Document -config $U/Config/CeleparPDF.prt -output ./Amostra_02_full.pdf -logfile ./Amostra_02_full.log
dir Amostra_02_full.pdf