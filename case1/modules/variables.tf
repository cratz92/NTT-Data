variable "resource_group_name" {
  type = string
}

variable "resource_group_location" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "storage_account_tier" {
  type = string
}

variable "storage_account_replication_type" {
  type = string
}

variable "key_vault_name" {
  type = string
}

variable "key_vault_purge_protection" {
  type = bool
}

variable "key_vault_sku" {
  type = string
}

variable "list_secret_permissions" {
  type = list(any)
}

variable "data_factory_name" {
  type = string
}

variable "sql_server_name" {
  type = string
}

variable "sql_server_version" {
  type = string
}

variable "sql_server_admin_user" {
  type      = string
  sensitive = true
}

variable "sql_server_admin_password" {
  type      = string
  sensitive = true
}

variable "azuread_admin" {
  type      = string
  sensitive = true
}

variable "sql_database_name" {
  type = string
}

variable "sql_db_collation" {
  type = string
}

variable "sql_db_account_type" {
  type = string
}

variable "logic_app_name" {
  type = string
}

variable "app_service_plan_name" {
  type = string
}

variable "app_service_plan_tier" {
  type = string
}

variable "app_service_plan_size" {
  type = string
}