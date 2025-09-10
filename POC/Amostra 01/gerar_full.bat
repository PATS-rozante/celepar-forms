@echo off
del /Q Amostra_01_full.pdf
del /Q Amostra_01_full.log
DO Merge -form ./DAE004.xatw -data ./DAE004.xml -documentTag Document -config $U/Config/CeleparPDF.prt -output ./Amostra_01_full.pdf -logfile ./Amostra_01_full.log
dir Amostra_01_full.pdf
