-- Problem 3
-- What is the average time 
-- between the 2nd and 3rd email for each individual product on an overall level?

SELECT CASE 
         WHEN a.campaign_name LIKE '%Instacash%' THEN 'Instacash'
         WHEN a.campaign_name LIKE '%RoarMoney%' THEN 'RoarMoney'
         ELSE 'Others'
       END AS campaign_category,
       AVG(JULIANDAY(c2.open_date) - JULIANDAY(c1.open_date)) AS "Average Time taken from 2nd to 3rd email"
FROM table_a a
LEFT JOIN table_b b1 ON a.campaign_id = b1.campaign_id
LEFT JOIN table_b b2 ON a.campaign_id = b2.campaign_id AND b1.delivery_date < b2.delivery_date
LEFT JOIN table_c c1 ON b1.campaign_id = c1.campaign_id AND b1.user_id = c1.user_id
LEFT JOIN table_c c2 ON b2.campaign_id = c2.campaign_id AND b2.user_id = c2.user_id
WHERE c1.open_date IS NOT NULL AND c2.open_date IS NOT NULL
AND (a.campaign_name LIKE '%Instacash%' OR a.campaign_name LIKE '%RoarMoney%')
GROUP BY campaign_category;
