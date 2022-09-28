resource "azurerm_servicebus_namespace" "service_bus"  {

  name                = var.servicebus_name
  location            = module.resource_group_module.out_resource_group.location
  resource_group_name = module.resource_group_module.out_resource_group.name
  sku                 = ""
  client_name         = var.client_name
  environment         = var.environment
  stack               = var.stack

  servicebus_namespaces_queues = {

    servicebus1 = {
      queues = {
        queue1 = {}
        queue2 = {}
      }
    }
  }
}