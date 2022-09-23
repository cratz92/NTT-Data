variable "storage_account_name" {
	type = string
}

variable "resource_group_name" {
	type = string
}

variable "resource_group_location" {
	type = string
}

variable "storage_account_tier" {
	type = string
}

variable "storage_account_replication_type" {
	type = string
}

variable "common_tags" {
	type = map
}

variable "storage_container_name" {
	type = string
}

variable "storage_container_access_type" {
	type = string
}

variable "storage_share_name" {
	type = string
}

variable "storage_share_quota" {
	type = string	
}
