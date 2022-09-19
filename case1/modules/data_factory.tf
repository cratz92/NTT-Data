module "data_factory_module" {
  depends_on = [
    module.resource_group_module.out_rg
  ]

  source              = "./../templates/data_factory"
  data_name           = var.data_factory_name
  location_factory    = var.resource_group_location
  resource_group_name = var.resource_group_name
  linked_name             = var.linked_name
  linked_data_factory_id  = var.linked_data_factory_id
  linked_key_vault_id     = var.linked_key_vault_id
  secret_sql              = var.secret_sql
  linked_sql              = var.linked_sql
}