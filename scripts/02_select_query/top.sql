-- TOP (limit) : Restrict the Number of Rows returned

/*
1) From Table -> 2) select all the columns (*) -> 3) show top 3 rows from database and all other rows will be excluded 
Syntax:
SELCT TOP 3
    *
FROM Table
*/


-- retrieve only three customers
SELECT Top 3 *
FROM customers


-- Retrieve the top 3 customers with the highest scores
select top 3 *
from customers
ORDER BY score DESC


-- Retrieve the lowest 2 customers based on the score
select top 2 *
from customers
order by score ASC


-- get the two most recent orders
select top 2 *
from orders
order by order_date DESC