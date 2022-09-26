data "azurerm_application_insights" "ai_info" {
  name                = azurerm_application_insights.ai.name
  resource_group_name = azurerm_application_insights.ai.resource_group_name
}