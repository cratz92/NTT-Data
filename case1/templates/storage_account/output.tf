output "out_sa" {
	value = {}

	depends_on = [
		azurerm_storage_account.sa
	]
}