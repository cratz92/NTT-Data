module "storage_account_module" {
	depends_on = [
		module.resource_group_module.out_rg
	]
	
	source = "./../templates/storage_account"
	storage_account_name = var.storage_account_name
	resource_group_name = var.resource_group_name
	resource_group_location = var.resource_group_location
	storage_account_tier = "Standard"
	storage_account_replication_type = "LRS"

	common_tags = local.common_tags

	storage_container_name = var.storage_container_name
	storage_container_access_type = "blob"
	storage_share_name = var.storage_share_name
	storage_share_quota = "50"
}