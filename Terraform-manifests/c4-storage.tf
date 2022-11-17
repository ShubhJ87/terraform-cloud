/*resource "azurerm_storage_account" "azurerm" {
    name = var.Storage_Account
    resource_group_name = var.Resource_group_name
    location = var.Resource_group_Location  
    account_tier = "Standard"
    account_replication_type = "LRS"   
    tags = {environment = "QA"}
   // depends_on =[var.Resource_group_name]
   depends_on = [
     azurerm_resource_group.azurerm
   ]
    
}

resource "azurerm_storage_container" "azurerm" {
    name = var.Storage_Account_Container
    storage_account_name = azurerm_storage_account.azurerm.name
    container_access_type = "blob" 
  depends_on = [azurerm_storage_account.azurerm]
}

resource "azurerm_storage_blob" "example"{
    name = var.Azure_Blob
    storage_account_name = azurerm_storage_account.azurerm.name
    storage_container_name = azurerm_storage_container.azurerm.name
    type = "Block"
    source = "c2-variables.tf"
    depends_on = [
      azurerm_storage_container.azurerm
    ]
}*/