resource "azurerm_service_plan" "sp" {
	name = var.service_plan_name
	resource_group_name = var.resource_group_name
	location = var.resource_group_location
	os_type = var.service_plan_os_type
	sku_name = var.service_plan_sku_name
}

resource "azurerm_windows_function_app" "windows_fa" {
	name = var.function_app_name
	resource_group_name = var.resource_group_name
	location = var.resource_group_location

	storage_account_name = var.storage_account_name
	storage_account_access_key = var.storage_account_access_key

	service_plan_id = azurerm_service_plan.sp.id
	
	app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY" = var.windows_fa_app_instrumentation_key
  }

	site_config {}

	connection_string {
		name = "servicebusconnection"
		type = "ServiceBus"
		value = var.service_bus_connection_string
	}

}