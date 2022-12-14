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

# variable "key_vault_sku" {
#   type = string
# }

# variable "list_secret_permissions" {
#   type = list(any)
# }

# variable "list_certificate_permissions" {
# 	type = list
# }

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

variable "linked_name" {
  type = string
}

variable "app_service_plan_name" {
  type = string  
}

variable "app_service_plan_os_type" {
  type = string
}

variable "app_service_plan_sku_name" {
  type = string
}

variable "secret_sql" {
  type = string
}

variable "logic_app_name" {
  type = string  
}

variable "storage_container_access_type" {
  type = string   
}

variable "storage_account_blob_type" {
  type = string   
}

variable "linked_sql" {
  type = string   
}

variable "storage_account_container_name" {
   type = string  
}
