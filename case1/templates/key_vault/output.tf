output "out_kv" {
	value = {}

	depends_on = [
		azurerm_key_vault.kv
	]
}