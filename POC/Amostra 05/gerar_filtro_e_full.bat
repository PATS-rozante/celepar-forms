@echo off
del /Q Amostra_05_full.pdf
del /Q Amostra_05_full.log
DO Merge -form ./rhc008.xatw -filter rhc008.xfilter -data ./p.rhc.amostra5.txt -documentTag Document -config $U/Config/CeleparPDF.prt -output ./Amostra_05_full.pdf -logfile ./Amostra_05_full.log
dir Amostra_05_full.pdf