SELECT customer_id, SUM(order_amount) as total_revenue
FROM orders 
GROUP BY customer_id 
ORDER BY total_revenue DESC 
LIMIT 10;

-- Monthly sales trends
SELECT 
    DATE_TRUNC('month', order_date) as month,
    SUM(order_amount) as monthly_sales
FROM orders 
GROUP BY month 
ORDER BY month;
