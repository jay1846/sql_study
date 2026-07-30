# 04. Data Manipulation Language (DML)

## Topics covered

### INSERT INTO
- Adds new rows to a table.
- Basic syntax:
```sql
  INSERT INTO table_name (column1, column2, column3)
  VALUES (value1, value2, value3);
```
- Multiple rows can be inserted in a single statement by listing multiple `VALUES` groups separated by commas.
- The column list after the table name defines the target order; values must match that order and data type.
- Re-running an INSERT that includes a value already present in a PRIMARY KEY column causes a duplicate key violation (`Msg 2627`), since primary key values must remain unique. This means INSERT statements are not automatically safe to re-run on the same data.

### INSERT INTO ... SELECT ...
- Inserts rows into a target table using values retrieved from a different source table, instead of hardcoded VALUES.
- Syntax:
```sql
  INSERT INTO target_table (col_a, col_b, col_c)
  SELECT
      source_col_1,
      source_col_2,
      'fixed_value'
  FROM source_table;
```
- Two tables are involved at once:
  - Target table (after `INSERT INTO`): defines the destination column order.
  - Source table (after `FROM`): where the SELECT reads its values from.
- The SELECT column list is matched to the INSERT INTO column list **by position, not by name** — column names don't need to match between source and target, but the order and data types do.
- Literal values (e.g. `NULL`, `'Unknown'`) can be mixed into the SELECT list for columns that don't have a direct source column equivalent.

### UPDATE
- Modifies existing rows in a table.
- Syntax:
```sql
  UPDATE table_name
  SET column1 = value1, column2 = value2
  WHERE condition;
```
- The `WHERE` clause determines which rows are affected. Omitting `WHERE` updates every row in the table — a common and dangerous mistake.
- Multiple columns can be updated in one statement by separating them with commas in the `SET` clause.
- It's good practice to first run the equivalent `SELECT ... WHERE condition` to confirm which rows will be affected before running the `UPDATE`.

### DELETE
- Removes existing rows from a table.
- Syntax:
```sql
  DELETE FROM table_name
  WHERE condition;
```
- Like `UPDATE`, omitting `WHERE` deletes every row in the table (but keeps the table structure itself, unlike `DROP TABLE`).
- Same safety habit applies: check with `SELECT ... WHERE condition` first to confirm the target rows before deleting.
- Difference from `DROP TABLE`: `DELETE` removes row data but keeps the table definition; `DROP TABLE` removes the entire table structure and its data.

### Transactions (BEGIN TRANSACTION / ROLLBACK / COMMIT)
- Used to safely test INSERT/UPDATE/DELETE statements without permanently affecting the table.
- Syntax:
```sql
  BEGIN TRANSACTION;

  -- INSERT / UPDATE / DELETE statements here

  SELECT * FROM table_name;  -- inspect the result as if it were applied

  ROLLBACK;   -- undo everything since BEGIN TRANSACTION
  -- or
  COMMIT;     -- make the changes permanent
```
- `ROLLBACK` reverts the table to its state before `BEGIN TRANSACTION`, which is useful for repeated practice on the same dataset without needing to reset or recreate the table each time.
- `COMMIT` finalizes the changes; once committed, they can no longer be rolled back this way.

## Scripts in this folder
| File | Description |
|---|---|
| `insert.sql` | Basic INSERT practice |
| `insert_select.sql` | INSERT INTO ... SELECT ... practice (persons table populated from customers) |
| `update.sql` | UPDATE practice |
| `delete.sql` | DELETE practice |

## My notes
- INSERT INTO ... SELECT ... involves two tables at once: the target table (where data is inserted) and the source table (where data is read from). Matching is positional, not by column name.
- Re-running an INSERT with an existing primary key value causes a PRIMARY KEY violation (Msg 2627). Repeated practice runs need either a table reset, a transaction rollback, or a practice copy of the table.
- Wrapping practice statements in BEGIN TRANSACTION ... ROLLBACK; allows INSERT/UPDATE/DELETE to be tested freely without permanently changing the table.
- Always double-check the WHERE clause before running UPDATE or DELETE — forgetting it affects the entire table.
