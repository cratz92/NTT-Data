module "storage_account_module" {
  depends_on = [
    module.resource_group_module.out_rg
  ]

  source                           = "./../templates/storage_account"
  storage_account_name             = var.storage_account_name
  resource_group_name              = var.resource_group_name
  resource_group_location          = var.resource_group_location
  storage_account_tier             = var.storage_account_tier
  storage_account_replication_type = var.storage_account_replication_type
  common_tags                      = local.common_tags
  storage_account_container_name   = var.storage_account_container_name
  storage_container_access_type    = var.storage_container_access_type
  storage_account_blob_type        = var.storage_account_blob_type
}