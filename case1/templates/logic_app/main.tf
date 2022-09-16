resource "azurerm_app_service_plan" "app_service_plan" {
  name = var.app_service_plan_name
  location = var.resource_group_location
  resource_group_name = var.resource_group_name

  sku {
    tier = var.app_service_plan_tier
    size = var.app_service_plan_size
  }
}

resource "azurerm_logic_app_standard" "logic_app" {
  name                       = var.logic_app_name
  location                   = var.resource_group_location
  resource_group_name        = var.resource_group_name
  app_service_plan_id        = azurerm_app_service_plan.app_service_plan.id
  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_key
}