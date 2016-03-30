@echo off

IF "%1"=="00000" (
   ECHO "Modifique o job alterando a variável %%%%ORDERID_ e execute o job novamente com RERUN
   EXIT 1

)  

FOR /F %%A IN ( 'X:\Scripts\toBase10.bat %1') DO ECHO UPDATE CMR_AJF SET STATE='8', STATUS='N' WHERE ORDERNO=%%A >X:\Scripts\muda_state_job.sql
