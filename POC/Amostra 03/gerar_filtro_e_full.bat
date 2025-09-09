@echo off
del Amostra_03_full.pdf
DO Merge -filter "ConvertTxtToXml -xfilter dut.renov.auto.xfilter" -form ./dut.renov.auto.xatw -data ./p.dut.amostra3.renov.auto -documentTag Document -config %DO_ROOT%/User/Config/CeleparPDF.prt -output ./Amostra_03_full.pdf -logfile ./Amostra_03_full.log
dir Amostra_03_full.pdf