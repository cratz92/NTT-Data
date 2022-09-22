resource "azurerm_log_analytics_workspace" "la_wspace" {
	name = var.log_analytics_wspace_name
	location = var.resource_group_location
	resource_group_name = var.resource_group_name
	sku = var.log_analytics_wspace_sku
	retention_in_days = var.log_analytics_wspace_retention

}

resource "azurerm_application_insights" "ai" {
	name = var.app_insights_name
	location = var.resource_group_location
	resource_group_name = var.resource_group_name
	workspace_id = azurerm_log_analytics_workspace.la_wspace.id
	application_type = var.app_insights_type
}