SELECT c.customer_id,
       c.first_name,
       c.last_name,
       SUM(p.amount) AS total_spend
FROM customer c
JOIN payment p ON p.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spend DESC
LIMIT 10;
