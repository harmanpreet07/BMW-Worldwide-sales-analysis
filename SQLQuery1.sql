use bmwSales

select * from BMWsales 




select count(*)
from BMWsales as total


select count(distinct model), count(distinct year), count(distinct region)
from BMWsales


select min(year), max(year)
from BMWsales


select sum(sales_volume) as cars_sold
from BMWsales


select region, sum(sales_volume)as cars_sold
from BMWsales
group by region


select top 10 year, sum(sales_volume) as highest_sales
from BMWsales
group by year
order by highest_sales desc

select year,region, avg(sales_volume) as avg_sales 
from BMWsales
group by region, year
order by region, year



select top 1 model, sum(sales_volume) as total_sales
from BMWsales
group by model



select model, sum(sales_volume) as total_sales,ROUND(
        100.0 * SUM(sales_volume) / (SELECT SUM(sales_volume) FROM BMWsales),
        2
    ) AS Sales_Percentage
from BMWsales
group by model



select top 5 model as models, sum(sales_volume) as total_sales, region as regions
from BMWsales
group by region, model
order by region desc


select sum(sales_volume) as total, round(sum(sales_volume)/ (select count(fuel_type)
from BMWsales 
where fuel_type = 'electric'),2) as ev_percent
from BMWsales


