/*
resource "azurerm_monitor_action_group" "azurerm_action_group" {
name = "AlertsAction"
resource_group_name = azurerm_resource_group.azurerm.name
short_name = "email-alert"    

email_receiver {
    name = "SendtoDevops"
    email_address = "Shubham.jindal@hotmail.com"
    use_common_alert_schema = true
}
depends_on = [
  azurerm_resource_group.azurerm
]
}


//this is used if any metric changes 
resource "azurerm_monitor_metric_alert" "azure_metric" {
    name = "Network-threshold-alert"
    resource_group_name = azurerm_resource_group.azurerm.name
    scopes = [azurerm_windows_virtual_machine.azurerm_windows_vm.id]
    description = "Network out bytes exceeds "
  
  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name = "Network Out Total"
    aggregation = "Total"
    operator = "GreaterThan"
    threshold = 70
  }
  
action{
    action_group_id = azurerm_monitor_action_group.azurerm_action_group.id
}

depends_on = [
  azurerm_windows_virtual_machine.azurerm_windows_vm,
  azurerm_monitor_action_group.azurerm_action_group
]  
}

//Used to monitor an acitivity 
resource "azurerm_monitor_activity_log_alert" "monitoractivity" {
  name                = "monitor_activity"
  resource_group_name = azurerm_resource_group.azurerm.name
  scopes              = [azurerm_resource_group.azurerm.id]
  description         = "This alert will monitor a specific storage account updates."

  criteria {
    resource_id    = azurerm_windows_virtual_machine.azurerm_windows_vm.id
    operation_name = "Microsoft.Compute/virtualMachines/deallocate/action"
    category       = "Administrative"
  }

  action {
    action_group_id = azurerm_monitor_action_group.azurerm_action_group.id
  }
  depends_on = [
  azurerm_windows_virtual_machine.azurerm_windows_vm,
  azurerm_monitor_action_group.azurerm_action_group
] 

}


resource "azurerm_log_analytics_workspace" "workspace" {
  name = "workspace3000"
  resource_group_name = azurerm_resource_group.azurerm.name
  resource_group_location = local.location
  sku = "PerGB2018"
  retention_in_days = 30

  }

*/