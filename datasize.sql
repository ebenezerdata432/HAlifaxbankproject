--get the size of the database

SELECT pg_size_pretty(pg_database_size('Halifaxbank'))
AS db_size;

--get the size of the database per table
SELECT 
	table_name,
pg_size_pretty(pg_total_relation_size(quote_ident(table_name)))
AS size
FROM information_schema.tables
WHERE table_schema = 'public'
ORDER BY
pg_total_relation_size(quote_ident(table_name)) DESC;