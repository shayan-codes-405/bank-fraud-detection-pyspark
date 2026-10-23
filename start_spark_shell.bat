@echo off
title Apache Spark Scala Shell (Isolated JDK 8)
echo =====================================================================
echo  Starting Apache Spark Scala Shell with JDK 8
echo  (Java 24 remains 100%% untouched globally)
echo =====================================================================
echo.
echo [1/2] Activating isolated JDK 8 session...
set "JAVA_HOME=C:\Program Files\Java\jdk1.8.0_501"
set "PATH=%JAVA_HOME%\bin;%PATH%"

echo [2/2] Activating Spark 3.5.9...
set "SPARK_HOME=C:\Spark"
set "HADOOP_HOME=C:\Spark"
set "PATH=%SPARK_HOME%\bin;%PATH%"

cd /d "%~dp0"
echo Launching spark-shell...
spark-shell
pause
