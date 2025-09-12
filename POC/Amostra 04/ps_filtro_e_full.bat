@echo off
del /Q Amostra_04_full_PS.ps2
del /Q Amostra_04_full_PS.log
DO Merge -form ./CELPR04.xatw -filter CELPR04.xfilter -data ./CELPR04_AMOSTRALPR00ZWAFIUTW3YJ0110D776AE.spl.txt -documentTag Document -config $U/Config/CeleparPS2.prt -output ./Amostra_04_full_PS.ps2 -logfile ./Amostra_04_full_PS.log
dir Amostra_04_full_PS.ps2