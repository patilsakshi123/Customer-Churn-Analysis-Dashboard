--Use Customer_churn database for this query
Use  Customer_churn
Go

---Select data from table customer_data
Select * from customer_data
Go

-- Calculate Total Customer
SELECT Count(Customer_ID) AS Total_Customer
FROM customer_data
Go

---Calculate Total Churn 
SELECT COUNT(Customer_Status) as Total_Churn
FROM customer_data
Where Customer_Status = 'Churned';
Go

---Calculate Churn Rate
SELECT CAST(ROUND((COUNT(CASE WHEN Customer_Status ='Churned'THEN 1 END)*100.0/COUNT(*)), 2)AS FLOAT) AS Churn_Rate
From customer_data


---Calculate New Joiner
SELECT COUNT(CASE WHEN Customer_Status ='Joined' THEN 1 END ) AS New_Joiner
From customer_data
