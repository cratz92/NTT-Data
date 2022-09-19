output "out_sa" {
	value = {}

	depends_on = [
		azurerm_storage_account.sa
	]
}

<<<<<<< HEAD
output "access_key" {
	value = azurerm_storage_account.sa.primary_access_key
=======
output "acces_key" {
	value = "azuremrm_storage_account.sa.access_key"
>>>>>>> b7fd99eb438e54d8d393b2d3ca5dbebccf622cf8
}