resource "azurerm_key_vault" "kv" {
	name = var.key_vault_name
	location = var.resource_group_location
	resource_group_name = var.resource_group_name
	tenant_id = var.key_vault_tenant_id
	sku_name = var.key_vault_sku_name

	# access_policy {
	# 	tenant_id = var.kv_access_policy_tenant_id
	# 	object_id = var.kv_access_policy_object_id

	# 	key_permissions = var.kv_key_permissions
	# 	secret_permissions = var.kv_secret_permissions
	# 	storage_permissions = var.kv_storage_permissions
	# }

	# network_acls {
	# 	bypass = {}
	# 	default_action = {}
	# 	virtual_network_subnet_ids = {}
	# }
}
