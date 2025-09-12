@echo off
del /Q Amostra_04_Pitorri.ps2
del /Q Amostra_04_Pitorri.log
DO Merge -form ./CELPR04.xatw -data ./CELPR04_PITORRI.spl.txt.xml -documentTag Document -config $U/Config/CeleparPS2.prt -output ./Amostra_04_Pitorri.ps2 -logfile ./Amostra_04_Pitorri.log
dir Amostra_04_Pitorri.ps2