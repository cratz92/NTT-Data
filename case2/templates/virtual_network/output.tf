output "out_vnet" {
	value = {}

#	depends_on = [
#		azurerm_resource_group.rg
#	]
}

output "subnet_id" {
	value = azurerm_virtual_network.vnet.subnet
}

output "nsg_info" {
	value = data.azurerm_network_security_group.nsg_info
  
}

output "vnet_info" {
	value = data.azurerm_virtual_network.vnet_info
  
}