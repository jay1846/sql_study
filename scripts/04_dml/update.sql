-- update : we change the content of already existing rows

/*
syntax : 
UPDATE table_name
SET column1 = value1,
    column2 = value2
WHERE <condition>

NOTE : always use WHERE to avoid updating all rows unintentionally
*/


-- change the score of customer with id 6 to 0
update customers
set score = 0
where id = 6


-- change the score of customer with id 10 to 0 and update the country to 'UK'
update customers
set 
    score = 0,
    country = 'UK'
where id = 10


-- update all customers with a NULL score by setting their score to 0
update customers
set score = 0
where score is NULL
