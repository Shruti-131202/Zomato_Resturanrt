-- 1. List the total number of restaurants in each country

SELECT 
    Country, COUNT(*) AS Total_No_of_Restaurant
FROM
    restaurant_addresss
GROUP BY Country
ORDER BY Total_No_of_Restaurant DESC;

-- 2. Find the average price range of restaurants in each city
SELECT 
    City, AVG(Price_range) AS Avg_PriceRange
FROM
    restaurant_addresss
        JOIN
    restaurant ON restaurant_addresss.RestaurantId = restaurant.RestaurantId
GROUP BY City
ORDER BY Avg_PriceRange DESC;

-- 3. Get the names of all restaurants along with their cuisines and average cost for two, ordered by cost in descending order.
SELECT 
    restaurant.RestaurantId,
    RestaurantName,
    Cuisines,
    Average_cost_for_two
FROM
    restaurant
        JOIN
    restaurant_addresss ON restaurant.RestaurantId = restaurant_addresss.RestaurantId
ORDER BY Average_cost_for_two DESC;

-- 4. Count the number of restaurants that have online delivery available in each country
SELECT 
    Country,
    COUNT(*) AS Total_no_of_Restaurant_has_online_delivery
FROM
    restaurant_addresss
        JOIN
    restaurant ON restaurant_addresss.RestaurantId = restaurant.RestaurantId
WHERE
    Has_Online_delivery = 'Yes'
GROUP BY Country;

-- 5.Calculate the total number of votes for each cuisine type across all cities
SELECT 
    Cuisines, SUM(Votes)
FROM
    restaurant_addresss
        JOIN
    restaurant ON restaurant_addresss.RestaurantId = restaurant.RestaurantId
GROUP BY Cuisines;

-- 6. Find the top 3 cities with the highest average rating for restaurants
SELECT 
    City, ROUND(AVG(Rating), 2) AS Avg_rating
FROM
    restaurant_addresss
        JOIN
    restaurant ON restaurant_addresss.RestaurantId = restaurant.RestaurantId
GROUP BY City
ORDER BY Avg_rating DESC
LIMIT 3;

-- 7.Determine the restaurant with the highest rating in each locality
SELECT 
    Locality, RestaurantName, MAX(Rating) AS Max_rating
FROM
    restaurant_addresss
        JOIN
    restaurant ON restaurant_addresss.RestaurantId = restaurant.RestaurantId
GROUP BY Locality , RestaurantName
ORDER BY RestaurantName ASC , Max_rating DESC;

-- 8. Identify the restaurants with ratings above the average rating of all restaurants
SELECT 
    RestaurantName, Rating
FROM
    restaurant
WHERE
    Rating > (SELECT 
            AVG(Rating)
        FROM
            restaurant)
ORDER BY Rating DESC;

-- 9. List the number of restaurants delivering now in each locality along with their average cost for two
SELECT 
    Locality,
    COUNT(*) AS Total_Restaurant_delivring,
    AVG(Average_cost_for_two) AS Avg_Cost
FROM
    restaurant_addresss
        JOIN
    restaurant ON restaurant_addresss.RestaurantId = restaurant.RestaurantId
WHERE
    Is_delivering_now = 'Yes'
GROUP BY Locality
ORDER BY Total_Restaurant_delivring DESC;

-- 10. Calculate the average, minimum, and maximum cost for two for each cuisine type
SELECT 
    Cuisines,
    AVG(Average_cost_for_two) AS Avg_Cost,
    MIN(Average_cost_for_two) AS Min_Cost,
    MAX(Average_cost_for_two) AS Max_Cost
FROM
    restaurant_addresss
        JOIN
    restaurant ON restaurant_addresss.RestaurantId = restaurant.RestaurantId
GROUP BY Cuisines;

-- 11. Find the top 5 most popular restaurants (by votes) in each country
select Country,RestaurantName,Votes from restaurant_addresss join restaurant on 
restaurant_addresss.RestaurantId = restaurant.RestaurantId  group by Country order by Votes desc limit 5;

-- 11. Get the total number of restaurants, and the average and total votes for restaurants in each city, ordered by total votes in descending order
SELECT 
    City,
    COUNT(*) AS Total_Restaurant,
    AVG(Votes) AS Avg_Votes,
    SUM(Votes) AS Total_Votes
FROM
    restaurant_addresss
        JOIN
    restaurant ON restaurant_addresss.RestaurantId = restaurant.RestaurantId
GROUP BY City
ORDER BY Total_Votes DESC;

-- 12.Identify restaurants that have has Online Delivery and their average rating compared to those that haven't
SELECT 
    ROUND(AVG(Rating), 2) AS Avg_rating, Has_Online_delivery
FROM
    restaurant
GROUP BY Has_Online_delivery;

