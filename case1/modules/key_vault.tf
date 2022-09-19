# module "key_vault_module" {
#   depends_on = [
#     module.resource_group_module.out_rg
#   ]

#   source                     = "./../templates/key_vault"
#   key_vault_name             = var.key_vault_name
#   resource_group_location    = var.resource_group_location
#   resource_group_name        = var.resource_group_name
#   key_vault_sku              = var.key_vault_sku
#   list_secret_permissions    = var.list_secret_permissions
#   list_certificate_permissions = var.list_certificate_permissions
# }