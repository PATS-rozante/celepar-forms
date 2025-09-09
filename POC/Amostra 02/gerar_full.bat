@echo off
del /Q Amostra_02_full.pdf
del /Q Amostra_02_full.log
DO Merge -form ./NOTIF.AUTUACAO.xatw -data ./NOTIFI.xml -documentTag Document -config $U/Config/CeleparPDF.prt -output ./Amostra_02_full.pdf -logfile ./Amostra_02_full.log
dir Amostra_02_full.pdf
