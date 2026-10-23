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
├── INT315_Project_CA2.ipynb               # Fully executed Jupyter Notebook with all models & plots
├── start_project.bat                      # 1-Click launcher to open notebook with PySpark & JDK 8
├── .gitignore                             # Git ignore rules for checkpoints/logs/metastore
└── README.md                              # Complete academic project documentation
```

---

## 🚀 How to Run the Project

### One-Click Execution (Recommended)
Double-click **`start_project.bat`**.  
It will automatically activate the isolated environment (Java 8 + Python 3.10) and open **`INT315_Project_CA2.ipynb`** directly in your browser.
