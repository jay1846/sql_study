# 03. Data Definition Language (DDL)

## Topics covered
- CREATE TABLE: defining a table's columns, data types, and constraints
- PRIMARY KEY constraint: enforces that a column's values are unique and never NULL, so each row can be uniquely identified
- ALTER TABLE: modifying an existing table's structure
  - ADD: adding a new column
  - DROP COLUMN: removing an existing column
- DROP TABLE IF EXISTS: safely removing a table before recreating it, so a script can be re-run without errors

## My notes
- DDL commands (CREATE, ALTER, DROP) change the actual structure of the database the moment they are successfully executed — this change is permanent and persists independently of the script file itself. Re-running a script does not "reset" anything on its own.
- Because of this, re-running a `CREATE TABLE` on a table that already exists causes `Msg 2714: There is already an object named '...' in the database`. The fix is `DROP TABLE IF EXISTS <table>` before `CREATE TABLE`, so the script can be safely re-run any number of times.
- The same logic applies to `ALTER TABLE`: re-running `ADD email` after it already succeeded once fails because the column already exists; re-running `DROP COLUMN phone` after it's already been dropped fails because the column no longer exists. Resetting the table with `DROP TABLE IF EXISTS` + `CREATE TABLE` before re-running ALTER statements avoids this during practice.
- `Msg 2705: Column names in each table must be unique` happens when the same column name is accidentally defined twice in one `CREATE TABLE` statement.
- In real production databases, tables aren't dropped and recreated freely since that destroys existing data; conditional checks (e.g. checking if a column already exists before altering) are used instead. For practice purposes, the drop-and-recreate pattern is the simpler and expected approach.
