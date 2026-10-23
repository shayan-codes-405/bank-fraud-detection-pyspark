@echo off
title PySpark INT315 Cluster Computing - Jupyter Notebook
echo =====================================================================
echo  Starting Isolated PySpark Environment for INT315 CA2
echo  (Java 24 and Python 3.14 remain 100%% untouched globally)
echo =====================================================================
echo.
echo [1/3] Activating isolated JDK 8 session...
set "JAVA_HOME=C:\Program Files\Java\jdk1.8.0_501"
set "PATH=%JAVA_HOME%\bin;%PATH%"

echo [2/3] Activating Spark 3.5.9 and Windows Hadoop Home...
set "SPARK_HOME=C:\Spark"
set "HADOOP_HOME=C:\Spark"
set "PATH=%SPARK_HOME%\bin;%PATH%"

set "PYSPARK_PYTHON=C:\Users\ASUS\AppData\Local\Programs\Python\Python310\python.exe"
set "PYSPARK_DRIVER_PYTHON=C:\Users\ASUS\AppData\Local\Programs\Python\Python310\python.exe"

echo [3/3] Launching Jupyter Notebook with Python 3.10...
echo.
cd /d "%~dp0"
py -3.10 -m notebook
pause
