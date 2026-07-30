-- Where : Filtering Data based on Condition

/* 
Syntax : 
SELECT *
FROM Table
WHERE Condition
*/


-- Retrieve customers with a score not equal to 0
SELECT *
FROM customers
WHERE score != 0


-- Retrieve customers from Germany
Select
    first_name,
    country
FROM customers
where country = 'germany'       -- values which include strings, we have to write with quotes

