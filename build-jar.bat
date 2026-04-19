@echo off
setlocal

if exist out rmdir /s /q out
if exist dist rmdir /s /q dist

mkdir out
mkdir dist

javac -d out -sourcepath src src\com\onlineexam\Main.java
if errorlevel 1 exit /b 1

set "JAR_EXE="
for /f "delims=" %%i in ('where /r "%ProgramFiles%\Java" jar.exe 2^>nul') do set "JAR_EXE=%%i"

if not defined JAR_EXE (
    echo Could not find jar.exe in the installed JDK.
    exit /b 1
)

"%JAR_EXE%" --create --file dist\OnlineExamSystem.jar --main-class com.onlineexam.Main -C out .
if errorlevel 1 exit /b 1

echo.
echo JAR created successfully:
echo dist\OnlineExamSystem.jar
