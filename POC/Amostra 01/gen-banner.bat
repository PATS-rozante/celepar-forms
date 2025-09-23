@echo off
del /Q .\out\Amostra_01_BANNER*.*
rem ConvertTxtToXml -xfilter DAE004.xfilter -in ./DAE004-BANNER.txt -out ./DAE004-BANNER.xml -logfile ./out/DAE004-BANNER.log
call DO Merge -form ./DAE004.xatw -filter DAE004.xfilter -data ./DAE004-BANNER.txt -config $U/Config/CeleparPDF.prt -output ./out/Amostra_01_BANNER.pdf -logfile ./out/Amostra_01_BANNER_pdf.log
call DO Merge -form ./DAE004.xatw -filter DAE004.xfilter -data ./DAE004-BANNER.txt -config $U/Config/CeleparPCL.prt -output ./out/Amostra_01_BANNER.pcl -logfile ./out/Amostra_01_BANNER_pcl.log
dir .\out\Amostra_01_BANNER*.*
