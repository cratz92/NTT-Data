module "logic_app_module" {
  depends_on = [
    module.storage_account_module.out_sa
  ]

  source                  = "./../templates/logic_app"
  logic_app_name          = var.logic_app_name
  resource_group_location = var.resource_group_location
  resource_group_name     = module.resource_group_module.rg_name
  app_service_plan_name   = var.app_service_plan_name
  storage_account_name    = var.storage_account_name
  storage_account_key     = module.storage_account_module.access_key
  app_service_plan_os_type   = var.app_service_plan_os_type
  app_service_plan_sku_name   = var.app_service_plan_sku_name

}
