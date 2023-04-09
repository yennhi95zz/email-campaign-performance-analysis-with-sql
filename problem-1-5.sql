-- Problem 1.5
-- Please find out the average open rate (% of people opening the email) and click-through rate (% of people clicking/interacting with the email after opening it) relative to the individual campaign & their delivery date.
SELECT b.campaign_id, b.delivery_date, COUNT(DISTINCT b.user_id) AS '# delivers', 
       COUNT(DISTINCT c.user_id) * 100.0 / COUNT(DISTINCT b.user_id) AS open_rate,
       COUNT(DISTINCT d.user_id) * 100.0 / COUNT(DISTINCT c.user_id) AS click_through_rate
FROM table_b b
LEFT JOIN table_c c ON b.campaign_id = c.campaign_id AND b.user_id = c.user_id
LEFT JOIN table_d d ON c.campaign_id = d.campaign_id AND c.user_id = d.user_id
GROUP BY b.campaign_id, b.delivery_date;