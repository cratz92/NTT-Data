data "azurerm_resource_group" "data_resource" {
    name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
}