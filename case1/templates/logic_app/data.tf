data "azurerm_storage_account" "sa_info" {
	name = var.storage_account_name
	resource_group_name = var.resource_group_name
}
