

# 🛠️ Data Cleaning in SQL – Layoff Dataset  

## 📌 Project Overview  
This project focuses on cleaning raw layoff data using SQL to ensure accuracy, consistency, and reliability for analysis. The dataset contains records of layoffs across different companies, industries, and time periods. Through this project, various data quality issues such as duplicate records, inconsistent names, and unnecessary spaces were addressed.  

## 🗂️ Dataset Used  
- **layoffs.csv** – Contains information about layoffs, including company names, industries, locations, and timestamps.  

## 🛠️ SQL Techniques Used  
- **Removing Duplicates:** Used `ROW_NUMBER()` with `PARTITION BY` to detect and delete duplicate records.  
- **Standardizing Industry Names:** Used `LIKE` and `UPDATE` statements to merge variations of industry names (e.g., "Crypto" vs. "Crypto Startup").  
- **Trimming Unnecessary Spaces:** Applied `TRIM()` to remove extra spaces from company names.  
- **Sorting & Filtering:** Used `ORDER BY` and `DISTINCT` to organize and clean categorical values.  

## 🔍 Key Insights After Cleaning  
✔️ **Removed Duplicate Entries:** Ensured accurate data by eliminating redundant records.  
✔️ **Standardized Industry Names:** Improved consistency in industry categorization.  
✔️ **Cleaned Company Names:** Ensured uniformity by removing unnecessary spaces.  
✔️ **Structured Dataset for Analysis:** Prepared data for reliable trend analysis and visualization.  

## 🚀 How to Use  
1. Clone the repository:  
   ```bash
   git clone https://github.com/yourusername/sql-data-cleaning.git
   ```  
2. Import the dataset into your SQL database.  
3. Run the queries from `data_cleaning.sql` to clean and prepare the data.  

## 🎯 Business Value  
- Ensures data integrity for accurate layoff trend analysis.  
- Helps businesses and analysts make informed decisions based on reliable data.  
- Reduces errors in reporting and enhances visualization quality.  
