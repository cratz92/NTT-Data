module "function_app_module" {
	depends_on = [
		module.storage_account_module.out_sa
	]
	
	source = "./../templates/function_app"
	service_plan_name = var.service_plan_name
	resource_group_name = var.resource_group_name
	resource_group_location = var.resource_group_location
	service_plan_os_type = "Windows"
	service_plan_sku_name = "F1"
	#function_app_service_plan_id = data.azurerm_service_plan.service_plan_info.id
	function_app_name = var.function_app_name
	storage_account_name = var.storage_account_name
	#storage_account_access_key = data.azurerm_storage_account.storage_account_info.primary_access_key

	windows_fa_app_key = module.application_insights_module.instrumentation_key
}