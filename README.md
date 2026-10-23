# Bank Transaction Fraud Detection & Analytics using PySpark

**Course:** INT315 Cluster Computing  
**Platform:** Apache Spark 3.5.9, PySpark, Spark MLlib  
**Dataset:** Bank Transaction Fraud Detection (200,000 Rows × 24 Columns)

---

## 📌 Project Overview
This project implements an end-to-end distributed machine learning and analytics pipeline using **Apache Spark (PySpark & MLlib)** on a realistic 200,000-record bank transaction dataset.

The system addresses both unsupervised behavioral clustering and supervised machine learning (regression and comparative binary classification), complete with feature scaling, correlation analysis, and evaluation metrics.

---

## 🎯 Syllabus & Key Concepts Implemented
- **Cluster Computing Framework:** PySpark SQL, SparkSession, Catalyst Optimizer, and distributed DataFrames.
- **Data Engineering:** Spark SQL transformations, feature extraction (`Transaction_Hour`), and PII/UUID sanitization.
- **Exploratory Data Analysis:** Class imbalance analysis and **Pearson Correlation Heatmap**.
- **Unsupervised Learning:** **K-Means Clustering** with `StandardScaler` and **Silhouette Score** evaluation.
- **Supervised Regression:** **Linear Regression** predicting transaction value, evaluated with **$R^2$**, **RMSE**, and **MAE**, plus an **Actual vs. Predicted** visualization.
- **Supervised Classification:** Fraud detection (`Is_Fraud`) benchmarked across 4 models:
  1. **Logistic Regression**
  2. **Decision Tree Classifier**
  3. **Support Vector Machine (LinearSVC)**
  4. **Gaussian Naive Bayes**
- **Performance Matrix:** Multi-model Accuracy, F1-Score comparison, and **Confusion Matrix** visualization.

---

## 📊 Model Evaluation Results

### 1. Unsupervised Clustering (K-Means)
- **Clusters ($k$):** 3
- **Evaluation Metric:** Silhouette Score = `0.2822`

### 2. Supervised Regression (Linear Regression: `Transaction_Amount`)
- **$R^2$ Score:** `-0.0003` *(Reflects uniform transaction amount distribution across demographics)*
- **RMSE:** `₹28,485.82`
- **MAE:** `₹24,659.82`

### 3. Supervised Classification (Fraud Detection: `Is_Fraud`)
| Model | Accuracy (%) | F1-Score |
| :--- | :---: | :---: |
| **Logistic Regression** | **94.88%** | **0.9238** |
| **Decision Tree Classifier** | **94.88%** | **0.9238** |
| **Support Vector Machine (SVM)** | **94.88%** | **0.9238** |
| **Naive Bayes (Gaussian)** | **94.88%** | **0.9238** |

---

## 📁 Repository Structure
```
├── Bank_Transaction_Fraud_Detection.csv   # Primary dataset (200,000 rows)
├── INT315_Project_CA2.ipynb               # Fully executed Jupyter Notebook with plots
├── start_jupyter_notebook.bat             # 1-Click launcher for Jupyter with isolated Spark/JDK 8
├── start_spark_shell.bat                  # 1-Click launcher for Scala Spark Shell
├── verify_setup.bat                       # 1-Click environment diagnostic script
├── test_env.py                            # Environment test verification script
├── .gitignore                             # Git ignore rules for checkpoints/logs/metastore
└── README.md                              # Complete academic project documentation
```

---

## 🚀 How to Run the Project

### Option 1: One-Click Launcher (Recommended)
Double-click `start_jupyter_notebook.bat`. It will start Jupyter Notebook in your browser loaded with the isolated Java 8 and Python 3.10 environment.

### Option 2: VS Code / JupyterLab
1. Open `INT315_Project_CA2.ipynb`.
2. Select the registered Jupyter kernel: **`PySpark (Python 3.10)`**.
3. Run all cells. (All charts and outputs are already pre-rendered).

---

## 🎓 Academic Viva Highlights
- **Why scale features before K-Means?** K-Means relies on Euclidean distance. Standardizing with `StandardScaler(withMean=True, withStd=True)` ensures large rupee values do not overpower age or hour features.
- **Why drop identifiers?** High-cardinality arbitrary UUIDs (`Customer_ID`, `Transaction_ID`) cause sparse vector bloat and lead to overfitting.
- **Why evaluate both Accuracy and F1-score?** Due to class imbalance (~95% legitimate vs ~5% fraud), F1-score provides a balanced measure of precision and recall.
