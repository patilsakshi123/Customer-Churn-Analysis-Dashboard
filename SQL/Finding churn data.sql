Use Customer_churn
Go

---Calculate Total Customer split by Gender
SELECT Gender, 
    COUNT(*) AS Gender_count,
    COUNT(Gender) * 100 / (SELECT COUNT(Gender) FROM customer_data) AS Percentage
FROM customer_data
GROUP BY Gender;
GO

---Calculate Total Churned and Churn Rate by Gender 
SELECT gender, COUNT(*) AS Churned_Count,
COUNT(Gender) * 100 / (SELECT COUNT(Gender) FROM customer_data Where Customer_Status ='Churned') AS Churn_Rate
FROM customer_data
WHERE Customer_Status = 'churned'
GROUP BY Gender;
GO

---Calculate Churn Rate by Contract
SELECT Contract, 
Count(*) as Totalcount,
Count(Contract) * 100/ (Select Count(*) from customer_data) as Percentage,
CAST (ROUND(COUNT (CASE WHEN Customer_Status = 'Churned' then 1 end) *100.0 /COUNT(Customer_ID),2)AS float) AS Churned_Rate 
FROM customer_data
Group by Contract;
GO

---Calculate Percentage of Churned, Joined and Stayed Customer
Select Customer_Status, 
Count(Customer_Status) as Totalcount,
ROUND(Sum(Total_Revenue),2) as TotalRev,
ROUND(Sum(Total_Revenue) *100.0 /(Select Sum(Total_Revenue) from customer_data),2) as Percentage
From customer_data
Group by Customer_Status
GO

---Calculate Total Customer , Total Revenue of State
Select State, 
Count(State) as TotalCustomer,
ROUND(Sum(Total_revenue),2) as TotalRevStatewise,
ROUND(Sum(Total_revenue)*100/ (Select sum(Total_revenue) from customer_data),2) as Percentage
From customer_data
Group by State
Order by Percentage desc
GO

---Calculate Churn Rate by State
Select State, 
Count(State) as TotalCustomer,
CAST (ROUND(COUNT (CASE WHEN Customer_Status = 'Churned' then 1 end) *100.0 /COUNT(Customer_ID),2)AS float) AS Churned_Rate
From customer_data
Group by State
Order by Churned_Rate desc
GO

--Calculate Churn Rate by Payment Method
SELECT 
Payment_Method,
COUNT (CASE WHEN Customer_Status ='Churned' then 1 end) as Churned_Count,
CAST (ROUND(COUNT (CASE WHEN Customer_Status = 'Churned' then 1 end) *100.0 /COUNT(Customer_ID),2)AS float) AS Churned_Rate
From customer_data
GROUP BY Payment_Method;
GO


--Calculate Churn Rate by Contract
SELECT 
Contract,
COUNT (CASE WHEN Customer_Status ='Churned' then 1 end) as Churned_Count,
CAST (ROUND(COUNT (CASE WHEN Customer_Status = 'Churned' then 1 end) *100.0 /COUNT(*),2)AS float) AS Churned_Rate
From customer_data
GROUP BY Contract;
GO

--Calculate Total Churn by Churn Category
SELECT 
Churn_Category,
COUNT(CASE WHEN Customer_Status ='Churned' then 1 end) as Churned_Count
From customer_data
GROUP BY Churn_Category
ORDER BY Churned_Count DESC
GO

---Calculate Internet Type
Select Distinct Internet_Type 
From customer_data	
GO

--Calculate Churn Rate by Internet Type
SELECT 
Internet_Type,
COUNT (CASE WHEN Customer_Status ='Churned' then 1 end) as Churned_Count,
CAST (ROUND(COUNT (CASE WHEN Customer_Status = 'Churned' then 1 end) *100.0 /COUNT(*),2)AS float) AS Churned_Rate
From customer_data
GROUP BY Internet_Type
ORDER BY Churned_Rate DESC
GO


-- Calculate Total Churn Customers and Churn Rate by Age Group
;WITH AgeGroup AS (
    SELECT 
        Age,
        Customer_Status,
        CASE 
            WHEN Age < 20 THEN '<20'
            WHEN Age BETWEEN 20 AND 34 THEN '20-35'
            WHEN Age BETWEEN 35 AND 49 THEN '35-50'
            WHEN Age BETWEEN 50 AND 64 THEN '50-65'
            ELSE '>65'
        END AS Age_Group
    FROM customer_data
)

SELECT 
    CASE 
        WHEN Age_Group = '<20' THEN 1
        WHEN Age_Group = '20-35' THEN 2
        WHEN Age_Group = '35-50' THEN 3
        WHEN Age_Group = '50-65' THEN 4
        WHEN Age_Group = '>65' THEN 5
    END AS Age_Group_Number,
    Age_Group,
    COUNT(*) AS Total_Customers,
    COUNT(CASE WHEN Customer_Status = 'Churned' THEN 1 END) AS Churned_Count,
    CAST(ROUND(
        COUNT(CASE WHEN Customer_Status = 'Churned' THEN 1 END) * 100.0 / COUNT(*), 1) AS float)
    AS Churned_Rate
FROM AgeGroup
GROUP BY Age_Group
ORDER BY Age_Group_Number;
GO


---Calculate Total Customer and Churn Rate by Tenure Group

WITH TenureGroup AS(
SELECT Customer_Status,
Tenure_in_Months,
CASE
WHEN Tenure_in_Months <6  THEN '<6 Months'
WHEN Tenure_in_Months BETWEEN 6 AND 11 THEN '6 -12 Months'
WHEN Tenure_in_Months BETWEEN 12 AND 17 THEN '12 -18 Months'
WHEN Tenure_in_Months BETWEEN 18 AND 23 THEN '18 -24 Months'
WHEN Tenure_in_Months >23 THEN '>24 Months'
END AS Tenure_Group
FROM customer_data
)

SELECT  
Tenure_Group,
CASE
WHEN Tenure_Group = '<6 Months' THEN 1
WHEN Tenure_Group = '6 -12 Months' THEN 2
WHEN Tenure_Group = '12 -18 Months' THEN 3
WHEN Tenure_Group = '18 -24 Months' THEN 4
WHEN Tenure_Group = '>24 Months' THEN 5
END Tenure_Group_Number,
COUNT(*) AS Total_Customers,
COUNT (CASE WHEN Customer_Status ='Churned' then 1 end) as Churned_Count,
CAST(ROUND(COUNT (CASE WHEN Customer_Status = 'Churned' then 1 end) *100.0 /COUNT(*),1) AS float) AS Churned_Rate
FROM TenureGroup
GROUP BY Tenure_Group 
ORDER BY Tenure_Group_Number ASC;


