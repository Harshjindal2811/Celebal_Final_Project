# Celebal_Final_Project # 


# 🌐 Azure Data Factory Project: Intelligent Data Orchestration

This project demonstrates a robust data integration pipeline using **Azure Data Factory**, **REST API**, **SQL Server**, and **Azure Data Lake Storage Gen2 (ADLS)**. The solution is enhanced with smart features like **conditional logic**, **Logic App integration**, and **SQL-based logging**, designed for **real-world automation scenarios**.

---

## 🚀 Features Overview

### ✅ Task 1: REST API to ADLS

* Fetches country data for **India, US, UK, China, and Russia** using the REST API: `https://restcountries.com/v3.1/name/{country}`
* Stores each country's response in **individual JSON files** in Azure Data Lake Gen2

### ✅ Task 2: Scheduled Pipeline Trigger

* Automatically triggers **twice daily at 12:00 AM and 12:00 PM IST**
* Uses time-based **recurring trigger** to ensure consistent data fetching

### ✅ Task 3: Conditional Data Copy (Parent-Child Pipeline)

* Copies `customer` table from SQL Server to ADLS **only if record count > 500**
* If copied and count > 600, triggers a **child pipeline** to copy `product` data as well
* Passes **record count as parameter** between parent and child pipelines

### ✅ Task 4: Parameter Passing to Child Pipeline

* The **customer count** from the parent pipeline is passed as a **parameter** to the child product pipeline
* Enables **dynamic and conditional branching** based on upstream logic
* Provides **flexible orchestration** and **inter-pipeline communication**

---

## 🎯 🎁 Two Bonus Features (Cherry on the Cake!)

### 📨 1. **Email Notification System (Logic App Integration)**

> 📬 Automatically sends an email alert when:
>
> * Customer count is **less than or equal to 500**
> * Or pipeline **fails** unexpectedly

* Uses **Logic App** with HTTP trigger
* Connected via **Web activity** in ADF
* Fully parameterized for dynamic recipient, subject, and body
* Helps in real-time monitoring and alerting for data quality issues

### 📝 2. **Intelligent SQL Logging**

> 🧾 Every successful pipeline run logs:
>
> * Pipeline name
> * Timestamp
> * Status
> * Record count

* Uses **Stored Procedure** activity to log into SQL Server
* Adds **auditability**, **traceability**, and **operational visibility**
* Especially valuable for enterprise-grade solutions

---

## 🧱 Technologies Used

* Azure Data Factory
* Azure Data Lake Storage Gen2
* SQL Server (via SSMS)
* Azure Logic Apps
* REST API (RestCountries)
* GitHub for versioning

---

## 🧪 How to Run

1. Import linked services, datasets, and pipelines into Azure Data Factory
2. Deploy `SendEmailLogicApp` using Azure Portal
3. Create required SQL tables and stored procedures in SSMS
4. Test and monitor via ADF Monitor tab

---

## 🏆 Why This Project Stands Out

✔️ Production-ready conditional pipelines
✔️ Enterprise-grade logging to SQL
✔️ Real-time email alerting via Logic App 📬
✔️ Modular, parameterized design for reusability
✔️ Twice-daily scheduled automation
✔️ Recruiter-friendly GitHub-ready documentation ✨

---

## 📬 Contact

For any queries, collaboration, or demo, reach out at: **[harshjindal2811@gmail.com](mailto:harshjindal2811@gmail.com)**

> “Turn your data into action — intelligently.”
