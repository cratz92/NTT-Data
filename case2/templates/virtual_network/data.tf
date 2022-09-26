data "azurerm_virtual_network" "vnet_info" {
  name = var.dataname_vnet
  resource_group_name = var.dataname
}

data "azurerm_network_security_group" "nsg_info" {
name = var.dataname_nsg
resource_group_name = var.dataname_resource 

}
