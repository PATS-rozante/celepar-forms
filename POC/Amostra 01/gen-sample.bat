@echo off
del /Q .\out\Amostra_01_sample.*
rem ConvertTxtToXml -xfilter DAE004.xfilter -in ./DAE004-SAMPLE.txt -out ./DAE004-SAMPLE.xml -logfile ./out/DAE004-SAMPLE.log
call DO Merge -form ./DAE004.xatw -filter DAE004.xfilter -data ./DAE004-SAMPLE.txt -config $U/Config/CeleparPDF.prt -output ./out/Amostra_01_sample.pdf -logfile ./out/Amostra_01_sample.log
dir .\out\Amostra_01_sample.*
