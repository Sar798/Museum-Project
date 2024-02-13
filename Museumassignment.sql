Create Database Museum;

use Museum;

create table met(
ID INT PRIMARY KEY,
Department varchar(100),
Category varchar(100),
Title varchar(100),
Artist varchar(100),
Date varchar(100),
Medium varchar(100),
Country varchar(100));

select * from met;

-- 1. Select the top 10 rows in the met table.
select * from met limit 10;

-- 2. How many pieces are in the American Metropolitan Art collection? [count(*)]
select Department , count(Title) as piece_count from met
group by Department;

-- 3. Count the number of pieces where the category includes ‘celery’.
select count(Category) from met
where Category like('celery%');

-- 4. Find the title and medium of the oldest piece(s) in the collection.
select Title, medium, Date from met
order by Date 
limit 1;

-- 5. Find the top 10 countries with the most pieces in the collection.
select Country , count(Title) as pieces from met
group by Country
order by pieces desc
limit 10 ; 

-- 6. Find the categories which have more than 100 pieces.
select Category, count(Title) as pieces from met
group by Category
having pieces > 100;

-- 7. Count the number of pieces where the medium contains ‘gold’ or ‘silver’ and sort in descending order.
select medium , count(Title) as pieces_count from met
where medium in ('gold') or medium in ('silver')
group by medium
order by pieces_count desc ;
