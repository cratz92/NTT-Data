provider "azurerm" {
    version = ">=3.0.2" 
    features {}
  }

module "resource_group_module" {
	
	source = "./resource_group"
	resource_group_name = var.resource_group_name
	resource_group_location = var.resource_group_location
}