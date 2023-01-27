-- Microsoft SQL Server
USE Cars

BULK INSERT registered_cars 
FROM 'C:/arie/project/my_sql_project/data/my_data.csv'
WITH
(
  FIELDTERMINATOR = ';',
  ROWTERMINATOR = '\n',
  ROWS_PER_BATCH = 10000, 
  FIRSTROW = 2,
  TABLOCK
)

GO