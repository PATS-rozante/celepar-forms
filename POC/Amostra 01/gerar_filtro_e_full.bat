@echo off
del /Q Amostra_01_full.pdf
del /Q Amostra_01_full.log
DO Merge -form ./DAE004.xatw -filter DAE004.xfilter -data ./DAE004.txt -documentTag Document -config $U/Config/CeleparPDF.prt -output ./Amostra_01_full.pdf -logfile ./Amostra_01_full.log
dir Amostra_01_full.pdf