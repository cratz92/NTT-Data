module "data_factory_module" {
  depends_on = [
    module.resource_group_module.out_rg
  ]

  source              = "./../templates/data_factory"
  data_name           = var.data_factory_name
  location_factory    = var.resource_group_location
  resource_group_name = var.resource_group_name
}