@echo off
setlocal enabledelayedexpansion

SET BASE=36
SET VAR=%1


SET M=1
SET RESULT=0

for /L %%A IN (4,-1,0) DO (
	CALL :CONVERT !VAR:~%%A,1!	
)

echo %RESULT%


GOTO :EOF 



:CONVERT 
IF %1==0 SET N=0
IF %1==1 SET N=1
IF %1==2 SET N=2
IF %1==3 SET N=3
IF %1==4 SET N=4
IF %1==5 SET N=5
IF %1==6 SET N=6
IF %1==7 SET N=7
IF %1==8 SET N=8
IF %1==9 SET N=9
IF %1==a SET N=10
IF %1==b SET N=11
IF %1==c SET N=12
IF %1==d SET N=13
IF %1==e SET N=14
IF %1==f SET N=15
IF %1==g SET N=16
IF %1==h SET N=17
IF %1==i SET N=18
IF %1==j SET N=19
IF %1==k SET N=20
IF %1==l SET N=21
IF %1==m SET N=22
IF %1==n SET N=23
IF %1==o SET N=24
IF %1==p SET N=25
IF %1==q SET N=26
IF %1==r SET N=27
IF %1==s SET N=28
IF %1==t SET N=29
IF %1==u SET N=30
IF %1==v SET N=31
IF %1==w SET N=32
IF %1==x SET N=33
IF %1==y SET N=34
IF %1==z SET N=35

SET /A RESULT+=N*M

SET /A M*=BASE



