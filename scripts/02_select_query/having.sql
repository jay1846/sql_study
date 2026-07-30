-- filters Data after Aggregation
-- "Having" can be used only with "Group By"


-- 1) from table customers -> 2) we are grouping country -> 3) we write condition by using "having" and it will be applied to manipulated table (after group by)
-- with group by we are using country column, where we are grouping the data by its value
-- but with having we are using aggregated column 
select
    country,
    sum(score)
from customers
group by country
having sum(score) > 800


-- where & having
-- it's about timing. 
-- 1) we use where if we wants to filter before aggregating
-- 2) but if we want to use filter after aggregating then we use having



-- find the average score for each country considering only customers with a score not equal to 0 and return only those countries with an average score greater than 430

select
    country,
    AVG(score) as average
from customers
where score != 0
group by country
having AVG(score) > 430