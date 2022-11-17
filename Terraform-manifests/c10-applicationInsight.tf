/*
resource "azurerm_log_analytics_workspace" "azurerm_lawork" {
name = "applogsworkspace3000"
resource_group_name  = azurerm_resource_group.azurerm.name
location = var.Resource_group_Location
sku = "PerGB2018"
retention_in_days = 30
}

resource "azurerm_application_insights" "azurerm_insights" {
    name = "appinsights3000"
    resource_group_name = azurerm_resource_group.azurerm.name
    location = var.Resource_group_Location
    application_type = "web"
    workspace_id = azurerm_log_analytics_workspace.azurerm_lawork.id
    depends_on = [
      azurerm_log_analytics_workspace.azurerm_lawork
    ]
  
}*/