output "out_vnet" {
	value = {}

#	depends_on = [
#		azurerm_resource_group.rg
#	]
}

output "subnet_ids" {
	value = data.azurerm_virtual_network.vnet_info.subnets.*.ids
}

output "nsg_info" {
	value = data.azurerm_network_security_group.nsg_info.name
  
}

output "vnet_info" {
	value = data.azurerm_virtual_network.vnet_info.name
  
}