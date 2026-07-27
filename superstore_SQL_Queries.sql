create database sales;
 use sales;
create table data (
 Order_id varchar(30),
 Order_date date,
 year year,
 Month tinyint,
 Customer_name varchar(100),
 Region varchar(30),
 Caregory varchar(50),
 sub_category Varchar(50),
 Sales decimal(10,2),
 Quantity int,
 Discount decimal(4,2),
 Profit decimal(10,2)
 );
 select * from data;
 select count(*) from data;

 select region, sum(sales) as total_sales 
 from data 
 group by region;
 alter table data
 rename column caregory to category;
 select category,
 sub_category,
 sum(profit) as total_profit 
 from data
 group by category, sub_category
 order by total_profit DESC 
 limit 5;
select 
year,
month,
sum(sales) as  total_sales
from data
group by year, month
order by year, month;
describe data;
select discount, avg(profit)
from data
group by discount;

 

 
