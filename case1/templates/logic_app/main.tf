resource "azurerm_service_plan" "app_service_plan" {
  name = var.app_service_plan_name
  location = var.resource_group_location
  resource_group_name = var.resource_group_name

  os_type = var.app_service_plan_os_type
  sku_name = var.app_service_plan_sku_name
}

resource "azurerm_logic_app_standard" "logic_app" {
  name                       = var.logic_app_name
  location                   = var.resource_group_location
  resource_group_name        = var.resource_group_name
  app_service_plan_id        = azurerm_service_plan.app_service_plan.id
  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_key
}