HR Analytics: Employee Performance & Retention
📌 Project Overview

This project analyzes HR data to gain insights into employee performance, attrition, and salary trends. Using SQL, Python, and Power BI, we explore key HR metrics such as attrition rates, salary trends, and employee experience to help businesses improve employee retention and performance.
🛠️ Tech Stack

    SQL, PostgresSQL Server – Data extraction and querying
    Python (Pandas, NumPy, Seaborn, Matplotlib) – Data preprocessing and analysis
    Power BI – Dashboard creation and visualization

📂 Dataset

The dataset includes HR-related attributes such as employee satisfaction, salaries, job roles, promotions, attrition status, work experience, and performance ratings.
🏗️ Data Preprocessing

    Dropped unnecessary columns: EmployeeCount, StandardHours, Over18
    Handled missing values: Filled missing values in YearsWithCurrManager using the median
    Removed duplicates
    Converted categorical columns to appropriate data types
    Outlier Removal: Age, MonthlyIncome, TotalWorkingYears, and YearsAtCompany

🔍 Key SQL Queries for Insights

1️⃣ Employee Attrition Rate – Identifies overall attrition and department-wise trends
2️⃣ Department-wise Attrition Rate – Compares attrition across different departments
3️⃣ Average Salary by Job Role – Analyzes salary trends across job roles
4️⃣ Employee Experience vs. Attrition – Examines the relationship between experience and attrition
📊 Power BI Dashboard

The Power BI dashboard visualizes:
✅ Department-wise employee performance
✅ Attrition trends and salary distribution
✅ Key HR insights for decision-making
🚀 How to Use

    Clone this repository

    git clone https://github.com/rominamohammadi/HR-analytics.git

    Load the dataset into SQL Server
    Run the SQL queries for insights
    Use the Python scripts for data preprocessing
    Open the Power BI dashboard to visualize insights

📈 Results & Business Impact

    Identified departments with high attrition rates
    Provided salary benchmarks for better employee retention
    Helped HR teams make data-driven decisions

🤝 Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.
