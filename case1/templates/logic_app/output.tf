output "out_logic_app" {
	value = {}

	depends_on = [
		azurerm_logic_app_standard.logic_app
	]
}
