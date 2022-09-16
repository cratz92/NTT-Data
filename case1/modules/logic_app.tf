module "logic_app" {
  depends_on = [
    module.storage_account_module.out_sa
  ]

  source               = "./../templates/logic_app"
  name                 = var.name
  location_la          = var.location_la
  resource_group_name  = var.resource_group_name
  app_service_plan     = var.app_service_plan_id
  storage_account_name = var.storage_account_name
  storage_key          = var.storage_account_access_key
}
