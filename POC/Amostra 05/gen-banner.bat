@echo off
del /Q .\out\Amostra_05_full*.* >nul >>nul
call DO Merge -form ./rhc008.xatw -filter rhc008.xfilter -data ./XPR00012_RHCEOS01_PRHC_30_09_2025_16_23_10.bin -config $U/Config/CeleparPDF.prt -output ./out/Amostra_05_full.pdf -logfile ./out/Amostra_05_full.log
dir .\out\Amostra_05_full*.*