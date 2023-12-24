use supermarket
Go


--back up alimited values of fields from table
select*from Salles.customers where city='benisuif'
--back up some data  ordered by limited value
SELECT first_name, last_name FROM [Salles].[staff] ORDER BY first_name;
	--back up some data  ordered by limited value
	select*from [Salles].[orders] where order_date='30jun' order by order_id;
--retrive som culomns from table
select first_name,last_name from [Salles].[staff] ;
--retrive all culomns
select*from [Production].[product];
--selct top
SELECT TOP 5 product_name, list_price FROM [Production].[product] ORDER BY  list_price DESC;
	--DISTINCT
	SELECT DISTINCT city FROM [Salles].[store] ORDER BY city
	 --between
	 SELECT product_name, list_price FROM [Production].[product] WHERE list_price BETWEEN 50.99 AND 60.99 ORDER BY list_price;

	 --in
	 SELECT product_name, list_price FROM [Production].[product] WHERE list_price IN (56.67,53.79,26.27,65.76,65.27,26.90) ORDER BY list_price;
	 --and
	 SELECT
    *
FROM
    [Production].[product]
WHERE
    category_id = 33
AND list_price > 12.25
ORDER BY
    list_price DESC;
	--or
	SELECT
    *
FROM
    [Production].[product]
WHERE
    category_id = 33
or list_price > 12.25
ORDER BY
    list_price DESC;
	--add columns to table
	alter table [Salles].[staff] 
	add zip_code varchar;
	insert into [Salles].[staff] (zip_code)
	values ('767'),
	 ('746'),('4455'),('56'),('4665'),('665'),('544'),('6464'),('76'),('547'),('57');
	 --alter drop
	 ALTER TABLE [Salles].[staff]
DROP COLUMN zip_code;
--update
UPDATE [Salles].[customers]
SET first_name = 'jane', City= 'aswan'
WHERE customer_id = 1;
--order by
SELECT * FROM [Production].[product]
ORDER BY list_price;
	 --delete
	 DELETE TOP (5) PERCENT
FROM [Production].[brand];
