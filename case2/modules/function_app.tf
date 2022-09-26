module "function_app_module" {
	depends_on = [
		module.storage_account_module.out_sa
	]
	
	source = "./../templates/function_app"
	app_insights_name = var.app_insights_name
	service_bus_name = var.service_bus_name
	service_plan_name = var.service_plan_name
	resource_group_name = var.resource_group_name
	resource_group_location = var.resource_group_location
	service_plan_os_type = "Windows"
	service_plan_sku_name = "F1"
	#function_app_service_plan_id = data.azurerm_service_plan.service_plan_info.id
	function_app_name = var.function_app_name
	storage_account_name = var.storage_account_name
	storage_account_access_key = module.storage_account_module.sa_data.primary_access_key

	windows_fa_app_instrumentation_key = module.application_insights_module.ai_data.instrumentation_key
	#windows_fa_app_instrumentation_key = module.application_insights_module.instrumentation_key

	service_bus_connection_string = module.service_bus_module.sb_data.default_primary_connection_string
}