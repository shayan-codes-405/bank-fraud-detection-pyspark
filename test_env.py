import os
import sys
import pandas as pd
import matplotlib
import seaborn as sns
from pyspark.sql import SparkSession

print(f"[OK] Python Version       : {sys.version.split()[0]}")
print(f"[OK] Java Home            : {os.environ.get('JAVA_HOME')}")
print(f"[OK] Pandas Version       : {pd.__version__}")
print(f"[OK] Matplotlib Version   : {matplotlib.__version__}")
print(f"[OK] Seaborn Version      : {sns.__version__}")

spark = SparkSession.builder.master("local[*]").appName("EnvTest").getOrCreate()
print(f"[OK] Spark Version        : {spark.version}")
print(f"[OK] Spark App Name       : {spark.sparkContext.appName}")
spark.stop()
print("\n>>> ALL CHECKS PASSED! The environment is 100% ready for INT315 CA2.")
