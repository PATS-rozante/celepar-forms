@echo off
del /Q Amostra_05_full.pdf
del /Q Amostra_05_full.log
DO Merge -form ./rhc008.xatw -data ./rhc008.xml -documentTag Document -config $U/Config/CeleparPDF.prt -output ./Amostra_05_full.pdf -logfile ./Amostra_05_full.log
dir Amostra_05_full.pdf
