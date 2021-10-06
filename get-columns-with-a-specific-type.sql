SELECT
	table_catalog,
	table_schema,
	table_name,
	column_name
FROM
	information_schema.columns
WHERE
	table_schema = '<schema>'
	AND udt_name = 'date'
