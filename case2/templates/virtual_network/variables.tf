variable "sg_name" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "dns" {
  type = list
}

variable "address" {
  type = list
}

variable "sub_name" {
  type = string
}

variable "subnet_range" {
  type = string
}


variable "resource_group_name" {
	type = string
}


variable "resource_group_location" {
	type = string
}
