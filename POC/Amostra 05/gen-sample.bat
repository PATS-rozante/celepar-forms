@echo off
del /Q .\out\Amostra_05_sample.pdf >nul >>nul
del /Q .\out\Amostra_05_sample.pcl >nul >>nul
del /Q .\out\Amostra_05_sample_pdf.log >nul >>nul
del /Q .\out\Amostra_05_sample_pcl.log >nul >>nul
call DO Merge -form ./rhc008.xatw -filter rhc008.xfilter -data ./p.rhc.amostra5-SAMPLE.txt -config $U/Config/CeleparPDF.prt -output ./out/Amostra_05_sample.pdf -logfile ./out/Amostra_05_sample_pdf.log
call DO Merge -form ./rhc008.xatw -filter rhc008.xfilter -data ./p.rhc.amostra5-SAMPLE.txt -config $U/Config/CeleparPCL.prt -output ./out/Amostra_05_sample.pcl -logfile ./out/Amostra_05_sample_pcl.log
dir .\out\Amostra_05_sample*.*