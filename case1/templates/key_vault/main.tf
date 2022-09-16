
resource "azurerm_key_vault" "kv" {
  name = var.key_vault_name
	location = var.resource_group_location
	resource_group_name = var.resource_group_name
	tenant_id = data.azurerm_client_config.current.tenant_id
	purge_protection_enabled = var.key_vault_purge_protection
	sku_name = var.key_vault_sku

	access_policy {

		tenant_id = data.azurerm_client_config.current.tenant_id
		object_id = data.azurerm_client_config.current.object_id
		secret_permissions = var.list_secret_permissions
	} 
}