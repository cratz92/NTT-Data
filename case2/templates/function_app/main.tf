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
	
	#storage_account_access_key = var.storage_account_access_key
	storage_account_access_key = data.azurerm_storage_account.storage_account_info.primary_access_key
	
	#service_plan_id = var.function_app_service_plan_id
	service_plan_id = azurerm_service_plan.sp.id
	
	site_config {}
}