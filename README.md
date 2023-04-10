# Understanding Email Campaign Performance Using SQL: A Guide for Campaign Analysts

#### 🧑‍🏫 Author: [Nhi Yen](https://www.linkedin.com/in/yennhi95zz/)
##### 💡I write about Machine Learning on [Medium](https://medium.com/@yennhi95zz) || [Github](https://github.com/yennhi95zz) || [Kaggle](https://www.kaggle.com/nhiyen/code) || [Linkedin](https://www.linkedin.com/in/yennhi95zz/). If you found this article interesting, your support by giving me ⭐ will help me spread the knowledge to others.

## Introduction

In today's digital age, email marketing remains an essential tool for businesses to reach and engage with their customers. As a campaign analyst, it's crucial to understand how email campaigns are performing, and SQL can be a powerful tool to analyze email performance data.

This repository provides a guide on how to use SQL to analyze email campaign performance and extract insights that can help optimize future campaigns. The repository contains a Jupyter Notebook with SQL queries to solve three different problems related to email campaign performance.

## Tech Skills

![SQLite](https://img.shields.io/badge/SQLite-%2307405e.svg?style=plastic&logo=sqlite&logoColor=white)
![Jupyter Notebook](https://img.shields.io/badge/Jupyter%20Notebook-%23F37626.svg?style=plastic&logo=jupyter&logoColor=white)
![Python](https://img.shields.io/badge/Python-%233776AB.svg?style=plastic&logo=python&logoColor=white)

## Table Structure
We have 4 tables to study the email performance of a campaign:

- Table A: contains the campaign name information
- Table B: contains the campaign id delivery performance (who the campaign was sent out to)
- Table C: contains the campaign id open performance (who opened the email)
- Table D: contains the campaign's click performance (who clicked on any elements in the email)
Sample of what the table structures look like (note: assume this is a snapshot and not the full dataset):

```
Table A (Campaign)

| campaign_name          | campaign_id |
|------------------------|------------|
| Instacash Promo 1      | 112233     |
| Instacash Promo 2      | 112244     |
| RoarMoney Balance 5    | 112259     |

Table B (Email delivered)

| campaign_id | delivery_date | user_id |
|-------------|---------------|---------|
| 112233      | 2021-01-01    | a       |
| 112233      | 2021-01-01    | b       |
| 112233      | 2021-01-01    | c       |
| 112244      | 2021-01-05    | d       |
| 112244      | 2021-01-05    | e       |

Table C (Email Opened)

| campaign_id | open_date    | user_id |
|-------------|--------------|---------|
| 112233      | 2021-01-03   | a       |
| 112233      | 2021-01-05   | b       |
| 112244      | 2021-01-07   | d       |
| 112244      | 2021-01-10   | e       |

Table D (Email Link Clicked)

| campaign_id | click_date   | user_id |
|-------------|--------------|---------|
| 112233      | 2021-01-03   | a       |
| 112244      | 2021-01-11   | e       |

```

## Problems to Solve
We will tackle the following problems:

1. Find the number of emails delivered per campaign_id.
2. Find the average open rate and click-through rate relative to the individual campaign & their delivery date.
3. Gauge the overall performance of the campaign based on product category (Instacash, RoarMoney) and only considering opens and clicks within 3 days from delivery date as successful performance towards the campaign.
4. Find the average time between the 2nd and 3rd email for each individual product on an overall level.
Solution

In this notebook, we will use **SQLite** to execute the commands in Jupyter Notebook. You can also use SQLite in https://sqliteonline.com/ to execute. For your reference, we will provide a link on how to use `ipython-sql` in Jupyter Notebook.

The solutions to the problems are explained in the notebook, along with the SQL queries used to solve them.

## References:
- Github Report - [HERE](https://github.com/yennhi95zz/email-campaign-performance-analysis-with-sql)
- Kaggle Project - [HERE](https://www.kaggle.com/nhiyen/email-campaign-performance-analysis-with-sql)
- Full explanation on [MEDIUM](https://medium.com/@yennhi95zz/understanding-email-campaign-performance-using-sql-a-guide-for-campaign-analysts-6407b9a60f98)

Follow "Nhi Yen" for future updates!
