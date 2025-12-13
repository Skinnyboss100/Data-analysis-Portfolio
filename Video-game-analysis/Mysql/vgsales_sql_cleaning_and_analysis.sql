select *
from vgsales.vgsales;

# To inspect the year column before changing it to type'int'
select DISTINCT year
from vgsales.vgsales;

#let me change the 'N/A' to 0 first so it would be easir to change the year column to type int

update vgsales.vgsales
set year = 0
where year ='N/A' or year = '';

# I will convert the year column to type 'int' 

Alter table vgsales.vgsales
modify column year int;

select year,count(*)
from vgsales.vgsales
group by year;


# Since there are 271 records of the 0 in the year column the best thing to do is to replace the zeroes with NULL

update vgsales.vgsales
set year = NULL
where year = 0;


#NOW TO EDA

# To get the total sales per year so i can see the increase and decline over the years
# I will firstly order by the best selling years and then the years

select year,sum(global_sales) as total_sales
from vgsales.vgsales
GROUP BY year
order by total_sales Desc;

select year,sum(global_sales) as total_sales
from vgsales.vgsales
GROUP BY year
order by year;

#Next is to see the top 10 blockbuster games 

select *
from vgsales.vgsales;

select name,platform,year,global_sales
from vgsales.vgsales
ORDER BY Global_Sales desc
limit 10;

#To get the best performing genres over the years

select genre,sum(global_sales) as total_sales, count(*) as titles
from vgsales.vgsales
group by genre
order by total_sales Desc;

# To get the top platforms by market share

select platform, sum(global_sales) as total_sales, sum(global_sales)/(select sum(global_sales) from vgsales.vgsales) as market_share
from vgsales.vgsales
group by platform
order by total_sales desc;

#Next is the top 20 publishers
select publisher, sum(global_sales) as total_sales, count(*) as titles
from vgsales.vgsales
group by Publisher
order by total_sales desc
limit 20;

#Now for genres that have great per-title return

select genre, avg(global_sales) as avg_sales
from vgsales.vgsales
GROUP BY genre
order by avg_sales desc;

# Top 30 publishers per year sales

select publisher, year, sum(global_sales) as total_sales
from vgsales.vgsales
GROUP BY publisher, year
order by total_sales desc
limit 30;

# checking out the regional blockbusters in North America(na), Japan(jp), and Eu

select name,platform,na_sales
from vgsales.vgsales
order by NA_Sales desc
limit 5;

select name,platform,JP_Sales
from vgsales.vgsales
order by JP_Sales desc
limit 5;

select name,platform,EU_Sales
from vgsales.vgsales
order by EU_Sales desc
limit 5;

# Total sales made per year

select year,sum(global_sales) as total_sales
from vgsales.vgsales
GROUP BY year
order by total_sales desc;

