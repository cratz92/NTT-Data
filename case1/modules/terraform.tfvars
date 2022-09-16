
resource_group_name     = "nonprd-polaris-ne"
resource_group_location = "North Europe"

storage_account_name             = "nonprdpolarissane2022"
storage_account_tier             = "Standard"
storage_account_replication_type = "LRS"

key_vault_name             = "nonprdpolarisne2022"
key_vault_purge_protection = false
key_vault_sku              = "Standard"
list_secret_permissions = [
  "Backup",
  "Delete",
  "Get",
  "List",
  "Purge",
  "Recover",
  "Set"
]

data_factory_name = "nonprd-polaris-df-northeurope"

sql_server_name           = "nonprd-polaris-sql-northeurope"
sql_server_version        = "12.0"
sql_server_admin_user     = ""
sql_server_admin_password = ""
azuread_admin             = ""

sql_database_name   = "nonprod-polaris-staging-db"
sql_db_collation    = "SQL_Latin1_General_CP1_CI_AS"
sql_db_account_type = "Local"