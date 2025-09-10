@echo off
del Amostra_03_sample.pdf
DO Merge -form ./dut.renov.auto.xatw -data ./p.dut.amostra3.renov.auto-SAMPLE.xml -documentTag Document -config %DO_ROOT%/User/Config/CeleparPDF.prt -output ./Amostra_03_sample.pdf -logfile ./Amostra_03_sample.log
dir Amostra_03_sample.pdf