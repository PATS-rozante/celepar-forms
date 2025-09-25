@echo off
del /Q .\out\Amostra_05_full*.*
call DO Merge -form ./rhc008.xatw -filter rhc008.xfilter -data ./p.rhc.amostra5.txt -config $U/Config/CeleparPCL.prt -output ./out/Amostra_05_full.pcl -logfile ./out/Amostra_05_full_pcl.log
call DO Merge -form ./rhc008.xatw -filter rhc008.xfilter -data ./p.rhc.amostra5.txt -config $U/Config/CeleparPDF.prt -output ./out/Amostra_05_full.pdf -logfile ./out/Amostra_05_full_pdf.log
dir .\out\Amostra_05_full*.*