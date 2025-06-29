
# 📊 CHURN ANALYSIS DASHBOARD PROJECT

This project showcases a complete end-to-end solution for analyzing and predicting customer churn using real-world data. 
The dashboard was built using SQL Server, Power BI, and Python (Random Forest) for machine learning.

## 🔧 Key Features:

1) ETL Pipeline: Built robust data pipelines in SQL Server for importing, cleaning, and transforming customer data (demographics, services, payments, churn).

2) Power BI Visualizations: Created dynamic dashboards to track churn rate, customer segmentation, revenue insights, and service usage.

3) Data Modeling: Designed an efficient data model and implemented DAX measures for KPIs such as total customers, churn rate, and new joiners.

4) Machine Learning Integration: Developed a Random Forest model in Python to predict churn; evaluated with classification report and confusion matrix.

5) Predictive Dashboard: Integrated ML predictions into Power BI to visualize high-risk customers and support business decisions.

6) UI Enhancements: Applied custom themes, layout design, and visual storytelling for better user experience and insight delivery.

## Tools Used :

SQL Server • Power BI • Python • Pandas • Scikit-learn • DAX • ETL • Data Visualization • Random Forest


## 🖼️ Dashboard Snapshots:

Here’s a look at the three dashboards I built in Power BI. Each one is designed to provide valuable insights for different parts of the business, from high-level overviews to churn predictions and data-driven summaries.

### 📍 1. Overview Dashboard:


The Overview Dashboard provides a clear, high-level view of customer behavior and business performance. It highlights key metrics such as churn rate, customer segments, service adoption, and usage patterns—helping stakeholders quickly grasp the overall state of the business.

**Slicers:**
- Marital Status
- Monthly Charges Range

**KPIs (Cards):**
- Total Customers
- Total Churn
- New Joiners
- Churn Rate

**Visual Used and Key Takeways**

- **Pie Chart:** Total Churn by Gender  
  *Insight:* Female customers account for 64.1% of total churn, indicating a notable gender-based churn disparity.
  
- **Combo Chart (Line and Stacked Column): Total Customers and Churn Rate by Age Group**  
  *Insight:* The **35–50 age group** is the largest segment (1,815 Customers) with moderate churn (**28%**).  
  *Insight:* The 20–30 group churns more despite fewer customers.  
  *Insight:* The **65+ age group** has the highest churn risk at nearly **40%**.  
  *Insight:* Even the **<20 age group**, though small (117 customers), shows a concerning churn rate of **23%**.

- **Combo Chart (Line and Stacked Column): Total Customers and Churn Rate by Tenure Group**  
  *Insight:* The 24+ month group is the *largest* segment (2087 Customers) yet shows a **27.5%** churn rate, proving loyalty isn’t guaranteed long-term.  
  *Insight:* The 18–24 month group (980 Customers) churns at **27.24%**, nearly identical to long-tenure churn, suggesting mid-term engagement drops too.  
  *Insight:* Early-tenure segments (0–12 months) total over 2,400 customers with **26–27%** churn, pointing to gaps in onboarding and early-stage retention.
  
- **Clustered Bar Chart — Churn Rate by Internet Type**  
  *Insight:* **Fiber Optic** customers have the highest churn rate at **41.10%**, which is **424.12%** higher than those with **no internet service (7.84%)**.  
  *Insight:* Churn rates progress clearly by Internet Type: **Fiber Optic → Cable → DSL → None.**  
  *Insight:* Overall, churn spans from **7.84%** to **41.10%** across these four internet service categories, highlighting the stark contrast in customer retention.

- **Clustered Bar Chart: Churn Rate by Payment Method**
  *Insight:* **Mailed Check* has the **highest churn rate** at **37.82%*, which is 155.63% higher than Credit Card, the lowest at 14.80%.  
  *Insight:* **Bank Withdrawal** follows closely with a churn rate of **34.43%**, highlighting that traditional payment methods see higher churn compared to digital options.
  
- **Clustered Bar Chart: Churn Rate by Contract Type**
  *Insight:* **Month-to-Month contracts** have the highest churn rate at **46.53%**, followed by One Year at **11.04%**, and Two Year contracts at just **2.73%**.  

