@echo off
del /Q .\out\Amostra_04_Pitorri.pdf
del /Q .\out\Amostra_04_Pitorri.log
call DO Merge -form ./CELPR04.xatw -filter CELPR04.xfilter -data ./CELPR04_PITORRI.spl.txt -config $U/Config/CeleparPDF.prt -output ./out/Amostra_04_Pitorri.pdf -logfile ./out/Amostra_04_Pitorri.log
dir .\out\Amostra_04_Pitorri.*
