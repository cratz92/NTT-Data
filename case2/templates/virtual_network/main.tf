
resource "azurerm_network_security_group" "example" {
  name                = var.sg_name
  location            = var.azurerm_resource_group.rg.location
  resource_group_name = var.azurerm_resource_group.rg.name
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.azurerm_resource_group.rg.location
  resource_group_name = var.azurerm_resource_group.rg.name
  address_space       = ["10.100.8.0/16"]
  dns_servers         = ["8.8.8.8", "8.8.4.4"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.100.8.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.100.9.0/24"
    security_group = var.azurerm_network_security_group.rg.id
  }

  tags = {
    environment = "Production"
  }
}