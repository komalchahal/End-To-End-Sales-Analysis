# End-To-End-Sales-Analysis

## Project Overview

​This project provides a 360-degree analysis of an E-commerce marketplace (Olist) using SQL and Python. The objective is to extract business-critical metrics from raw data and visualize trends to help in data-driven decision-making.

## Tools & Technologies Used

​SQL (MySQL Workbench): Data extraction, joining multiple tables, and initial aggregations.

​Python (Google Colab): Data cleaning, advanced statistics (Moving Average, Retention), and visualization.
​Libraries: Pandas, Matplotlib, Seaborn.

## Key Business Insights

Based on the multi-dimensional analysis of the E-commerce dataset using SQL and Python, here are the core findings:

* Top Categories: Health & Beauty, Housewares, and Watches are the primary revenue drivers.

* Geographic Concentration: São Paulo and Rio de Janeiro emerge as the primary revenue drivers. São Paulo alone accounts for the highest density of customers (over 15%), indicating a highly centralized market presence.
  
* Low Customer Retention (2.32%): Our analysis shows a 0% retention rate, indicating that first-time buyers are not returning to make a second purchase within 6 months. We need to implement targeted email marketing and loyalty programs to incentivize repeat shopping and improve customer loyalty.
  
* High Dependency on Installments (51.5%): More than half of all successful orders (51.5%) are paid via installments. This strongly indicates that flexible financing/credit availability is a primary catalyst for conversions on the platform.

* Fluctuating Individual Spend: While tracking the Cumulative Moving Average of high-value customers, individual order values show high variance, meaning even loyal customers do not consistently purchase high-ticket items.

## Strategic Recommendations

To drive sustainable growth, reduce churn, and optimize capital, the following data-driven strategies are recommended:

### 1. Launch a Target Loyalty & Re-engagement Program
With a retention rate of just 2.32%, the cost of acquiring new customers is likely eating into profit margins.
* Action: Introduce a post-purchase automated email sequence offering targeted discounts (e.g., "We Miss You" coupons) exactly 60 and 120 days after the first purchase.
* Action: Reward repeat buyers with point-based loyalty tiers to incentivize that crucial second and third purchase.

### 2. Double-Down on Installment & Buy Now Pay Later (BNPL) Offers
Since 51.5% of users rely on installments, any friction in credit approval will directly tank sales.
* Action: Partner with more regional banks and Fintech providers to offer zero-interest EMIs (No-cost EMI) during festive seasons.
* Action: Promote installment options early on the product description page, rather than hiding them at the checkout screen.

### 3. Hyper-Local Marketing Expansion in Tier-1 Hubs
* Action: Since São Paulo and Rio de Janeiro are proven goldmines, optimize logistics in these regions to provide Same-Day or Next-Day Delivery. Speed of delivery will build a moat against competitors.
* Action: Allocate 60% of the digital ad spend (Google/Meta Ads) geo-targeted specifically to these top-performing states to maximize ROI.

### 4. Average Order Value (AOV) Optimization via Upselling
* Action: Implement product recommendation engines at checkout (e.g., "Frequently Bought Together") to bundle low-cost accessories with high-ticket items, pulling up the moving average spend of existing customers.


## Sample Visualization 
<img width="1078" height="760" alt="image" src="https://github.com/user-attachments/assets/f0fecbe2-42b9-4f01-818a-4cd3c6b9a078" />
<img width="1066" height="673" alt="image" src="https://github.com/user-attachments/assets/3bf4eaa0-17a1-4fee-b891-28197ff0bf3e" />

<img width="1127" height="677" alt="image" src="https://github.com/user-attachments/assets/a1e2a1b1-aaaf-4ffa-a497-ad6e864f3157" />





