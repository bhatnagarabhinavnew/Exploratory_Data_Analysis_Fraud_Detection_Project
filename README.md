# Fraud Detection Analysis Project

This repository contains an end-to-end Fraud Detection Analysis workflow covering **Excel**, **SQL**, **Python (EDA)**, and **Tableau**. It demonstrates real-world fraud analytics techniques used in financial institutions to identify anomalous credit card transactions.

---

## 📌 Project Overview
SecureGuard Financial Solutions aims to provide real-time analytics to prevent unauthorized or suspicious credit card transactions. This project showcases a complete analytical process—from raw data exploration to business recommendations.

---

## 📂 Project Components

### **1. Excel Analysis**
- Statistical summary for `amt` and `city_pop`
- Histogram of transaction amounts
- Fraud counts by gender & category
- Top 3 states by transaction volume
- Correlation between city population and transaction amount

---

### **2. SQL Analysis**
- Loading CSVs into schema `finance`
- Exploratory queries:
  - Total transactions
  - Top merchants
  - Avg. amount per category
  - Fraud counts & percentages
  - Coordinates via table join
  - Earliest & latest transaction date
- Aggregations:
  - Total amount spent
  - Transactions per category
  - Avg. amount by gender
  - Day of week analysis

---

### **3. Python EDA**
Performed using Pandas, Matplotlib, and Seaborn.

Key insights:
- Dataset size: 389,002 rows × 23 columns
- Highly imbalanced target variable (<1% fraud)
- Right-skewed `amt` and `city_pop`
- Moderate correlation between `amt` and fraud (0.22)
- Fraud occurs more in:
  - shopping_net  
  - misc_net  
  - grocery_pos  
  - shopping_pos

Detailed EDA includes:
- Outlier detection
- Time-series trends
- Grouped analysis (category, gender, fraud status)
- Data validation checks

---

### **4. Tableau Visualization**
Dashboards include:
- Boxplot of spend by gender & category  
- Geographic fraud map  
- Monthly transaction trends  
- Inflation-adjusted analysis  
- Interactive final dashboard  

---

## 🧠 Business Recommendations
- Prioritize high-risk categories  
- Threshold-based fraud alerts  
- Adopt non-linear ML models (XGBoost, RF)  
- Enhance authentication for online spending  
- Build behavior-based segmentation  
- Implement seasonal rules (holiday spike)  

---

## 🤝 Contributions
Open to improvements, additional ML models, automation scripts, and dashboard enhancements.

---

## 📬 Contact
**Abhinav Bhatnagar**  
For queries or collaboration, feel free to reach out.
