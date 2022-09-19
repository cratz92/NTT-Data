resource "azurerm_data_factory" "DV" {
  name                = var.data_name
  location            = var.location_factory
  resource_group_name = var.resource_group_name
  
}

resource "azurerm_data_factory_linked_service_key_vault" "linked_keyvault" {
  name            = var.linked_name
  data_factory_id = azurerm_data_factory.DV.id
  key_vault_id    = data.azurerm_key_vault.example.id
}

resource "azurerm_data_factory_linked_service_sql_server" "liked_sqlserver" {
  name            = var.linked_sql
  data_factory_id = azurerm_data_factory.DV.id
  connection_string = "Integrated Security=False;Data Source=test;Initial Catalog=test;User ID=test;"
  
  key_vault_password {
    linked_service_name = azurerm_data_factory_linked_service_key_vault.linked_keyvault.name
    secret_name         = var.secret_sql
  }
}