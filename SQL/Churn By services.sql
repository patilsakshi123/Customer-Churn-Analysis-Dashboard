use Customer_churn
SELECT 
    'Phone_Service' AS Services, 
    COUNT(CASE WHEN Phone_Service = 'yes' THEN 1 END) AS yes_Count,
    COUNT(CASE WHEN Phone_Service = 'no' THEN 1 END) AS no_Count,
	CAST(ROUND(COUNT(CASE WHEN Phone_Service = 'Yes' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS FLOAT) AS Yes_Percentage,
    CAST(ROUND(COUNT(CASE WHEN Phone_Service = 'No' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS FLOAT) AS No_Percentage
FROM new_Churn
WHERE Customer_Status = 'churned'
UNION ALL

SELECT 
    'Streaming_Music' AS Services, 
    COUNT(CASE WHEN Streaming_Music = 'yes' THEN 1 END) AS yes_Count,
    COUNT(CASE WHEN Streaming_Music = 'no' THEN 1 END) AS no_Count,
    CAST(ROUND(COUNT(CASE WHEN Streaming_Music = 'yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS FLOAT) AS Yes_Percentage,
    CAST(ROUND(COUNT(CASE WHEN Streaming_Music = 'no' THEN 1 END) * 100.0 / COUNT(*), 2) AS FLOAT) AS No_Percentage
FROM new_Churn
WHERE Customer_Status = 'churned'
UNION ALL

SELECT 
    'Unlimited_Data' AS Services, 
    COUNT(CASE WHEN Unlimited_Data = 'yes' THEN 1 END) AS yes_Count,
    COUNT(CASE WHEN Unlimited_Data = 'no' THEN 1 END) AS no_Count,
	CAST(ROUND(COUNT(CASE WHEN Unlimited_Data = 'Yes' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS float) AS Yes_Percentage,
    CAST(ROUND(COUNT(CASE WHEN Unlimited_Data = 'No' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2)AS float) AS No_Percentage
FROM new_Churn
WHERE Customer_Status = 'churned'
UNION ALL

SELECT 
    'Multiple_Lines' AS Services, 
    COUNT(CASE WHEN Multiple_Lines = 'yes' THEN 1 END) AS yes_Count,
    COUNT(CASE WHEN Multiple_Lines = 'no' THEN 1 END) AS no_Count,
	CAST(ROUND(COUNT(CASE WHEN Multiple_Lines = 'Yes' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS FLOAT) AS Yes_Percentage,
    CAST(ROUND(COUNT(CASE WHEN Multiple_Lines = 'No' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS FLOAT) AS No_Percentage
FROM new_Churn
WHERE Customer_Status = 'churned'

UNION ALL

SELECT 
    'Internet_Service' AS Services, 
    COUNT(CASE WHEN Internet_Service = 'yes' THEN 1 END) AS yes_Count,
    COUNT(CASE WHEN Internet_Service = 'no' THEN 1 END) AS no_Count,
	CAST(ROUND(COUNT(CASE WHEN Internet_Service = 'Yes' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS FLOAT) AS Yes_Percentage,
    CAST(ROUND(COUNT(CASE WHEN Internet_Service = 'No' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS  FLOAT) AS No_Percentage
FROM new_Churn
WHERE Customer_Status = 'churned'
UNION ALL

SELECT 
    'Online_Security' AS Services, 
    COUNT(CASE WHEN Online_Security = 'yes' THEN 1 END) AS yes_Count,
    COUNT(CASE WHEN Online_Security IN ('no', 'None') THEN 1 END) AS no_Count,
	CAST(ROUND(COUNT(CASE WHEN Online_Security = 'Yes' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS FLOAT) AS Yes_Percentage,
    CAST(ROUND(COUNT(CASE WHEN Online_Security = 'No' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2)AS FLOAT) AS No_Percentage
FROM new_Churn
WHERE Customer_Status = 'churned'
UNION ALL

SELECT 
    'Online_Backup' AS Services, 
    COUNT(CASE WHEN Online_Backup = 'yes' THEN 1 END) AS yes_Count,
    COUNT(CASE WHEN Online_Backup = 'No' THEN 1 END) AS no_Count,
	CAST(ROUND(COUNT(CASE WHEN Online_Backup = 'Yes' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2)AS FLOAT) AS Yes_Percentage,
    CAST(ROUND(COUNT(CASE WHEN Online_Backup = 'No' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2)AS FLOAT) AS No_Percentage
FROM new_Churn
WHERE Customer_Status = 'churned'
UNION ALL

SELECT 
    'Device_Protection_Plan' AS Services, 
    COUNT(CASE WHEN Device_Protection_Plan = 'yes' THEN 1 END) AS yes_Count,
    COUNT(CASE WHEN Device_Protection_Plan = 'no' THEN 1 END) AS no_Count,
	CAST(ROUND(COUNT(CASE WHEN Device_Protection_Plan = 'Yes' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2)AS FLOAT) AS Yes_Percentage,
    CAST(ROUND(COUNT(CASE WHEN Device_Protection_Plan = 'No' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS FLOAT) AS No_Percentage
FROM new_Churn
WHERE Customer_Status = 'churned'
UNION ALL

SELECT 
    'Premium_Support' AS Services, 
    COUNT(CASE WHEN Premium_Support = 'yes' THEN 1 END) AS yes_Count,
    COUNT(CASE WHEN Premium_Support = 'no' THEN 1 END) AS no_Count,
	CAST(ROUND(COUNT(CASE WHEN Premium_Support = 'Yes' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2)AS FLOAT) AS Yes_Percentage,
    CAST(ROUND(COUNT(CASE WHEN Premium_Support = 'No' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS FLOAT) AS No_Percentage
FROM new_Churn
WHERE Customer_Status = 'churned'
UNION ALL

SELECT 
    'Streaming_TV' AS Services, 
    COUNT(CASE WHEN Streaming_TV = 'yes' THEN 1 END) AS yes_Count,
    COUNT(CASE WHEN Streaming_TV = 'no' THEN 1 END) AS no_Count,
	CAST(ROUND(COUNT(CASE WHEN Streaming_TV = 'Yes' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID),2)AS FLOAT) AS Yes_Percentage,
    CAST(ROUND(COUNT(CASE WHEN Streaming_TV = 'No' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS FLOAT) AS No_Percentage
FROM new_Churn
WHERE Customer_Status = 'churned'
UNION ALL

SELECT 
    'Streaming_Music' AS Services, 
    COUNT(CASE WHEN Streaming_Music = 'yes' THEN 1 END) AS yes_Count,
    COUNT(CASE WHEN Streaming_Music = 'no' THEN 1 END) AS no_Count,
	CAST(ROUND(COUNT(CASE WHEN Streaming_Music = 'Yes' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS FLOAT) AS Yes_Percentage,
    CAST(ROUND(COUNT(CASE WHEN Streaming_Music = 'No' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS  FLOAT) AS No_Percentage
FROM new_Churn
WHERE Customer_Status = 'churned'
UNION ALL

SELECT 
    'Streaming_Movies' AS Services, 
    COUNT(CASE WHEN Streaming_Movies = 'yes' THEN 1 END) AS yes_Count,
    COUNT(CASE WHEN Streaming_Movies = 'no' THEN 1 END) AS no_Count,
	CAST(ROUND(COUNT(CASE WHEN Streaming_Movies = 'Yes' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS FLOAT) AS Yes_Percentage,
    CAST(ROUND(COUNT(CASE WHEN Streaming_Movies = 'No' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS FLOAT) AS No_Percentage
FROM new_Churn
WHERE Customer_Status = 'churned'
UNION ALL

SELECT 
    'Paperless_Billing' AS Services, 
    COUNT(CASE WHEN Paperless_Billing = 'yes' THEN 1 END) AS yes_Count,
    COUNT(CASE WHEN Paperless_Billing = 'no' THEN 1 END) AS no_Count,
	CAST(ROUND(COUNT(CASE WHEN Paperless_Billing = 'Yes' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS FLOAT) AS Yes_Percentage,
    CAST(ROUND(COUNT(CASE WHEN Paperless_Billing = 'No' THEN 1 END) * 100.0 / COUNT(CUSTOMER_ID), 2) AS FLOAT) AS No_Percentage
FROM new_Churn
WHERE Customer_Status = 'churned';
