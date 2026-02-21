🚨 HR Attrition Risk Analysis
Workforce Stability & Retention Intelligence using SQL
🧠 Executive Summary

This project delivers a structured HR risk analysis focused on identifying employee attrition patterns, organizational instability, and performance-based retention threats.

Using SQL-based analytical modeling, the analysis highlights:

High-turnover departments

Division-level attrition risk

Early-tenure instability

Performance-driven exit patterns

The objective is to simulate a real-world executive HR risk assessment scenario.

🎯 Business Questions Answered

🔹 What is the overall attrition rate across the organization?
🔹 Which departments carry the highest turnover risk?
🔹 Which divisions exceed the company attrition average?
🔹 Are newly hired employees more likely to leave?
🔹 Are high-performing employees exiting the company?

📊 Key Insights

📌 Software Engineering shows one of the highest attrition rates across departments, indicating concentrated workforce instability.

📌 Production has a large employee base, making even moderate attrition strategically impactful.

📌 Early-tenure employees demonstrate higher attrition risk compared to long-term staff, suggesting onboarding or engagement gaps.

📌 Certain divisions exceed the organizational attrition baseline, requiring targeted retention strategies.

---

## 📊 Department Attrition Rate

![Department Attrition](insights/department_attrition_rate.png)

---

## 🏢 Division Attrition Rate

![Division Attrition](insights/division_attrition_rate.png)

---

## ⏳ Tenure-Based Attrition Risk

![Tenure Attrition](insights/tenure_attrition_analysis.png)

---

📈 Risk Breakdown
🏢 Department-Level Attrition

Identifies departments exceeding company turnover baseline and highlights risk concentration.

🏗 Division-Level Attrition

Highlights structural risk patterns across operational divisions.

⏳ Tenure-Based Stability Risk

Employees segmented into:

Less than 1 year

1–3 years

3+ years

Reveals workforce stability trends across tenure groups.

🛠 Technical Approach

SQL Server

T-SQL Aggregations

CASE-based Risk Segmentation

Percentage-based Attrition Modeling

Structured Risk Ranking

All queries are documented in:

sql/HR_Risk_Analysis.sql

📂 Repository Structure

HR-Attrition-Risk-Analysis/
│
├── sql/
│ └── HR_Risk_Analysis.sql
│
├── insights/
│ ├── department_attrition_rate.png
│ ├── division_attrition_rate.png
│ └── tenure_attrition_analysis.png
│
├── data/
│ └── HR_Data.csv
│
└── README.md

💼 Strategic Value

This project demonstrates the ability to:

✔ Translate business risk into SQL logic
✔ Quantify workforce instability
✔ Identify structural retention threats
✔ Deliver executive-ready insights

👤 Author

Ali Sharaf
SQL | Workforce Analytics | HR Risk Modeling

🚀 Why This Project Matters

Employee attrition directly impacts:

Operational stability

Talent retention

Recruitment costs

Organizational performance

This analysis provides a structured, data-driven foundation for retention strategy and workforce planning.
