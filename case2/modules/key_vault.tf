module "key_vault_module" {
	depends_on = [
		module.resource_group_module.out_rg
	]
	
	source = "./../templates/key_vault"
	key_vault_name = var.key_vault_name
	resource_group_location = var.resource_group_location
	resource_group_name = var.resource_group_name
	key_vault_disk_encryption = true
	key_vault_tenant_id = data.azurerm_client_config.current.tenant_id
	key_vault_retention = 7
	key_vault_purge_protection = false
	key_vault_sku = "standard"

	kv_acl_bypass = "AzureServices"
	kv_acl_default_action = "Deny"
	kv_acl_subnet_ids = module.vnet.subnet_ids

	kv_secret_name = "function_app_host_key"
	kv_secret_value = module.function_app_module.fa_host_key
}