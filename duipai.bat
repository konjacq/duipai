@echo off
echo Start.
del /q testdata >nul 2>nul
del mk_data.exe >nul 2>nul
del test.exe >nul 2>nul
del right.exe >nul 2>nul
del compinfo.txt >nul 2>nul
copy nul compinfo.txt >nul 2>nul
del testlog.txt >nul 2>nul
md testdata >nul 2>nul
set /a t = 0 >nul 2>nul
set /a c = 0 >nul 2>nul
echo Compiling mk_data.cpp...
g++ -o source\mk_data.exe source\mk_data.cpp -Ofast -std=c++11 -Wall -Wextra -Wl,--stack=536870912 2>compinfo.txt
echo Compiling test.cpp...
g++ -o source\test.exe source\test.cpp -Ofast -std=c++11 -Wall -Wextra -Wl,--stack=536870912 2>>compinfo.txt
echo Compiling right.cpp...
g++ -o source\right.exe source\right.cpp -Ofast -std=c++11 -Wall -Wextra -Wl,--stack=536870912 2>>compinfo.txt
if not exist source\mk_data.exe goto lp3
if not exist source\test.exe goto lp3
if not exist source\right.exe goto lp3
del compinfo.txt >nul 2>nul
copy nul testlog.txt >nul 2>nul
cls
echo Compile successfully!
goto lp2
:lp0
cls
echo Wrong answer on test %t%.
copy testdata.in testdata\testdata%c%.in >nul 2>nul
copy testdata.out testdata\testdata%c%.out >nul 2>nul
copy testdata.ans testdata\testdata%c%.ans >nul 2>nul
echo Wrong answer on test %t%. >> testlog.txt
echo Testata of this is saved as testdata%c%.in/out/ans. >> testlog.txt
set /a c+=1
goto lp2
:lp1
cls
echo Accpet test %t%!
:lp2
set /a t+=1
echo Running on test %t%...
echo Running on mk_data.exe...
source\mk_data.exe >testdata.in
echo Running on test.exe...
source\test.exe <testdata.in >testdata.out
echo Running on right.exe...
source\right.exe <testdata.in >testdata.ans
fc testdata.out testdata.ans 1>nul 2>nul
if not errorlevel 1 goto lp1
goto lp0
:lp3
echo Compile failed, more information in compinfo.txt.
pause
exit