@echo off
title Environment Verification Test
echo =====================================================================
echo  Testing Isolated Spark + Java 8 + Python 3.10 Environment
echo =====================================================================
echo.
set "JAVA_HOME=C:\Program Files\Java\jdk1.8.0_501"
set "PATH=%JAVA_HOME%\bin;%PATH%"
set "SPARK_HOME=C:\Spark"
set "HADOOP_HOME=C:\Spark"
set "PATH=%SPARK_HOME%\bin;%PATH%"

cd /d "%~dp0"
py -3.10 test_env.py
echo.
pause
