-- Basic Syntax (Select, From)
-- SELECT *
-- FROM Table

USE MyDatabase      -- Select Quelle (from where i want to use)

/* This 
is 
another way to write comment */


-- 1) From customers table -> 2) select all columns

SELECT *
FROM customers


-- 1) From orders table -> 2) select all columns

SELECT *
FROM orders



-- Filtering by selecting specific columns
-- 1) From customers -> 2) Select selected columns
-- Output varies depending on the selected order

SELECT 
    first_name, 
    score,
    country
FROM customers