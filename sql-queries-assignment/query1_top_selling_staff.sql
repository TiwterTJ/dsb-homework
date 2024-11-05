-- Question 1 Which staff member has made the highest total sales in terms of revenue, and how much did they sell?

SELECT
  staff.name,
  SUM(transactions.total_price) AS total_revenue
FROM staff
JOIN transactions ON staff.staff_id = transactions.staff_id
GROUP BY staff.name
ORDER BY total_revenue DESC
LIMIT 1;
