SELECT * FROM online_sales_data.online_sales_data;

USE Online_Sales_data;
SHOW tables;

#previewing data
SELECT * FROM online_sales_data;  

-- Use EXTRACT (MONTH FROM order_date) for month 
SELECT Date, extract(month from Date) as month
from online_sales_data; 

-- GROUP BY Year/Month
SELECT extract(Year from Date) as Year,extract(Month from Date) as month, sum('Total Revenue') as Total_Revenue
from online_sales_data
group by Year, month
order by Total_Revenue desc;

-- USE SUM for revenue
SELECT sum('total revenue') from online_sales_data; 

-- COUNT(DISTINCT Transaction_id) for volume
SELECT count(distinct('Transaction ID'))
from online_sales_data;

-- Use ORDER BY for sorting 
SELECT region, sum ('total revenue') as total_revenue
from online_sales_data
group by region
order by total_revenue desc; 

-- Limit results for specific time periods
SELECT * from online_sales_data
where date between '2024-01-01' and '2024-01-15';

