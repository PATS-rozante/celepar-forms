@echo off
del /Q Amostra_04_Pitorri.pdf
del /Q Amostra_04_Pitorri.log
DO Merge -form ./CELPR04.xatw -data ./CELPR04_PITORRI.spl.txt.xml -documentTag Document -config $U/Config/CeleparPDF.prt -output ./Amostra_04_Pitorri.pdf -logfile ./Amostra_04_Pitorri.log
dir Amostra_04_Pitorri.pdf