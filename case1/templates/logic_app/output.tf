output "out_storage_account" {
	value = {}

	depends_on = [
		azurerm_storage_account.sa
	]
}  