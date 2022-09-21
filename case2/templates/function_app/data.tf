data "azurerm_storage_account" "storage_account_info" {
	name = var.storage_account_name
	resource_group_name = var.resource_group_name
}