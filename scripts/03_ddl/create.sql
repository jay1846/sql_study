-- create : with this command we can create table in our database

DROP TABLE IF EXISTS persons;
GO

-- create a new table called persons with columns : id, person_name, birth_date and phone
-- name of column, data type, constraint
create table persons(
    id INT NOT NULL,
    person_name varchar(50) NOT NULL,
    birth_date date,
    phone varchar(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY key(id)           --PRIMARY KEY = A rule stating, ‘Each row will be uniquely identified by the value in this column.’ Values must not be duplicated, nor may they be left blank.
)
GO