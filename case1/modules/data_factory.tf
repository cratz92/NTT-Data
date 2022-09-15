module "data_factory" {
	source = "./../templates/data_factory"
    data_name = "nonprd-polaris-df-northeurope"
	location_factory = var.resource_group_location
    resource_group_name = var.resource_group_name
}