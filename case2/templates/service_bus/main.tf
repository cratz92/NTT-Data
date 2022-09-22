resource "azurerm_servicebus_namespace" "sb" {
	name = var.service_bus_name
	location = var.resource_group_location
	resource_group_name = var.resource_group_name
	sku = var.service_bus_sku

	tags = var.service_bus_tags
}