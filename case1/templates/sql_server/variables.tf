variable "sql_server_name" {
	type = string
}

variable "resource_group_name" {
	type = string
}

variable "resource_group_location" {
	type = string
}

variable "sql_server_version" {
	type = string
}

variable "sql_server_admin_user" {
	type = string
	sensitive = true
}

variable "sql_server_admin_password" {
	type = string
	sensitive = true
}

variable "azuread_admin" {
	type = string
	sensitive = true
}