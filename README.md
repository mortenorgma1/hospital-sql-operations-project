# 🏥 Hospital Operations & Performance Analysis (SQL)

## 📌 Project Overview
This project analyzes **hospital operational efficiency and costs** using PostgreSQL.  
The focus is on understanding **doctor workload**, **department performance**, **length of stay**, and **treatment costs** through structured SQL analysis.

The project is designed to demonstrate **real-world SQL skills**, including multi-table joins, aggregations at the correct grain, window functions, and KPI-style reporting.

All data used in this project is **synthetic** and generated for learning and demonstration purposes.

---

## 🧰 Tech Stack
- **Database:** PostgreSQL  
- **SQL Concepts:**  
  - JOINs  
  - CTEs  
  - Window functions (`RANK`, `AVG`)  
  - Date arithmetic  
  - Aggregations & KPIs  
- **Version Control:** Git & GitHub  

---

## 🗂 Database Schema
The database consists of five normalized tables:

- **patients** — patient demographic data  
- **departments** — hospital departments  
- **doctors** — doctors assigned to departments  
- **admissions** — hospital admissions (fact table)  
- **treatments** — treatments performed per admission  

### Relationships
- A department has many doctors  
- A doctor handles many admissions  
- An admission can include multiple treatments  

Foreign keys are used to enforce **referential integrity**.

---

## 📊 Key Analyses

### Doctor & Department Performance
- Doctor workload ranking by number of admissions
- Average length of stay by doctor
- Department efficiency based on average length of stay

### Treatment & Cost Analysis
- Most common treatments performed
- Average and total cost per treatment
- Identification of high-cost admissions
- Average cost per admission (financial KPI)

### Executive KPI Summary
- Total number of admissions
- Average length of stay
- Average cost per admission

---

## 🧠 SQL-First Approach
All analytical logic is written in SQL and stored in the `/sql` directory.

Key principles followed:
- Aggregation at the **correct data grain**
- Multi-step analysis using **CTEs**
- Clear separation between **data preparation** and **final metrics**
- Business-oriented queries rather than purely technical examples

---

## 📂 Repository Structure

hospital-operations-sql/
├── README.md
├── schema.sql
├── insert_data.sql
├── sql/
│ ├── 01_doctor_workload.sql
│ ├── 02_avg_length_of_stay_by_doctor.sql
│ ├── 03_department_efficiency.sql
│ ├── 04_most_common_treatments.sql
│ ├── 05_treatment_cost_analysis.sql
│ ├── 06_most_expensive_admissions.sql
│ ├── 07_avg_cost_per_admission.sql
│ └── 08_kpi_summary.sql
└── visuals/
└── dashboard_preview.png


---

## 🚀 Key Takeaways
- Demonstrates practical SQL skills applied to operational analytics
- Shows understanding of data modeling and relational design
- Focuses on meaningful business questions, not just query syntax
- Emphasizes clarity, correctness, and professional structure

---

## ▶️ How to Run
1. Create a PostgreSQL database  
2. Execute `schema.sql`  
3. Run `insert_data.sql` to generate data  
4. Execute queries in the `/sql` folder in numerical order  

---

## 📬 Notes
This project uses **synthetic data** and does not contain any real patient information.

---

### 🧠 Interview One-Liner
> “This project analyzes hospital operations using PostgreSQL, focusing on efficiency, cost, and workload through SQL-first analytics.”

