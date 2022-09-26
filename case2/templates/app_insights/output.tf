# output "instrumentation_key" {
# 	value = azurerm_application_insights.ai.instrumentation_key
# }

output "app_id" {
	value = azurerm_application_insights.ai.app_id
}

output "ai_data" {
    value = data.azurerm_application_insights.ai_info
}