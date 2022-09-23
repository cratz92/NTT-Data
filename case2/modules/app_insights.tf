module "application_insights_module" {
	depends_on = [
		module.resource_group_module.out_rg
	]
	
	source = "./../templates/app_insights"
	log_analytics_wspace_name = var.log_analytics_wspace_name
	resource_group_name = var.resource_group_name
	resource_group_location = var.resource_group_location
	log_analytics_wspace_sku = "Free"
	log_analytics_wspace_retention = 7
	app_insights_name = var.app_insights_name
	app_insights_type = "other"
}