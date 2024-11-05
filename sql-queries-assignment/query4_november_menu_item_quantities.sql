-- Question 4 What are the names of menu items that were ordered in November 2023, along with the total quantity ordered for each?

with nov_tr  AS (
  	SELECT * from transactions
	WHERE transactions.date BETWEEN '2023-11-01' AND '2023-11-31'
)

SELECt 
	menu.item_name,
    SUM(nov_tr.quantity) AS quantity
FROM menu 
JOIN nov_tr on menu.menu_id = nov_tr.menu_id
GROUP by menu.menu_id
ORDER BY quantity DESC
LIMIT 5
