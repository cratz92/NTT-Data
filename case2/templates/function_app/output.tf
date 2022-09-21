output "out_windows_fa" {
	value = {}

	depends_on = [
		azurerm_windows_function_app.windows_fa
	]
}

# output "out_sp" {
# 	value = {}

# 	depends_on = [
# 		azurerm_service_plan.sp
# 	]
# }
