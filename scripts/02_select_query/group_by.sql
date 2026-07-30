-- group by : Combines rows with the same value
--            Aggregates a column By another column

/* 
Syntax : 
SELECT Country,         -- the value that i want to group the data by
    SUM(score)          -- aggregation
FROM Table
GROUP BY Country
*/


-- find the total score for each country
-- 1) From customers table -> 2) group by country -> 3) through sum function score would be summed and show us integrated value
select country,
    sum(score) as total_score         -- naming manipulated column by using as
from customers
group by country


-- the result of group by determined by the unique values of the grouped columns
select 
    country,
    first_name,
    sum(score) as total
from customers
group by country, first_name


-- find the total score and total number of customers for each country
select 
    country,
    sum(score) as total_score,
    count(id) as total_number               -- aggregating id
from customers
group by country
