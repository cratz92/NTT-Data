data "azurerm_storage_account" "storage_account_info" {
	name = var.storage_account_name
	resource_group_name = var.resource_group_name
}

data "azurerm_function_app_host_keys" "fa_keys" {
	name = var.function_app_name
	resource_group_name = var.resource_group_name

	depends_on = [
		azurerm_windows_function_app.windows_fa
	]
}

data "azurerm_servicebus_namespace" "sb_info" {
	name = var.service_bus_name
	resource_group_name = var.resource_group_name
}

data "azurerm_application_insights" "ai_info" {
  name                = var.app_insights_name
  resource_group_name = var.resource_group_name
}
