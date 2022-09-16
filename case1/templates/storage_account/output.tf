output "out_sa" {
	value = {}

	depends_on = [
		azurerm_storage_account.sa
	]
}

output "acces_key" {
	value = azuremrm_storage_account.sa.access_key
}