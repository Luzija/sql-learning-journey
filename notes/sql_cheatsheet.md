# T-SQL Quick Reference Cheatsheet

## Clause Order (SELECT Statement)
```sql
SELECT   [columns]
FROM     [table]
JOIN     [other_table] ON [condition]
WHERE    [row filter]
GROUP BY [columns]
HAVING   [aggregate filter]
ORDER BY [columns] ASC|DESC
```
> ⚠️ You must follow this order — SQL evaluates clauses in a specific sequence.

---

## Common Data Types (T-SQL)

| Type | Use Case |
|---|---|
| `INT` | Whole numbers |
| `DECIMAL(p,s)` | Exact decimals (money, measurements) |
| `FLOAT` | Approximate decimals |
| `VARCHAR(n)` | Variable-length text |
| `NVARCHAR(n)` | Unicode text (supports all languages) |
| `CHAR(n)` | Fixed-length text |
| `DATE` | Date only (YYYY-MM-DD) |
| `DATETIME` | Date + time |
| `BIT` | Boolean (0 or 1) |
| `UNIQUEIDENTIFIER` | GUID/UUID |

---

## NULL Handling

```sql
-- Check for NULL (never use = NULL)
WHERE column IS NULL
WHERE column IS NOT NULL

-- Replace NULL with a default
SELECT ISNULL(column, 'default_value')
SELECT COALESCE(col1, col2, 'fallback')  -- returns first non-NULL
```

---

## String Functions

```sql
LEN(string)                  -- length of string
UPPER(string)                -- uppercase
LOWER(string)                -- lowercase
TRIM(string)                 -- remove leading/trailing spaces
SUBSTRING(str, start, len)   -- extract part of string
REPLACE(str, 'old', 'new')   -- find and replace
CONCAT(str1, str2)           -- combine strings
```

---

## Date Functions

```sql
GETDATE()                    -- current date and time
GETUTCDATE()                 -- current UTC time
DATEADD(day, 7, date_col)    -- add 7 days
DATEDIFF(day, start, end)    -- days between two dates
FORMAT(date_col, 'yyyy-MM-dd')  -- format date as string
YEAR(date_col)               -- extract year
MONTH(date_col)              -- extract month
```

---

## Useful Shortcuts (SSMS)

| Shortcut | Action |
|---|---|
| `F5` | Execute query |
| `Ctrl + K, C` | Comment selected lines |
| `Ctrl + K, U` | Uncomment selected lines |
| `Ctrl + Shift + U` | Uppercase selection |
| `Ctrl + L` | Display estimated execution plan |
| `Alt + F1` | Quick object info (select table name first) |
