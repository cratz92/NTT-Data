resource "azurerm_mssql_server" "sql_server" {
	name = var.sql_server_name
	resource_group_name = var.resource_group_name
	location = var.resource_group_location
	version = var.sql_server_version

	administrator_login = var.sql_server_admin_user
	administrator_login_password = var.sql_server_admin_password

	azuread_administrator {
		login_username = var.azuread_admin
		object_id = data.azurerm_client_config.current.object_id
	}

	# verify connection to azure services
}