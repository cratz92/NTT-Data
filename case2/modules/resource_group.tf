module "resource_group_module" {
	
	source = "./../templates/resource_group"
	resource_group_name = var.resource_group_name
	resource_group_location = var.resource_group_location
}