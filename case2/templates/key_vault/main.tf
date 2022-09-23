resource "azurerm_key_vault" "kv" {
  name                        = var.key_vault_name
  location                    = var.resource_group_location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = var.key_vault_disk_encryption
	tenant_id                   = var.key_vault_tenant_id
  soft_delete_retention_days  = var.key_vault_retention
	purge_protection_enabled    = var.key_vault_purge_protection

  sku_name = var.key_vault_sku

	network_acls {
		bypass = var.kv_acl_bypass
    default_action = var.kv_acl_default_action
    virtual_network_subnet_ids = var.kv_acl_subnet_ids
	}
}

resource "azurerm_key_vault_secret" "example" {
  name         = var.kv_secret_name
  value        = var.kv_secret_value
  key_vault_id = azurerm_key_vault.kv.id
}