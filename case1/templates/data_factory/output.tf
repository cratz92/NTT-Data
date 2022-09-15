output "output_vault" {
  value = {}

  depends_on = [
    azurerm_data_factory.DV
  ]
}