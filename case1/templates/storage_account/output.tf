output "out_sa" {
	value = {}

	depends_on = [
		azurerm_storage_account.sa
	]
}

output "access_key" {
	value = azurerm_storage_account.sa.primary_access_key
}