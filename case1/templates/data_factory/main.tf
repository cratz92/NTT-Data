resource "azurerm_data_factory" "DV" {
  name                = var.data_name
  location            = var.location_factory
  resource_group_name = var.resource_group_name
  
}