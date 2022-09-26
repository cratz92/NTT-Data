data "azurerm_key_vault" "kv_info" {
  name = var.key_vault_name
  resource_group_name = var.resource_group_name
}