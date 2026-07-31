# Telecom_Customer-Churn-Analysis.
We work for a telecom provider that wants to understand why customers cancel their subscriptions (churn) and which customer segments are most at risk, to prioritize retention campaigns.
Telecom Customer Churn Analysis
Project Documentation
________________________________________
1. Project Overview
Project Title :
Telecom Customer Churn Analysis
Business Scenario
Customer churn is one of the biggest challenges facing telecom companies because losing customers directly affects revenue and business growth. The objective of this project is to analyze customer churn behavior, identify the factors that contribute to customer attrition, and determine which customer segments are most at risk. The insights generated from this analysis can help the company develop targeted retention strategies and improve customer satisfaction.
2. Project Objectives
The main objectives of this project are:
•	Understand why customers cancel their subscriptions (customer churn). 
•	Identify the customer segments that are most at risk in order to prioritize customer retention campaigns.
3. Dataset Information
Item	Description
Dataset Name	Telecomm Customer Churn
Source	IBM Sample Dataset (Kaggle)
Format	CSV
Number of Records	7,043 Customers
Data Cleaning Tool	Microsoft SQL Server
Data Analysis Tool	Microsoft Excel

4.Dataset Description
The dataset contains customer demographic information, subscription details, billing information, and customer churn status.
The most important attributes include:
•	Customer ID 
•	Gender 
•	Senior Citizen 
•	Partner 
•	Dependents 
•	Tenure 
•	Phone Service 
•	Internet Service 
•	Online Security 
•	Online Backup 
•	Device Protection 
•	Tech Support 
•	Streaming TV 
•	Streaming Movies 
•	Contract 
•	Paperless Billing 
•	Payment Method 
•	Monthly Charges 
•	Total Charges 
•	Churn
5.project Workflow
The project was completed through the following stages:
1.	Understanding the business problem. 
2.	Collecting the customer dataset. 
3.	Importing the dataset into SQL Server. 
4.	Cleaning and validating the data. 
5.	Exporting the cleaned dataset. 
6.	Performing business analysis using Microsoft Excel. 
7.	Creating Pivot Tables and Pivot Charts. 
8.	Building an interactive dashboard. 
9.	Generating business insights and recommendations.
6. Data Cleaning (SQL Server)
Before starting the analysis, the dataset was cleaned and validated using Microsoft SQL Server to ensure the accuracy and reliability of the analysis results.
The following data cleaning steps were performed:
________________________________________
6.1 Creating the Database
A new SQL Server database was created to store and manage the telecom customer dataset.
Purpose
To organize the dataset in a structured environment before performing any cleaning operations.
________________________________________
6.2 Importing the Dataset
The CSV dataset was imported into SQL Server.
Purpose
To make the data available for SQL queries, validation, and cleaning.
________________________________________
6.3 Handling Missing Values
The TotalCharges column contained blank values for customers whose tenure was equal to zero.
These blank values were replaced with 0.
Purpose
To eliminate missing values and prevent calculation errors during analysis.
________________________________________
6.4 Data Type Conversion
The TotalCharges column was originally imported as a text data type.
It was converted into DECIMAL(10,2).
Purpose
To enable numerical calculations such as averages, totals, and comparisons.
________________________________________
6.5 Duplicate Check
The dataset was checked for duplicate Customer IDs.
Purpose
To ensure that every customer appears only once in the dataset.
Result
No duplicate customer records were found.
________________________________________
6.6 Validation of Numeric Values
Numeric columns were checked to identify any invalid negative values.
Purpose
To ensure that all numerical values are logically correct.
Result
No invalid negative values were detected.
________________________________________
6.7 Logical Data Validation
Logical relationships between different columns were verified.
Examples include:
•	Customers with zero tenure should have zero Total Charges. 
•	Internet service information should be consistent with related service columns. 
Purpose
To ensure data consistency before analysis.
________________________________________
6.8 Categorical Data Validation
Categorical columns such as Gender, Contract Type, Internet Service, and Payment Method were reviewed to verify that they contained only valid values.
Purpose
To ensure consistent category names and eliminate invalid records.
________________________________________
Data Cleaning Summary
After completing all cleaning and validation steps, the dataset became ready for analysis. Missing values were handled, data types were corrected, duplicate records were checked, and logical consistency was verified. This ensured that the analysis performed in Excel was based on accurate and reliable data.
Business Question 1
What is the churn rate by contract type, payment method, and internet service type?
Objective
To identify which customer categories have the highest churn rate based on contract type, payment method, and internet service.
Why was this analysis performed?
Understanding churn across these categories helps the company identify high-risk customer groups and focus retention efforts on the customers most likely to leave.
________________________________________
Chart 1: Churn Rate by Contract Type
Chart Type: Clustered Column Chart
Purpose
This chart compares the churn rate across different contract types.
Why was this chart created?
Contract type is one of the strongest indicators of customer loyalty. Comparing churn rates helps determine which contract type has the highest customer loss.
Insight
Customers with Month-to-month contracts have the highest churn rate, while customers with Two-year contracts have the lowest churn rate.
________________________________________
Chart 2: Churn Rate by Payment Method
Chart Type: Clustered Bar Chart
Purpose
This chart compares customer churn across different payment methods.
Why was this chart created?
Different payment methods may reflect different customer payment behaviors. Identifying the payment method with the highest churn helps the company improve payment options and customer experience.
Insight
Customers who use Electronic Check have the highest churn rate.
________________________________________
Chart 3: Churn Rate by Internet Service
Chart Type: Clustered Column Chart
Purpose
This chart compares churn rates among different internet service types.
Why was this chart created?
Internet service quality may influence customer satisfaction. This chart helps determine which internet service is associated with the highest churn.
Insight
Customers using Fiber Optic experience the highest churn rate compared to DSL and customers without internet service.
Business Question 2
How do average tenure and monthly charges differ between churned and retained customers?
Objective
To compare customer lifetime and monthly spending between customers who stayed and those who churned.
Why was this analysis performed?
Comparing these two groups helps understand whether customer loyalty and monthly charges influence churn.
________________________________________
Chart 4: Average Tenure by Customer Status
Chart Type: Pie Chart
Purpose
To compare the average tenure between churned and retained customers.
Why was this chart created?
Customer tenure reflects how long customers remain with the company. Comparing the average tenure helps determine whether customers tend to churn early or after staying for a long period.
Insight
Retained customers have a significantly higher average tenure than churned customers.
________________________________________
Chart 5: Average Monthly Charges by Customer Status
Chart Type: Clustered Column Chart
Purpose
To compare the average monthly charges paid by churned and retained customers.
Why was this chart created?
Higher monthly charges may influence customer satisfaction and increase the likelihood of churn.
Insight
Customers who churn generally pay higher monthly charges than retained customers.
Business Question 3
Which customers combine month-to-month contracts with high monthly charges?
Objective
To identify customers who have both flexible contracts and high monthly charges.
Why was this analysis performed?
Customers with month-to-month contracts and expensive monthly bills are more likely to switch to competitors. Identifying this group allows the company to target them with retention offers.
________________________________________
Chart 6: Month-to-Month Customers by Monthly Charge Group
Chart Type: Clustered Column Chart
Purpose
To classify month-to-month customers according to their monthly charge levels.
Why was this chart created?
Grouping customers by monthly charges makes it easier to identify the most expensive customer segments that may have a higher risk of churn.
Insight
Customers with higher monthly charges are more likely to churn when they have month-to-month contract
Business Question 4
Which subscribed services are most associated with churn?
Objective
To determine whether additional telecom services influence customer churn.
Why was this analysis performed?
Additional services may improve customer satisfaction and increase retention. This analysis identifies which services have the strongest relationship with customer churn.
________________________________________
Chart 7: Customer Churn by Streaming TV
Chart Type: Stacked Column Chart
Purpose
To compare customer churn based on Streaming TV subscriptions.
Why was this chart created?
Streaming TV may improve customer engagement with the company's services. Comparing churn helps determine whether this service contributes to customer retention.
Insight
Customers without Streaming TV subscriptions have a higher churn rate than customers who subscribe to the service.
________________________________________
Chart 8: Customer Churn by Tech Support
Chart Type: Stacked Column Chart
Purpose
To compare customer churn based on Tech Support subscriptions.
Why was this chart created?
Technical support improves customer experience and may reduce customer dissatisfaction.
Insight
Customers without Tech Support have a significantly higher churn rate than customers who subscribe to Tech Support.
Chart 9: Customer Churn by Online Security
Chart Type: Stacked Column Chart
Purpose
To analyze the relationship between Online Security subscriptions and customer churn.
Why was this chart created?
Online Security is an additional service that may increase customer satisfaction and loyalty. This chart helps determine whether customers who subscribe to Online Security are less likely to churn than those who do not.
Insight
Customers without Online Security have a significantly higher churn rate than customers who subscribe to the service. This indicates that Online Security may contribute to improving customer retention.
________________________________________
Chart 10: Number of Customers by Churn Status
Chart Type: Clustered Column Chart
Purpose
To show the overall distribution of churned and retained customers.
Why was this chart created?
Before analyzing the factors affecting churn, it is important to understand the overall distribution of customers. This chart provides a clear overview of the proportion of customers who stayed with the company versus those who left.
Insight
The majority of customers remain with the company, while approximately 26.5% of customers have churned. This confirms that although most customers are retained, customer churn remains a significant business issue that requires further analysis.
8. Diagnostic Analytics
Diagnostic analytics was performed to investigate customer churn patterns in greater depth by combining multiple variables. This helps identify the highest-risk customer segments rather than analyzing each variable separately.
________________________________________
Diagnostic Analysis 1
Bucket customers into tenure groups (e.g., 0–12, 13–24, 25–48, 48+ months) and compute churn rate per bucket
Objective
To determine how customer churn varies across different tenure groups.
Why was this analysis performed?
Customer tenure is one of the strongest indicators of customer loyalty. By grouping customers based on how long they have been with the company, it becomes easier to identify the stage at which customers are most likely to cancel their subscriptions.
________________________________________
Chart 11: Churn Rate by Tenure Group
Chart Type: Horizontal Stacked Bar Chart
Purpose
To compare the percentage of churned and retained customers across different tenure groups.
Why was this chart created?
This visualization helps determine whether customers are more likely to churn during the early stages of their relationship with the company or after remaining customers for a longer period.
Insight
Customers in the 0–12 months tenure group have the highest churn rate (48.28%). The churn rate gradually decreases as customer tenure increases, while customers with 48+ months have the lowest churn rate (9.51%). This indicates that long-term customers are much more likely to remain with the company.
________________________________________
Diagnostic Analysis 2
Cross-tabulate contract type against churn, and payment method against churn
Objective
To analyze the relationship between contract type and customer churn.
Why was this analysis performed?
Different contract types require different levels of customer commitment. This analysis helps identify which contract type is associated with the highest customer retention and which one has the greatest risk of churn.
________________________________________
Chart 12: Contract Type Against Churn
Chart Type: Stacked Column Chart
Purpose
To compare the percentage of churned and retained customers for each contract type.
Why was this chart created?
Comparing contract types allows the company to understand how contract duration affects customer loyalty and identify which customers require additional retention efforts.
Insight
Customers with Month-to-month contracts have the highest churn rate (42.71%), while customers with Two-year contracts have the lowest churn rate (2.83%). This indicates that customers with long-term contracts are significantly more loyal.
________________________________________
Diagnostic Analysis 3
Find the churn rate for combinations of two categorical features (e.g., contract type × payment method) to identify the highest-risk segments
Objective
To identify the highest-risk customer segments based on the combination of contract type and payment method.
Why was this analysis performed?
Analyzing contract type and payment method separately provides useful information. However, combining both variables reveals which specific customer segments are at the greatest risk of churn, enabling more targeted retention strategies.
________________________________________
Chart 13: Churn Rate by Contract Type and Payment Method
Chart Type: Horizontal Bar Chart
Purpose
To compare churn rates across different combinations of contract types and payment methods.
Why was this chart created?
This chart helps identify the customer segments with the highest probability of churn by combining two important customer characteristics instead of analyzing each one independently.
Insight
Customers with Month-to-month contracts who pay using Electronic Check have the highest churn rate among all customer segments. In contrast, customers with Two-year contracts consistently have very low churn rates regardless of the payment method used.
Diagnostic Analysis 4
Compare Average Monthly Charges Between Churned and Retained Customers
Objective
To compare the average monthly charges paid by churned and retained customers.
Why was this analysis performed?
Monthly charges can influence customer satisfaction and may affect the customer's decision to remain with the company or cancel the subscription. Comparing the average monthly charges between the two groups helps determine whether pricing is associated with customer churn.
________________________________________
Chart 6: Average Monthly Charges by Customer Status
Chart Type: Pie Chart
Purpose
To compare the average monthly charges between churned and retained customers.
Why was this chart created?
This chart helps determine whether customers who churn pay different monthly charges compared to customers who remain with the company. Understanding this relationship helps identify whether higher monthly costs contribute to customer churn.
Insight
The analysis shows that churned customers pay a higher average monthly charge (74.44) compared to retained customers (61.27). This suggests that customers with higher monthly charges are more likely to cancel their subscriptions, indicating that pricing may be an important factor influencing customer churn.
9. Key Findings
Based on the business and diagnostic analyses, several important findings were identified:
•	Customers with Month-to-month contracts have the highest churn rate, while Two-year contracts have the lowest churn rate. 
•	Customers who use Electronic Check are more likely to churn than customers using other payment methods. 
•	Fiber Optic customers experience a higher churn rate compared to DSL customers. 
•	Customers with short tenure (0–12 months) are the most likely to cancel their subscriptions. 
•	Customers with higher monthly charges tend to churn more frequently than customers with lower monthly charges. 
•	Customers without additional services such as Online Security, Tech Support, and Streaming TV have higher churn rates than customers who subscribe to these services. 
•	The highest-risk customer segment consists of customers with Month-to-month contracts, Electronic Check payment methods, and short tenure. 
•	10. Business Recommendations
•	Based on the analysis results, the following recommendations are proposed to help reduce customer churn:
•	Encourage customers with Month-to-month contracts to switch to One-year or Two-year contracts by offering discounts or loyalty rewards. 
•	Focus retention campaigns on new customers (0–12 months), as they represent the highest-risk group. 
•	Improve the quality of Fiber Optic services and customer support to increase customer satisfaction. 
•	Promote additional services such as Online Security, Tech Support, and Streaming TV, as customers who subscribe to these services are generally less likely to churn. 
•	Encourage customers using Electronic Check to switch to automatic payment methods by offering incentives or simplified payment options. 
•	Review pricing strategies for customers with high monthly charges and consider personalized offers to improve retention. 
10. Conclusion
•	This project analyzed customer churn using Microsoft SQL Server for data cleaning and Microsoft Excel for data analysis and visualization.
•	The dataset was first cleaned and validated in SQL Server to ensure data quality. Afterward, the cleaned dataset was imported into Microsoft Excel, where Pivot Tables, Pivot Charts, and dashboards were created to answer the business questions and perform diagnostic analysis.
•	The analysis showed that customer churn is strongly influenced by contract type, payment method, tenure, monthly charges, and subscribed services. Customers with Month-to-month contracts, Electronic Check payment methods, high monthly charges, and short tenure were identified as the highest-risk customer segments.
•	The insights and recommendations presented in this project can help telecom companies develop more effective retention strategies, improve customer satisfaction, and reduce customer churn through data-driven decision-making.






