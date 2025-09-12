@echo off
del /Q Amostra_04_sample.pdf
del /Q Amostra_04_sample.log
DO Merge -form ./CELPR04.xatw -filter CELPR04.xfilter -data ./CELPR04_AMOSTRALPR00ZWAFIUTW3YJ0110D776AE-SAMPLE.spl.txt -documentTag Document -config $U/Config/CeleparPDF.prt -output ./Amostra_04_sample.pdf -logfile ./Amostra_04_sample.log
dir Amostra_04_sample.pdf