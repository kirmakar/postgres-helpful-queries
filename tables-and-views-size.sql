WITH tables_views_size AS (
	SELECT
		table_name,
		pg_table_size(quote_ident(table_name)) AS "size"
	FROM
		information_schema.tables
	WHERE
		table_schema = '<schema>'
	ORDER BY 2 DESC
)
SELECT
	table_name,
	pg_size_pretty("size")
FROM
	tables_views_size