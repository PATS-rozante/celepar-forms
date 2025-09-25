@echo off
del /Q .\out\Amostra_05_BANNER*.* >nul >>nul
call DO Merge -form ./rhc008.xatw -filter rhc008.xfilter -data ./p.rhc.amostra5-BANNER.txt -config $U/Config/CeleparPCL.prt -output ./out/Amostra_05_BANNER.pcl -logfile ./out/Amostra_05_BANNER_pcl.log
dir .\out\Amostra_05_BANNER*.*