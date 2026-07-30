# 02. SELECT Query

## Topics covered
- SELECT and FROM: retrieving columns from a table
- WHERE: filtering rows
- ORDER BY: sorting results
- GROUP BY and aggregate functions (e.g. SUM): grouping rows by the unique combination of the grouped columns
- HAVING: filtering after grouping
- DISTINCT and TOP: basic result shaping
- SQL's logical execution order (the order clauses are *written* in a query is not the order they are *executed* in) — understanding this order explains why certain clauses behave the way they do, and helps in reasoning through how to write a query logically


## My notes
- GROUP BY does not guarantee any particular row order in the result — the order is determined internally by SQL Server (hashing/sorting during query optimization), not by the order in the source table. Use ORDER BY explicitly whenever a specific order matters.
- Understanding the logical execution order of a SQL query (roughly: FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY) makes it much easier to reason about why a query is structured the way it is, rather than just memorizing syntax.
