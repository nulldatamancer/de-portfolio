SELECT date_trunc('month', p.payment_date) AS month,
       SUM(p.amount) AS revenue
FROM payment p
GROUP BY 1
ORDER BY 1;
