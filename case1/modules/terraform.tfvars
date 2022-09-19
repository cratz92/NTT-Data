
resource_group_name     = "nonprd-polaris-ne1992022"
resource_group_location = "North Europe"

storage_account_name             = "nonprdpolarissane1992022"
storage_account_tier             = "Standard"
storage_account_replication_type = "LRS"
storage_account_container_name   = "config"
storage_container_access_type    = "blob"
storage_account_blob_type        = "Block"

key_vault_name             = "nonprdpolarisne-1992022"
# key_vault_sku              = "Premium"
# list_secret_permissions = [
#   "Backup",
#   "Delete",
#   "Get",
#   "List",
#   "Purge",
#   "Recover",
#   "Set",
# ]
# list_certificate_permissions = [
#   "Create",
#   "Delete",
#   "DeleteIssuers",
#   "Get",
#   "GetIssuers",
#   "Import",
#   "List",
#   "ListIssuers",
#   "ManageContacts",
#   "ManageIssuers",
#   "Purge",
#   "SetIssuers",
#   "Update",
# ]

data_factory_name = "nonprd-polaris-df-northeurope1992022"

sql_server_name           = "nonprd-polaris-sql-northeurope1992022"
sql_server_version        = "12.0"
sql_server_admin_user     = "Adm1nistr4t@r"
sql_server_admin_password = "1234567890CarlosLeal#"
azuread_admin             = "upsk14198640@iscte-iul.pt"

sql_database_name   = "nonprod-polaris-staging-db1992022"
sql_db_collation    = "SQL_Latin1_General_CP1_CI_AS"
sql_db_account_type = "Local"


logic_app_name          = "nonprod-polaris-la-northeurope1992022"
app_service_plan_name   = "nonprod-polaris-as-plan-ne1992022"
app_service_plan_os_type   = "Windows"
app_service_plan_sku_name   = "WS1"

linked_name             = "linked_keyvault1992022"
secret_sql              = "secret_example"
linked_sql              = "linked_sql1992022"
