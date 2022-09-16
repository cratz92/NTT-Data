output "out_rg" {
  value = {}

  depends_on = [
    azurerm_resource_group.rg
  ]
}

output "rg_name" {
  value = azurerm_resource_group.rg.name
}
