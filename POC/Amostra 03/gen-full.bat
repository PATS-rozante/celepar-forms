@echo off
del /Q .\out\Amostra_03_full*.*
rem node renov.auto.js -in p.dut.amostra3.renov.auto.xml -out TEMP.xml
call DO Merge -form ./dut.renov.auto.xatw -data ./TEMP.xml -config $U/Config/CeleparPCL.prt -output ./out/Amostra_03_full.pcl -logfile ./out/Amostra_03_full_pcl.log -documentTag=Document
dir .\out\Amostra_03_full*.*