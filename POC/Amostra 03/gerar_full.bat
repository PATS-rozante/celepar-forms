@echo off
del Amostra_03_full.pdf
DO Merge -form ./dut.renov.auto.xatw -data ./p.dut.amostra3.renov.auto.xml -documentTag Document -config /DocOrigin/User/Config/CeleparPDF.prt -output ./Amostra_03_full.pdf -logfile ./Amostra_03_full.log
dir Amostra_03_full.pdf