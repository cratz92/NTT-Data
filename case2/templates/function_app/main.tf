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

	service_plan_id = azurerm_service_plan.sp.id
	
	site_config {}
}