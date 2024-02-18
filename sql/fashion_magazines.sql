-- Add your sql here
SELECT customer_name AS Customer_Name, 
       SUM(subscription_amount) AS Total_Amount_Due
FROM customers 
JOIN subscriptions ON customer_id = customer_id
JOIN magazines ON magazine_id = magazine_id
WHERE magazine_name = 'Fashion Magazine' 
  AND subscription_status = 'unpaid'
GROUP BY customer_name;