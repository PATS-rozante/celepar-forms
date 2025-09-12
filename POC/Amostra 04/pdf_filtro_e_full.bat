@echo off
del /Q Amostra_04_full.pdf
del /Q Amostra_04_full.log
DO Merge -form ./CELPR04.xatw -filter CELPR04.xfilter -data ./CELPR04_AMOSTRALPR00ZWAFIUTW3YJ0110D776AE.spl.txt -documentTag Document -config $U/Config/CeleparPDF.prt -output ./Amostra_04_full.pdf -logfile ./Amostra_04_full.log
dir Amostra_04_full.pdf