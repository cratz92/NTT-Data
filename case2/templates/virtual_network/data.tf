data "azurerm_virtual_network" "vnet_info" { #resource o qual deseja
  name = var.dataname_vnet # nome do campo que busca = valor do campo que busca
  resource_group_name = var.dataname
}

data "azurerm_network_security_group" "nsg_info" {
name = var.dataname_nsg
resource_group_name = var.dataname_resource 

}
