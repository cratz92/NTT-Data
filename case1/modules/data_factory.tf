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
<<<<<<< HEAD
=======
  linked_data_factory_id  = var.linked_data_factory_id
  linked_key_vault_id     = var.linked_key_vault_id
>>>>>>> b7fd99eb438e54d8d393b2d3ca5dbebccf622cf8
  secret_sql              = var.secret_sql
  linked_sql              = var.linked_sql
}