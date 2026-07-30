-- insert : append data

/* 
syntax :
INSERT INTO table_name (column1, column2, column3)      -- if co columns are specified, SQL expects values for all columns
VALUES (value1, value2, value3),
    (value1, value2, value3)                -- we can inserts multiple values

rule : number of columns and values must match
*/

-- 1) insert data manually

use MyDatabase;
GO

insert into customers --(id, first_name, country, score)        -- we can omit this columns if we put exact values
values 
    (6, 'Anna', 'USA', NULL),
    (7, 'Sam', NULL, 100)
    -- (8, 'Germany', 'Andreas', 200)           -- format is same, so we have to be careful when we put values in table



-- 2) insert data by using another table
-- data from source table to target table

-- copy data from 'customers' table into 'persons'
-- 1) from customers(source) table, we write a query in order to collect the data what i need -> 2) and then insert data into target table 
insert into persons(id, person_name, birth_date, phone)
select 
    id,
    first_name,
    NULL,
    'Unknown'
from customers

