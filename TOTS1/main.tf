provider "azurerm" {
    version = ">=3.0.2" 
    features {}
  }

module "resource_group_module" {
	source = "./resource_group"
	
    resource_group_name = var.resource_group_name
	resource_group_location = var.resource_group_location
}

module "servicebus" {
  source  = "./servicebus"

  location       = module.azure_region.location
  location_short = module.azure_region.location_short
  client_name    = var.client_name
  environment    = var.environment
  stack          = var.stack

  resource_group_name = module.rg.resource_group_name

  servicebus_namespaces_queues = {

    servicebus1 = {
      queues = {
        queue1 = {}
        queue2 = {}
      }
    }
  }
}
