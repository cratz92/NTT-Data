variable "key_vault_name" {
	type = string
}

variable "resource_group_location" {
	type = string
}

variable "resource_group_name" {
	type = string
}

variable "key_vault_disk_encryption" {
	type = bool
}

variable "key_vault_tenant_id" {
	type = string
}

variable "key_vault_retention" {
	type = number
}

variable "key_vault_purge_protection" {
	type = bool
}

variable "key_vault_sku" {
	type = string
}

variable "kv_acl_bypass" {
	type = string
}

variable "kv_acl_default_action" {
	type = string
}

variable "kv_acl_subnet_ids" {
	type = list(string)
}

variable "kv_secret_name" {
	type = string
}

variable "kv_secret_value" {
	type = string
	sensitive = true
}