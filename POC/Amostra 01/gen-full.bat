@echo off
del /Q .\out\Amostra_01_full.*
rem ConvertTxtToXml -xfilter DAE004.xfilter -in ./DAE004.txt -out ./DAE004.xml -logfile ./out/DAE004.log
call DO Merge -form ./DAE004.xatw -filter DAE004.xfilter -data ./DAE004.txt -config $U/Config/CeleparPDF.prt -output ./out/Amostra_01_full.pdf -logfile ./out/Amostra_01_full.log
dir .\out\Amostra_01_full.*
