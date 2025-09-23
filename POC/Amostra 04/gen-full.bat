@echo off
del /Q .\out\Amostra_04_full.pcl
del /Q .\out\Amostra_04_full.pdf
del /Q .\out\Amostra_04_full_pdf.log
del /Q .\out\Amostra_04_full_pcl.log
call DO Merge -form ./CELPR04.xatw -filter CELPR04.xfilter -data ./CELPR04_AMOSTRALPR00ZWAFIUTW3YJ0110D776AE.spl.txt -config $U/Config/CeleparPDF.prt -output ./out/Amostra_04_full.pdf -logfile ./out/Amostra_04_full_pdf.log
call DO Merge -form ./CELPR04.xatw -filter CELPR04.xfilter -data ./CELPR04_AMOSTRALPR00ZWAFIUTW3YJ0110D776AE.spl.txt -config $U/Config/CeleparPCL.prt -output ./out/Amostra_04_full.pcl -logfile ./out/Amostra_04_full_pcl.log
dir .\out\Amostra_04_full*.*
