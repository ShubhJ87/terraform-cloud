locals{
    resource_group_name = "AZRG-400"
}

resource "azurerm_resource_group" "azurerm" {
    //name = var.Resource_group_name
    //name  = local.resource_group_name
// Creating resource group name based on workspace
    name = "${terraform.workspace}-grp_400" 
    location = var.Resource_group_Location
  
}

