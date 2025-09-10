@echo off
del /Q Amostra_01_sample.pdf
del /Q Amostra_01_sample.log
DO Merge -form ./DAE004.xatw -data ./DAE004-SAMPLE.xml -documentTag Document -config $U/Config/CeleparPDF.prt -output ./Amostra_01_sample.pdf -logfile ./Amostra_01_sample.log
dir Amostra_01_sample.pdf