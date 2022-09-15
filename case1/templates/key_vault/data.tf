data "azurerm_client_config" "current" {}

data "azurerm_data_factory" "df_objectid" {
	name = var.data_factory_name
	resource_group_name = var.resource_group_name
}

