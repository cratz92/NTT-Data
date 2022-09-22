module "service_bus_module" {
	
	source = "./../templates/service_bus"
	service_bus_name = var.service_bus_name
	resource_group_location = var.resource_group_location
	resource_group_name = var.resource_group_name
	service_bus_sku = "Premium"
	service_bus_tags = local.service_bus_tags
}