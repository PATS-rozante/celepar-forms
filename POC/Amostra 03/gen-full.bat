@echo off
del /Q .\out\Amostra_03_full*.*
node renov.auto.js -in p.dut.amostra3.renov.auto.xml -out TEMP.xml
call DO Merge -form ./dut.renov.auto.xatw -data ./TEMP.xml -config $U/Config/CeleparPCL.prt -output ./out/Amostra_03_full.pcl -logfile ./out/Amostra_03_full_pcl.log
call DO Merge -form ./dut.renov.auto.xatw -data ./TEMP.xml -config $U/Config/CeleparPDF.prt -output ./out/Amostra_03_full.pdf -logfile ./out/Amostra_03_full_pdf.log
dir .\out\Amostra_03_full*.*