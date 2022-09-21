module "storage_account_module" {
	depends_on = [
		module.resource_group_module.rg
	]
	
	source = "./../templates/storage_account"
	storage_account_name = var.storage_account_name
	resource_group_name = var.resource_group_name
	resource_group_location = var.resource_group_location
	storage_account_tier = "Standard"
	storage_account_replication_type = "LRS"

	common_tags = local.common_tags
}