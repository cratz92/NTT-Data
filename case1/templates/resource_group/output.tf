output "out_rg" {
  value = {}

  depends_on = [
    azurerm_resource_group.rg
  ]
}