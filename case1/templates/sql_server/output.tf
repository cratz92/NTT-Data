output "out_sql_server" {
	value = {}

	depends_on = [
		azurerm_mssql_server.sql_server
	]
}