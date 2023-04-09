-- Problem 1
-- Please find out the number of emails delivered per campaign_id.
SELECT campaign_id, delivery_date, COUNT(user_id) AS '# delivers'
FROM table_b
GROUP BY campaign_id, delivery_date;