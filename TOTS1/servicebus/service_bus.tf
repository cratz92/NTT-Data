resource "azurerm_servicebus_namespace" "service_bus" {
  name                = var.servicebus.name
  location            = module.resource_group_module.out_resource_group.location
  resource_group_name = module.resource_group_module.out_resource_group.name
  sku                 = ""

  tags = {
    source = "terraform"
  }
}

resource "azurerm_servicebus_queue" "example" {
  name         = "tfex_servicebus_queue"
  namespace_id = azurerm_servicebus_namespace.example.id

  enable_partitioning = true
}