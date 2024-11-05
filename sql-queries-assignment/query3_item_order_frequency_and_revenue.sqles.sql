-- Question 3 For each menu item, how many times has it been ordered, and what is the total revenue generated from each item?

WITH revenue as (
  SELECT 
      menu.item_name,
      menu.price,
      transactions.quantity,
      transactions.total_price
  from menu
  join transactions on menu.menu_id = transactions.menu_id
)

SELECT 
	item_name,
	quantity AS ordered,
    total_price AS total_revenue
FROM revenue;