- **Clustered Bar Chart: Churn Rate by State**
  *Insight:* **Jammu & Kashmir** reports the highest churn rate at **57.19%**, which is **158.89%** higher than Gujarat — the lowest at **22.09%**.  
  *Insight:* Across all 22 states, churn rates vary significantly, ranging from **22.09% to 57.19%**, highlighting strong regional differences in customer retention.

- **Clustered Bar Chart: Total Churn by Churn Category**
  *Insight:* The **Competitor** category recorded the highest churn at **761 customers (43.94%)**, which is **337.36%** higher than the **Other** category, the lowest at **174**.  
  *Insight:* Total churn across all five categories ranges from **174 to 761**, underlining significant variation in why customers leave.

- **Table:** Churn by Services — includes Unlimited Data, Streaming TV, Streaming Music, Streaming Movies, Premium Support, Phone Service, Paperless Billing, Online Security, Online Backup, Multiple Lines, Internet Service, Device Protection Plan

![Dashboard Overview](https://github.com/user-attachments/assets/f37516ec-4fa5-4331-a2f0-e17b8e498b1d)


### 📍 2. Prediction Dashboard (Powered by Machine Learning):


The Prediction Dashboard takes things a step further by using machine learning to identify customers who are most likely to churn. Powered by a Random Forest regression model, it displays each customer's churn risk alongside key details like their profile and service usage—enabling the business to take proactive steps before it's too late.

**Visual Used and Key Takeways**

- **Clustered Column Chart: Churn Count by Age Group**  
  *Insight:* The **35–50** age group had the highest number of customers at **128**, accounting for **33.60%** of the total — a **966.67%** increase compared to the **<20** group, which had the lowest count at just **12**.  
  *Insight:* Customer count across all five age groups ranged from **12 to 128**, showing notable concentration in middle-aged segments.
  
- **Clustered Column Chart: Churn Count by Tenure Group**  
  *Insight:* The **>24 Months** group has the highest customer count at **108**, which is **89.47% higher** than the **12–18 Months** group — the lowest, with **57 customers**.  
  *Insight:* This segment represents **28.35%** of all customers, with counts across all five tenure groups ranging from **57 to 108**.
  
- **Clustered Bar Chart: Churn Count by Martial Status**  
  *Insight:* Unmarried customers had the highest count at **194 (50.92%)**, slightly more than married customers at **187**, showing a near-even split with a marginal lean toward unmarried users.

- **Clustered Bar Chart: Churn Count by Contract**  
  *Insight:* **Month-to-Month** plans had the highest customer count at **356 (93.44%)**, vastly outnumbering **One Year** with **18** and **Two Year** with just **7** customers.  

 - **Clustered Column Chart: Churn Count by Payment Method**  
  *Insight:*  **Credit Card** had the highest number of customers at **195**, accounting for **51.18%** of the total — a **441.67%** increase over **Mailed Check**, which had the lowest count at **36**.  
  *Insight:*  **Bank Withdrawal** followed in second place with **150** customers, showing a strong preference for digital payment methods.
   
- **Clustered Bar Chart: Churn Count by State**  
  *Insight:* **Uttar Pradesh** had the highest customer count at **45 (11.81%)**, followed by **Maharashtra** and **Tamil Nadu**.  
  *Insight:* Across all 22 states, customer count ranged widely — from as low as **2** to as high as **45**, revealing significant geographic variation in customer base concentration.


![Dashboard Predictions](https://github.com/user-attachments/assets/cacbc646-04a2-4ca3-bcce-3a9b7877a4a7)


## 📍 3. Summary Dashboard (Smart Narrative):


The Summary Dashboard focuses on making insights easy to understand. By using Power BI’s Smart Narrative feature, it automatically generates clear, written explanations of key metrics like total customers, churn figures, and revenue trends. This helps decision-makers quickly grasp what's happening in the business without diving deep into the data.

![Dashboard Summary](https://github.com/user-attachments/assets/5a8bf1dc-07df-4cdb-acb4-5a457461e0fb)
