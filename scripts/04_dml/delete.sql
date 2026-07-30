-- delete : remove rows which is already existing in table

/*
syntax:
DELETE FROM table_name
WHERE <condition>

note : Always use where to avoid deleting all rows unintentionally
*/


-- delete all customers with an ID greater than 5
delete from customers
where id > 5


/* 
it's always good check before we decide to delete
select *
from customers
where id > 5
*/


-- delete all data from table persons
-- method 1) if the table is really big then it might take a bit long time to delete
delete from persons

-- method 2) skip all long stories, which happens in delete. it's fast
truncate table persons