output "out_vnet" {
	value = {}

#	depends_on = [
#		azurerm_resource_group.rg
#	]
}

output "subnet_id" {
	value = azurerm_virtual_network.vnet.subnet
}