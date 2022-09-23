resource "azurerm_storage_account" "sa" {
	name = var.storage_account_name
	resource_group_name = var.resource_group_name
	location = var.resource_group_location
	account_tier = var.storage_account_tier
	account_replication_type = var.storage_account_replication_type

	tags = var.common_tags
}

resource "azurerm_storage_container" "sa_container" {
	name = var.storage_container_name
	storage_account_name = var.storage_account_name
	container_access_type = var.storage_container_access_type
}

resource "azurerm_storage_share" "sa_share" {
	name = var.storage_share_name
	storage_account_name = var.storage_account_name
	quota = var.storage_share_quota

}