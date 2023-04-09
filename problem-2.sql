-- Problem 2
-- How do we gauge the overall performance of the campaign based on product category (Instacash, RoarMoney) 
-- and only considering opens 
-- and clicks within 3 days from delivery date as successful performance towards the campaign?
SELECT CASE 
         WHEN a.campaign_name LIKE '%Instacash%' THEN 'Instacash'
         WHEN a.campaign_name LIKE '%RoarMoney%' THEN 'RoarMoney'
         ELSE 'Others'
       END AS campaign_category,
       COUNT(DISTINCT b.user_id) AS '# delivers',
       COUNT(DISTINCT c.user_id) * 100.0 / COUNT(DISTINCT b.user_id) AS open_rate,
       COUNT(DISTINCT d.user_id) * 100.0 / COUNT(DISTINCT b.user_id) AS click_through_rate
FROM table_a a
LEFT JOIN table_b b ON a.campaign_id = b.campaign_id
LEFT JOIN table_c c ON b.campaign_id = c.campaign_id AND b.user_id = c.user_id
LEFT JOIN table_d d ON c.campaign_id = d.campaign_id AND c.user_id = d.user_id AND d.click_date <= date(b.delivery_date, '+3 days')
WHERE a.campaign_name LIKE '%Instacash%' OR a.campaign_name LIKE '%RoarMoney%'
GROUP BY campaign_category;
