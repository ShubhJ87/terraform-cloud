/*
resource "azuread_user" "UserA" {
    user_principal_name = "Mattdock@shubhamjindalhotmail.onmicrosoft.com"
    display_name = "Matt Mardock"
    mail_nickname = "DareDevil"
    password = "daredevil@123"
  
}

data "azurerm_subscription" "azuresubscription" {
}


resource "azurerm_role_definition" "customrole" {
  name        = "CustomRole"
  scope       = data.azurerm_subscription.azuresubscription.id
  description = "This is a custom role created via Terraform"

  permissions {
    actions     = ["Microsoft.Compute/ astreik here   /read","Microsoft.Compute/virtualMachines/start/action","Microsoft.Compute/virtualMachines/restart/action"]
    not_actions = []
  }

  assignable_scopes = [
    data.azurerm_subscription.azuresubscription.id, # /subscriptions/00000000-0000-0000-0000-000000000000
  ]
}

resource "azurerm_role_assignment" "Custom_role_assignment" {
  scope = azurerm_resource_group.azurerm.id
  role_definition_name = "CustomRole"
  principal_id = azuread_user.UserA.object_id
  
  depends_on = [
    azurerm_resource_group.azurerm,
    azuread_user.UserA,
    azurerm_role_definition.customrole
  ]
}*/
