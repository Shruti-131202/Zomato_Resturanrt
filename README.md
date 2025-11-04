# 🍽️ Zomato Restaurant Data Analysis (SQL Project)

##  **Project Overview**
The **Zomato Restaurant Data Analysis** project focuses on exploring restaurant data using **SQL** to uncover meaningful insights.  
It analyzes restaurant distribution, pricing, cuisines, and customer ratings to understand business performance and customer preferences.  
The project demonstrates how data analysis can support strategic decisions for restaurant owners and help customers discover better dining options.

---

##  **Objective**
- Analyze restaurant distribution across different cities and countries  
- Identify popular cuisines and their average pricing  
- Compare online delivery and table booking trends  
- Find top-rated restaurants and understand customer preferences  
- Derive data-driven insights to support business decisions  

---

##  **Tools & Technologies**
- **Language:** SQL  
- **Database:** MySQL  
- **Techniques Used:**  
  - Data Cleaning  
  - Joins and Subqueries  
  - Aggregations and Grouping  
  - Descriptive and Exploratory Data Analysis (EDA)

---

##  **Database Structure**

### **Table 1: restaurant**
| Column | Description |
|--------|--------------|
| RestaurantId | Unique ID for each restaurant |
| RestaurantName | Name of the restaurant |
| Has_table_booking | Availability of table booking |
| Has_online_delivery | Availability of online delivery |
| Is_delivering_now | Whether currently delivering |
| Average_cost_for_two | Average cost for two people |
| Rating | Restaurant rating |
| Votes | Number of customer votes |
| Price_range | Price range category |

### **Table 2: restaurant_address**
| Column | Description |
|--------|--------------|
| RestaurantId | Foreign key linking to restaurant table |
| Country | Country name |
| CountryCode | Country code |
| City | City name |
| Locality | Area or region |
| Address | Complete restaurant address |
| Cuisines | Type of cuisines offered |
| Currency | Currency used in that location |

---

##  **Key SQL Queries**

---

## **Project Files**

---
##  **Insights**
- Major cities have a higher concentration of restaurants, indicating competitive markets.  
- Indian, Chinese, and Italian cuisines are among the most popular choices.  
- Online delivery services are more common than table booking options.  
- Highly rated restaurants often receive a greater number of customer votes, showing stronger engagement.  
- The average cost for dining is generally higher in metropolitan cities compared to smaller towns.  

---

##  **Conclusion**
This project highlights how **SQL** can be leveraged to perform **data-driven analysis** in the restaurant industry.  
It demonstrates the importance of querying, aggregating, and analyzing data to identify patterns and trends that can improve business performance and customer experience.  
The analysis provides a solid foundation for data analysts to make informed, strategic decisions using structured datasets.

---

