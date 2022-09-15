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
  type = list
}

variable "data_factory_name" {
  type = string
}