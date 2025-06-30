# Employee-Attrition-Analysis


**Problem Statement**
XYZ Company, a growing organization, faced a persistent 15% employee attrition rate over the past few years, significantly affecting its performance, stability, and hiring costs. To uncover the underlying reasons and help the HR team implement better retention strategies, an end-to-end data analysis and visualization project was undertaken.

**Objective**
To analyze employee attrition trends, identify key factors contributing to high turnover, and present actionable insights through a Power BI dashboard—validated with SQL—to support strategic HR decisions.

Tools & Technologies
Python (Pandas, Seaborn) – For data cleaning, EDA, and preprocessing

Power BI – For developing interactive dashboards and visual storytelling

PowerQuery – For transforming categorical columns and building clean data models

SQL – For validating trends and metrics observed in the dashboard

**Data Cleaning & Preparation**
Removed redundant columns such as EmployeeID, EmployeeCount, and Over18

Handled missing values in key fields like NumCompaniesWorked and EnvironmentSatisfaction using forward fill to maintain data integrity

Addressed outliers in tenure-related fields (e.g., TotalWorkingYears, YearsAtCompany)

Used PowerQuery to relabel categorical variables like job satisfaction, performance rating, and work-life balance for clearer interpretation

**Key Insights from Power BI Dashboard**
Gender Disparity: Top-performing women were leaving at higher rates (21%) than men (16%) after receiving >20% hikes, indicating possible promotion bias

Performance Rating Issues: Ratings were overly skewed (mostly “Excellent” or “Outstanding”), suggesting a broken appraisal process

Attrition by Age & Tenure: Young employees (especially at age 19) showed up to 67% attrition, while rates peaked again after 23 years—likely due to retirement or senior job transitions

High HR Attrition: HR professionals showed nearly 30–40% attrition, not due to dissatisfaction but possibly due to high demand in the industry

Salary and Marital Status Trends: Single employees left more often (25% attrition); those who left had lower average salaries despite similar raises (~15%)

**SQL-Based Validation**
SQL queries were used to independently verify key patterns seen in the dashboard, such as:

Salary differences between stayers and leavers

Attrition rates across gender, departments, and education backgrounds

Rating distributions across demographic variables

This ensured that dashboard insights were grounded in accurate, query-based evidence.

**Outcome**
The project enabled HR stakeholders to identify flawed appraisal practices, potential gender bias, and demand-driven attrition, resulting in a roadmap for targeted retention strategies and policy reforms.
