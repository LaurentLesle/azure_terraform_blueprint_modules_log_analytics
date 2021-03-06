resource "azurerm_log_analytics_workspace" "log" {
  name                = "${var.prefix}${var.name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
}

locals {
  solution_list = keys(var.solution_plan_map)
}

resource "azurerm_log_analytics_solution" "solution" {
  count                 = length(local.solution_list)
  solution_name         = element(local.solution_list, count.index)
  location              = var.location
  resource_group_name   = var.resource_group_name
  workspace_resource_id = azurerm_log_analytics_workspace.log.id
  workspace_name        = azurerm_log_analytics_workspace.log.name

  plan {
    product        = var.solution_plan_map[element(local.solution_list, count.index)].product
    promotion_code = var.solution_plan_map[element(local.solution_list, count.index)].promotion_code
    publisher      = var.solution_plan_map[element(local.solution_list, count.index)].publisher
  }
}

