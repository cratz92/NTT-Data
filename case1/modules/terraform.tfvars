
resource_group_name     = "nonprd-polaris-ne"
resource_group_location = "North Europe"

storage_account_name             = "nonprdpolarissane2022"
storage_account_tier             = "Standard"
storage_account_replication_type = "LRS"
storage_account_container_name   = "config"
storage_container_access_type    = "blob"
storage_account_blob_type        = "Block"

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
sql_server_admin_user     = "Adm1nistr4t@r"
sql_server_admin_password = "1234567890CarlosLeal#"
azuread_admin             = "upsk14198640@iscte-iul.pt"

sql_database_name   = "nonprod-polaris-staging-db"
sql_db_collation    = "SQL_Latin1_General_CP1_CI_AS"
sql_db_account_type = "Local"

logic_app_name          = "nonprod-polaris-la-northeurope"
app_service_plan_name   = "nonprod-polaris-as-plan-ne"
app_service_plan_tier   = "Standard"
app_service_plan_size   = "S1"

linked_name             = "linked_keyvault"
linked_data_factory_id  = var.data_factory_name.id
linked_key_vault_id     = var.key_vault_name.id
secret_sql              = "secret_example"
linked_sql              = "linked_keyvault"