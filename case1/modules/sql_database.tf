module "sql_database_module" {
  depends_on = [
    module.sql_server_module.out_sql_server,
    module.resource_group_module.out_rg
  ]

  source              = "./../templates/sql_database"
  sql_database_name   = var.sql_database_name
  sql_db_collation    = var.sql_db_collation
  sql_db_account_type = var.sql_db_account_type
  sql_server_name     = var.sql_server_name
  resource_group_name = var.resource_group_name
}