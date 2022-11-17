//Create Server First
//Create Database
//Create Sql firewall rules 

/*
resource "azurerm_mssql_server" "azurerm_sql" {
    name = "msdbserver1000"
    resource_group_name = azurerm_resource_group.azurerm.name
    location = var.Resource_group_Location
    version = "12.0"
    administrator_login = "admin123"
    administrator_login_password = "sharepoint@123"
    depends_on = [
      azurerm_resource_group.azurerm
    ]
}


resource "azurerm_mssql_database" "azurerm_dbase" {
    name = "dbdatabase1000"
    server_id = azurerm_mssql_server.azurerm_sql.id
    collation = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
    max_size_gb = 2
    sku_name = "Basic"
    depends_on = [
      azurerm_mssql_server.azurerm_sql
    ]
}

resource "azurerm_mssql_firewall_rule" "azurerm_sqlfirewall"{
    name = "AllowClientIP"
    server_id = azurerm_mssql_server.azurerm_sql.id
    start_ip_address = "92.1.213.138"
    end_ip_address = "92.1.213.138"
    depends_on = [
      azurerm_mssql_server.azurerm_sql
    ]
}*/