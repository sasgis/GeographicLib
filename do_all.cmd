set PATH=c:\dev\mingw-w64\mingw32\bin\

gcc -v
mingw32-make -v

call build

cd geodtest

call build

cd ..\bin\Release
geodtest.exe

cd ..\Debug
geodtest.exe

pause

