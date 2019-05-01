resource "azurerm_log_analytics_workspace" "log" {
  name                = "${var.prefix}${var.name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  sku                 = "PerGB2018"
}

resource "azurerm_log_analytics_solution" "container_insights" {
  count                 = "${length(var.solutions)}"
  solution_name         = "${element(var.solutions, count.index)}"
  location              = "${var.location}"
  resource_group_name   = "${var.resource_group_name}"
  workspace_resource_id = "${azurerm_log_analytics_workspace.log.id}"
  workspace_name        = "${azurerm_log_analytics_workspace.log.name}"

  plan  = "${var.solution_provider["${element(var.solutions, count.index)}"]}"
    
}