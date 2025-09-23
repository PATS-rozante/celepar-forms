@echo off
del /Q .\out\Amostra_01_full*.*
call DO Merge -form ./DAE004.xatw -filter DAE004.xfilter -data ./DAE004.txt -config $U/Config/CeleparPCL.prt -output ./out/Amostra_01_full.pcl -logfile ./out/Amostra_01_full_pcl.log
call DO Merge -form ./DAE004.xatw -filter DAE004.xfilter -data ./DAE004.txt -config $U/Config/CeleparPDF.prt -output ./out/Amostra_01_full.pdf -logfile ./out/Amostra_01_full_pdf.log
dir .\out\Amostra_01_full*.*
