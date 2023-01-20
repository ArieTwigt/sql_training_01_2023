
# SQL Training

## Contents

* [SQL Basic keywords and operators](#Basics"):

    * [WHERE](#WHERE)
    * [ORDER](#ORDER)
    * [BETWEEN](#BETWEEN)
    * [IN](#IN)
    * [LIKE](#LIKE)
    * [COUNT](#COUNT)
    * [DISTINCT](#DISTINCT)


## Basics


### WHERE

The WHERE clause is used in SQL to filter the results of a query based on specific conditions. It is used to filter rows from a table based on a specified condition.

Syntax:

```
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

### ORDER


The ORDER BY clause is used in SQL to sort the results of a query in ascending or descending order based on one or more columns.

Syntax:

```
SELECT column1, column2, ...
FROM table_name
ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...;
```

### BETWEEN


The BETWEEN operator is used in SQL to filter the results of a query based on a range of values. It is used to filter rows from a table based on a range of values in a specified column.

Syntax:

```
SELECT column1, column2, ...
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```

### IN

The IN operator is used in SQL to filter the results of a query based on a list of values. It is used to filter rows from a table based on a specified list of values in a specified column.

Syntax:

```
SELECT column1, column2, ...
FROM table_name
WHERE column_name IN (value1, value2, ...);
```

### LIKE

The LIKE operator is used in SQL to filter the results of a query based on a pattern. It is used to filter rows from a table based on a specified pattern in a specified column. The % and _ wildcard characters can be used in the pattern.


Syntax:

```
SELECT column1, column2, ...
FROM table_name
WHERE column_name LIKE pattern;
```

### COUNT

The COUNT function is used in SQL to count the number of rows in a table that match a specified condition.

Syntax:

```
SELECT COUNT(*)
FROM table_name
WHERE condition;
```

### DISTINCT

The DISTINCT keyword is used in SQL to return only unique values in the result set of a query. It eliminates duplicates from the result set.

```
SELECT DISTINCT column1, column2, ...
FROM table_name;
```