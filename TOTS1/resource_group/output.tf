output "out_rg" {
	value = {}

	depends_on = [
		azurerm_resource_group.rg
	]

}

output "out_resource_group" {
	value = data.azurerm_resource_group.data_resource
}