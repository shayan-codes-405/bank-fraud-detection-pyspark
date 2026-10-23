@echo off
title INT315 PySpark Project Launcher
echo =====================================================================
echo  Starting INT315 PySpark Project (Isolated Java 8 + Python 3.10)
echo =====================================================================
echo.
set "JAVA_HOME=C:\Program Files\Java\jdk1.8.0_501"
set "PATH=%JAVA_HOME%\bin;%PATH%"

set "SPARK_HOME=C:\Spark"
set "HADOOP_HOME=C:\Spark"
set "PATH=%SPARK_HOME%\bin;%PATH%"

set "PYSPARK_PYTHON=C:\Users\ASUS\AppData\Local\Programs\Python\Python310\python.exe"
set "PYSPARK_DRIVER_PYTHON=C:\Users\ASUS\AppData\Local\Programs\Python\Python310\python.exe"

cd /d "%~dp0"
echo Opening INT315_Project_CA2.ipynb...
py -3.10 -m notebook INT315_Project_CA2.ipynb
pause
