-- distinct : Removes Duplicates (repeated values)
--            Each value appears only once

/* 
Syntax : 
SELECT DISTINCT
    (column)
FROM (database)
*/

/*
1) from table customers -> 2) select country column -> 3) apply DISTINCT each value happens only once
SELECT DISTINCT
    country
FROM customers
*/



-- return unique list of all countries
SELECT DISTINCT
    country
FROM customers