variable "sg_name" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "rgname" {
  type = string
}

variable "dns" {
  type = string
}

variable "address" {
  type = string
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

#address["10.100.8.0/16"]
#dns ["8.8.8.8", "8.8.4.4"]

#subnet range "10.100.9.0/24"