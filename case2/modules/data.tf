data "azurerm_client_config" "current" {}

# data "azurerm_service_plan" "service_plan_info" {
# 	count = var.data_service_plan == true ? 1 : 0
# 	name = var.service_plan_name
# 	resource_group_name = var.resource_group_name
# }

# data "azurerm_storage_account" "storage_account_info" {
# 	name = var.storage_account_name
# 	resource_group_name = var.resource_group_name
# }

data "azurerm_key_vault" "key_vault_info" {
	count = var.data_key_vault == true ? 1 : 0
	name = var.key_vault_name
	resource_group_name = var.resource_group_name
}