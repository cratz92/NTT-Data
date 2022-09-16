module "logic_app_module" {
  depends_on = [
    module.storage_account_module.out_sa
  ]

  source                  = "./../templates/logic_app"
  logic_app_name          = var.logic_app_name
  resource_group_location = var.resource_group_location
  resource_group_name     = var.resource_group_name
  app_service_plan_name   = var.app_service_plan_name
  storage_account_name    = var.storage_account_name
  app_service_plan_tier   = var.app_service_plan_tier
  app_service_plan_size   = var.app_service_plan_size
}
