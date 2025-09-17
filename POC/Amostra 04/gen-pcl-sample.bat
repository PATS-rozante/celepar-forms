@echo off
del /Q .\out\Amostra_04_sample_pcl.pcl
del /Q .\out\Amostra_04_sample_pcl.log
call DO Merge -form ./CELPR04.xatw -filter CELPR04.xfilter -data ./CELPR04_AMOSTRALPR00ZWAFIUTW3YJ0110D776AE-SAMPLE.spl.txt -config $U/Config/CeleparPCL.prt -output ./out/Amostra_04_sample_pcl.pcl -logfile ./out/Amostra_04_sample_pcl.log
dir .\out\Amostra_04_sample_pcl.*
