output "instrumentation_key" {
	value = azurerm_application_insights.ai.instrumentation_key
}

output "app_id" {
	value = azurerm_application_insights.ai.app_id
}

output "data_out" {
    value = data.azurerm_application_insights.ai_info.instrumentation_key
}