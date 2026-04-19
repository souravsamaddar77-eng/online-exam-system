@echo off
setlocal

if exist out rmdir /s /q out
mkdir out

javac -d out -sourcepath src src\com\onlineexam\Main.java
if errorlevel 1 exit /b 1

java -cp out com.onlineexam.Main
