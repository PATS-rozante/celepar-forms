@echo off
del /Q Amostra_03_full.pdf
del /Q Amostra_03_full.log
node renov.auto.js -in p.dut.amostra3.renov.auto.xml -out RENOV.xml
DO Merge -form ./dut.renov.auto.xatw -data ./RENOV.xml -documentTag Document -config $U/Config/CeleparPDF.prt -output ./Amostra_03_full.pdf -logfile ./Amostra_03_full.log
dir Amostra_03_full.pdf