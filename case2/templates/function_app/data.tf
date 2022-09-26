data "azurerm_windows_function_app" "windows_fa_info" {
	name = azurerm_windows_function_app.windows_fa.name
	resource_group_name = azurerm_windows_function_app.windows_fa.resource_group_name
}

data "azurerm_function_app_host_keys" "fa_keys" {
	name = var.function_app_name
	resource_group_name = var.resource_group_name

	depends_on = [
		azurerm_windows_function_app.windows_fa
	]
}

