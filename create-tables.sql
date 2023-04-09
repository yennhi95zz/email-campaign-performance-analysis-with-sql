-- create table A
CREATE TABLE IF NOT EXISTS table_a (
  campaign_name STRING,
  campaign_id INTEGER
);

-- delete any existing data in table A
DELETE FROM table_a;

-- insert new values into table A
INSERT INTO table_a (campaign_name, campaign_id)
VALUES ('Instacash Promo 1', 112233), ('Instacash Promo 2', 112244), ('RoarMoney Balance 5', 112259);

-- create table B
CREATE TABLE IF NOT EXISTS table_b (
  campaign_id INTEGER,
  delivery_date DATE,
  user_id STRING
);

-- delete any existing data in table B
DELETE FROM table_b;

-- insert new values into table B
INSERT INTO table_b (campaign_id, delivery_date, user_id)
VALUES (112233, '2021-01-01', 'a'), (112233, '2021-01-01', 'b'), (112233, '2021-01-01', 'c'), 
       (112244, '2021-01-05', 'd'), (112244, '2021-01-05', 'e');

-- create table C
CREATE TABLE IF NOT EXISTS table_c (
  campaign_id INTEGER,
  open_date DATE,
  user_id STRING
);

-- delete any existing data in table C
DELETE FROM table_c;

-- insert new values into table C
INSERT INTO table_c (campaign_id, open_date, user_id)
VALUES (112233, '2021-01-03', 'a'), (112233, '2021-01-05', 'b'), (112244, '2021-01-07', 'd'), 
       (112244, '2021-01-10', 'e');

-- create table D
CREATE TABLE IF NOT EXISTS table_d (
  campaign_id INTEGER,
  click_date DATE,
  user_id STRING
);

-- delete any existing data in table D
DELETE FROM table_d;

-- insert new values into table D
INSERT INTO table_d (campaign_id, click_date, user_id)
VALUES (112233, '2021-01-03', 'a'), (112244, '2021-01-11', 'e');



-- View the tables
SELECT campaign_name, campaign_id FROM table_a;
SELECT campaign_id, delivery_date, user_id FROM table_b;
SELECT campaign_id, open_date, user_id FROM table_c;
SELECT campaign_id, click_date, user_id FROM table_d;



