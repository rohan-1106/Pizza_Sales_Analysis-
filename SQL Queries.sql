-- select (sum(total_price)) as Total_Revenue from pizza_sales;1)



-- select
--  SUM(total_price) / count(distinct order_id) as avg_order_value
--  FROM pizza_sales;2)



-- select 
-- sum(quantity) as total_pizza_sold 
-- from pizza_sales;3)


-- select 
-- count(distinct order_id) as total_orders
--  from pizza_sales;4)


-- select 
-- cast(sum(quantity) / count(distinct order_id) as decimal (10,2)) as avg_pizza_per_order
-- from pizza_sales;5)



-- alter table pizza_sales
-- add column order_date_new date;

-- set sql_safe_updates = 0;
-- update pizza_sales
-- set	order_date_new = str_to_date(order_date,'%d-%m-%Y');

-- alter table pizza_sales
-- drop column order_date;


-- alter table pizza_sales
-- rename column order_date_new to order_date;



-- select 
-- dayname(order_date) as order_day , 
-- count(distinct order_id) as total_id
-- from pizza_sales
-- group by order_day; 6)



-- select 
-- monthname(order_date) as month_name,
-- count(distinct order_ID) as total_orders
-- from pizza_sales
-- group by month_name
-- order by total_orders desc; 7)




--  select pizza_category ,
--  sum(total_price) as total_sales,
--  sum(total_price) * 100 /(select sum(total_price) from pizza_sales where month(order_date) = 1) as PCT
--  from pizza_sales 
--  where month(order_date) = 1
--  group by pizza_category; 

-- 								OR

--  select pizza_category ,
--  sum(total_price) as total_sales,
--  sum(total_price) * 100 /(select sum(total_price) from pizza_sales where monthname(order_date) = "January") as PCT
--  from pizza_sales 
--  where monthname(order_date) = "January"
--  group by pizza_category; 8)



--  select pizza_size ,
--  cast(sum(total_price) as decimal(10,2)) total_sales,
--  cast(sum(total_price) * 100 /(select sum(total_price) from pizza_sales	where quarter(order_date) = 1) as decimal(10,2)) PCT
--  from pizza_sales 
--  where quarter(order_date) = 1
--  group by pizza_size
--  order by PCT desc; 9)



-- select pizza_name,
-- sum(total_price) as total_revenue
-- from pizza_sales
-- group by pizza_name
-- order by total_revenue desc limit 5; 10)

-- select pizza_name,
-- sum(total_price) as total_revenue
-- from pizza_sales
-- group by pizza_name
-- order by total_revenue asc limit 5; 11)


-- select pizza_name,
-- sum(quantity) as total_quantity
-- from pizza_sales
-- group by pizza_name
-- order by total_quantity desc limit 5; 12)


-- select pizza_name,
-- sum(quantity) as total_quantity
-- from pizza_sales
-- group by pizza_name
-- order by total_quantity asc limit 5; 13)


-- select pizza_name,
-- count(distinct order_id) as total_orders
-- from pizza_sales
-- group by pizza_name
-- order by total_orders desc limit 5; 14)


-- select pizza_name,
-- count(distinct order_id) as total_orders
-- from pizza_sales
-- group by pizza_name
-- order by total_orders asc limit 5;  15)


select @@hostname;


