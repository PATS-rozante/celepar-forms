@echo off
del /Q Amostra_04_sample.pdf
del /Q Amostra_04_sample.log
DO Merge -form ./CELPR04.xatw -data ./CELPR04-SAMPLE.xml -documentTag Document -config $U/Config/CeleparPDF.prt -output ./Amostra_04_sample.pdf -logfile ./Amostra_04_sample.log
dir Amostra_04_sample.pdf