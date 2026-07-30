-- order by : Sorting Data 1) Ascending (low to high) 2) Descending (high to low)

/* 
Syntax : 
SELECT *
FROM Table
ORDER BY (score) ASC      -- after colum name if we don't specify the mechanism, the default is ASC
*/


-- Retrieve all customers and sort the results by the highest score first
select *
from customers
order by score DESC


-- Retrieve all customers and sort the results by the lowest score first
select *
from customers
order by score ASC


-- nested order by
-- retrieve all customers and sort the results by the country, and then by the highest score
-- because country has written before than score, sorting country has priority
select *
from customers
order by 
    country ASC,
    score DESC

