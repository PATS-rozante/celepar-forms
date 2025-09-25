@echo off
del /Q .\out\Amostra_02_sample*.* >nul >>nul
node notif.autuacao.js -in 2016.09.17_NOTIFI.AUTUACAO-sample.xml -out TEMP.xml
call DO Merge -form ./NOTIF.AUTUACAO.xatw -data ./TEMP.xml -config $U/Config/CeleparPCL.prt -output ./out/Amostra_02_sample.pcl -imagePath "/DocOrigin/User/Forms/celepar/POC/Amostra 02/999999/20240818" -logfile ./out/Amostra_02_sample_pcl.log
dir .\out\Amostra_02_sample*.*