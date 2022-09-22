locals {

  common_tags = {
    environment = "staging"
  }

  service_bus_tags = {
		source = "terraform"
	}
}