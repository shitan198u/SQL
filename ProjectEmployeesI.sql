# Write your MySQL query statement below
SELECT p.product_id, ROUND(SUM(p.price*u.units)/SUM(u.units),2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
WHERE DATEDIFF(purchase_date,start_date)>=0 AND DATEDIFF(end_date,purchase_date)>=0
GROUP BY product_id
