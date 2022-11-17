resource "azurerm_resource_group" "resource" {
  name = var.resource_name
  location = var.resource_location
}