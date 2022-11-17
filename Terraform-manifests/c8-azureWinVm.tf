/*
resource "azurerm_windows_virtual_machine" "azurerm_windows_vm" {
  name = local.azure_windows_vm_name
  resource_group_name = azurerm_resource_group.azurerm.name
  location = var.Resource_group_Location
  size = "Standard_F2"
  admin_username = "admin123"
  admin_password = "sharepoint@123"
  network_interface_ids = [azurerm_network_interface.AzureNIC.id,]
  os_disk {
    caching ="ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
  publisher = "MicrosoftWindowsServer"
  offer = "WindowsServer"
  sku = "2016-Datacenter"
  version = "latest"    
  }
  
  }
/*
 resource "azurerm_managed_disk" "azurerm_appdisk" {
   name = local.azure_managed_disk_name
   resource_group_name = azurerm_resource_group.azurerm.name
   location = var.Resource_group_Location
   storage_account_type = "Standard_LRS"
   create_option = "Empty"
   disk_size_gb = "8"
 }

 resource "azurerm_virtual_machine_data_disk_attachment" "azurerm_diskattach" {
  managed_disk_id    = azurerm_managed_disk.azurerm_appdisk.id
  virtual_machine_id = azurerm_windows_virtual_machine.azurerm_windows_vm.id
  lun                = "10"
  caching            = "ReadWrite"
}*/
