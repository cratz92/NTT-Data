module "data_factory" {
	source = "./../templates/data_factory"
    name = "nonprd-polaris-df-northeurope"
	resource_group_name = var.resource_group_name
	resource_group_location = var.resource_group_location
}