output "id" {
  depends_on = [azurerm_log_analytics_solution.container_insights]
  value      = azurerm_log_analytics_workspace.log.id
}

