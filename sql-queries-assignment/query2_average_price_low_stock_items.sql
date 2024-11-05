-- Question 2 What is the average price of menu items that use ingredients with a stock quantity below 15?

with low_stock AS (
	SELECT * FROM ingredient
    WHERE stock_qty < 15
)

SELECT 
    avg(price) AS average_price
FROM menu
JOIN low_stock AS lo ON menu.ingredient_id = lo.ingredient_id
