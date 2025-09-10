@echo off
del /Q Amostra_05_sample.pdf
del /Q Amostra_05_sample.log
DO Merge -form ./rhc008.xatw -data ./rhc008-SAMPLE.xml -documentTag Document -config $U/Config/CeleparPDF.prt -output ./Amostra_05_sample.pdf -logfile ./Amostra_05_sample.log
dir Amostra_05_sample.pdf