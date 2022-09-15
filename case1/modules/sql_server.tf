module "sql_server_module" {
	depends_on = [
		module.resource_group_module.out_rg
	]
	
	source = "./../templates/sql_server"
	sql_server_name = var.sql_server_name
	resource_group_name = var.resource_group_name
	resource_group_location = var.resource_group_location
	sql_server_version = var.sql_server_version
	sql_server_admin_user = var.sql_server_admin_user
	sql_server_admin_password = var.sql_server_admin_password
	azuread_admin = var.azuread_admin
}