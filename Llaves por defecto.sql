SELECT dc.name, c.name FROM sys.default_constraints dc
LEFT JOIN sys.objects o ON o.object_id = dc.parent_object_id
LEFT JOIN sys.columns c ON c.column_id = dc.parent_column_id
	AND c.object_id = dc.parent_object_id
WHERE o.name = 'PLA0002DIN1'
	AND c.name = 'DI1_CINFREL'
