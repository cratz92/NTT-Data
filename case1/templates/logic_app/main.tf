resource "azurerm_logic_app_standard" "logic_app" {
  name                       = var.name
  location                   = var.location_la
  resource_group_name        = var.resource_group_name
  app_service_plan_id        = var.app_service_plan
  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_key
}