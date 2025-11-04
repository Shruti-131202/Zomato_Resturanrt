# 🍽️ Zomato Restaurant Data Analysis (SQL Project)

##  Project Overview
The **Zomato Restaurant Data Analysis** project focuses on uncovering insights from restaurant data using SQL.  
It helps identify patterns in restaurant distribution, pricing, customer preferences, and ratings — valuable for business owners, analysts, and customers alike.

---

##  Objective
- Analyze restaurant distribution across cities and countries  
- Identify popular cuisines and cost patterns  
- Compare restaurant ratings and delivery availability  
- Derive insights for business decision-making  

---

##  Tools & Technologies
- **Language:** SQL  
- **Database:** MySQL  
- **Techniques:** Joins, Aggregations, Grouping, Subqueries, Data Cleaning, EDA  

---

##  Database Structure
**Tables Used:**
1. `restaurant` – Contains restaurant details (name, cost, ratings, votes, delivery options)  
2. `restaurant_address` – Contains location details (country, city, locality, cuisines, address)

---

##  Key SQL Queries
Some key SQL queries include:
```sql
-- 1. Total number of restaurants in each country
SELECT Country, COUNT(*) AS Total_Restaurants
FROM restaurant_address
GROUP BY Country
ORDER BY Total_Restaurants DESC;

-- 2. Top 3 cities with highest average rating
SELECT City, ROUND(AVG(Rating), 2) AS Avg_Rating
FROM restaurant_address
JOIN restaurant ON restaurant_address.RestaurantId = restaurant.RestaurantId
GROUP BY City
ORDER BY Avg_Rating DESC
LIMIT 3;
---
View All queries in
---
##  Insights and Finding

- Major cities host a higher number of restaurants

- Indian, Chinese, and Italian cuisines dominate across cities

- Online delivery is more common than table booking

- High-rated restaurants often receive more customer votes

- Metro cities tend to have higher average costs for two

---

##  Project Files
- Zomato_sql_project.pptx	Presentation with visuals and insights

---

 ##  Conclusion

This project demonstrates how SQL can be applied for data-driven insights in the restaurant industry.
It provides a strong example of database querying, aggregation, and analysis skills — essential for aspiring data analysts.
ORDER BY Avg_Rating DESC
LIMIT 3;
