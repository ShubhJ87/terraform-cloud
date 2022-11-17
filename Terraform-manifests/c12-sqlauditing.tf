/*
resource "azurerm_log_analytics_workspace" "azurerm_lawork" {
name = "applogsworkspace3000"
resource_group_name  = azurerm_resource_group.azurerm.name
location = var.Resource_group_Location
sku = "PerGB2018"
retention_in_days = 30
}


resource "azurerm_mssql_server_extended_auditing_policy" "azurerm_sql_auditing" {
  server_id = azurerm_mssql_server.azurerm_sql.id
  log_monitoring_enabled = true
  retention_in_days = 6
  depends_on = [
    azurerm_mssql_database.azurerm_dbase
  ]
}

resource "azurerm_monitor_diagnostic_setting" "example" {
  name               = "${azurerm_mssql_database.azurerm_dbase.name}-set"
  target_resource_id = "${azurerm_mssql_database.azurerm_dbase.id}"
log_analytics_workspace_id = azurerm_log_analytics_workspace.azurerm_lawork.id
  log {
    category = "SQLSecurityAuditEvents"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }
    depends_on = [
      azurerm_log_analytics_workspace.azurerm_lawork,
      azurerm_mssql_database.azurerm_dbase
    ]
  
}*/