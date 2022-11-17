//this is use to put a lock on resource group so one cannot delete/temper the resources
/*
resource "azurerm_management_lock" "azurerm_appvmlock" {
  name  = local.azure_mgmnt_lock
  scope = azurerm_windows_virtual_machine.azurerm_windows_vm.id
  lock_level = "CanNotDelete"
  notes = "Need for processing"
}*/