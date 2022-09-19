module "data_factory_module" {
  depends_on = [
    module.resource_group_module.out_rg,
    module.key_vault_module.out_kv
  ]

  source              = "./../templates/data_factory"
  data_name           = var.data_factory_name
  location_factory    = var.resource_group_location
  resource_group_name = var.resource_group_name
  linked_name             = var.linked_name
  secret_sql              = var.secret_sql
  linked_sql              = var.linked_sql
  key_vault_name      = var.key_vault_name
}