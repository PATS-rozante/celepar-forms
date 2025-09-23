@echo off
del /Q .\out\Amostra_04_sample_ps.ps2
del /Q .\out\Amostra_04_sample_ps.log
call DO Merge -form ./CELPR04.xatw -filter CELPR04.xfilter -data ./CELPR04_AMOSTRALPR00ZWAFIUTW3YJ0110D776AE-SAMPLE.spl.txt -config $U/Config/CeleparPS2.prt -output ./out/Amostra_04_sample_ps.ps2 -logfile ./out/Amostra_04_sample_ps.log
dir .\out\Amostra_04_sample_ps.*
