#####  RESOURCE GROUP #####

variable "resource_group_name" {
	type = string
}

variable "resource_group_location" {
	type = string
}

#####  STORAGE ACCOUNT #####

variable "storage_account_name" {
	type = string
}

#####  KEY VAULT #####

variable "key_vault_name" {
	type = string
}

variable "data_key_vault" {
	type = string
}

#####  FUNCTION APP #####

variable "service_plan_name" {
	type = string
}

#####  VIRTUAL NETWORK #####
variable "dns" {
  type = string
}

variable "address" {
  type = string
}

variable "subnet_range" {
  type = string
}

#####  SERVICE BUS #####
#####  APPLICATION INSIGHTS #####
