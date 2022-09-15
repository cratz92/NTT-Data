resource "azurerm_mssql_database" "sql_db" {
	name = var.sql_database_name
	server_id = data.azurerm_mssql_server.sql_server_info.id
	collation = var.sql_db_collation
	storage_account_type = var.sql_db_account_type
}