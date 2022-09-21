
resource "azurerm_network_security_group" "nsg" {
  name                = var.sg_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  address_space       = var.address
  dns_servers         = var.dns

  subnet {
    name           = var.sub_name
    address_prefix = var.subnet_range
    security_group = azurerm_network_security_group.nsg.id
  }

  tags = {
    environment = "Production"
  }
}