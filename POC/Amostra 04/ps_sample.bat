@echo off
del /Q Amostra_04_sample_PS.ps2
del /Q Amostra_04_sample_PS.log
DO Merge -form ./CELPR04.xatw -data ./CELPR04-SAMPLE.xml -documentTag Document -config $U/Config/CeleparPS2.prt -output ./Amostra_04_sample_PS.ps2 -logfile ./Amostra_04_sample_PS.log
dir Amostra_04_sample_PS.ps2