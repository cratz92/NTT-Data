output "out_sql_db" {
	value = {}

	depends_on = [
		azurerm_mssql_database.sql_db
	]
}