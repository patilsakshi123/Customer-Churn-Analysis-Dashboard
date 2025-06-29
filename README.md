
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

**Charts & Tables:**

- **Pie Chart:** Total Churn by Gender  
  *Insight:* Female customers account for 64.1% of total churn, indicating a notable gender-based churn disparity.

- **Combo Chart (Lline and Stacked Column):** Total Customers and Churn Rate by Age Group  
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

- **Clustered Bar Chart:** Churn Rate by Payment Method
- **Clustered Bar Chart:** Churn Rate by Contract Type
- **Clustered Bar Chart:** Churn Rate by State
- **Clustered Bar Chart:** Total Churn by Churn Category
- **Table:** Churn by Services — includes Unlimited Data, Streaming TV, Streaming Music, Streaming Movies, Premium Support, Phone Service, Paperless Billing, Online Security, Online Backup, Multiple Lines, Internet Service, Device Protection Plan

![Dashboard Overview](https://github.com/user-attachments/assets/f37516ec-4fa5-4331-a2f0-e17b8e498b1d)


### 📍 2. Prediction Dashboard (Powered by Machine Learning):


The Prediction Dashboard takes things a step further by using machine learning to identify customers who are most likely to churn. Powered by a Random Forest regression model, it displays each customer's churn risk alongside key details like their profile and service usage—enabling the business to take proactive steps before it's too late.


![Dashboard Predictions](https://github.com/user-attachments/assets/cacbc646-04a2-4ca3-bcce-3a9b7877a4a7)


## 📍 3. Summary Dashboard (Smart Narrative):


The Summary Dashboard focuses on making insights easy to understand. By using Power BI’s Smart Narrative feature, it automatically generates clear, written explanations of key metrics like total customers, churn figures, and revenue trends. This helps decision-makers quickly grasp what's happening in the business without diving deep into the data.

![Dashboard Summary](https://github.com/user-attachments/assets/5a8bf1dc-07df-4cdb-acb4-5a457461e0fb)
