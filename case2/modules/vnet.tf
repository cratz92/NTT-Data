module "vnet" {
	depends_on = [
		module.resource_group_module.out_rg
	]
    source = "./../templates/virtual_network"
    #nsg vars
    sg_name = "nsg_01"
    resource_group_location = var.resource_group_location
    resource_group_name = var.resource_group_name

    #vnet_vars
    vnet_name = var.resource_group_name
    address = var.address
    dns = var.dns
    #subnet_vars
    sub_name = var.subnetname
    subnet_range = var.subnet_range


}
