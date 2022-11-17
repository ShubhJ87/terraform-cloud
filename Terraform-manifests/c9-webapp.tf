//First Create a Service App Plan
//Second Create a windows web app
//Push the code from github to azure web app

/*
resource "azurerm_service_plan" "azurerm_appservcie" {
    name = local.azure_app_service_plan
    resource_group_name = azurerm_resource_group.azurerm.name
    location = var.Resource_group_Location
    os_type = "Windows"
    sku_name ="S1"
    depends_on = [
    azurerm_resource_group.azurerm
    ]
  
}

resource "azurerm_windows_web_app" "azurerm_windonwsapp" {
  name = "webappppes"
  resource_group_name = azurerm_resource_group.azurerm.name
  location = var.Resource_group_Location
  service_plan_id = azurerm_service_plan.azurerm_appservcie.id
  site_config {
    application_stack {
        current_stack  = "dotnet"
        dotnet_version  = "v6.0"
    }
  }
}

//Here we have published code from vs to github and then further taking code from 
//github and publishing to our web app - further can be checked in deployment center.
resource "azurerm_app_service_source_control" "azurerm_source" {
app_id = azurerm_windows_web_app.azurerm_windonwsapp.id
repo_url = "https://github.com/ShubhJ87/Terraformnet.git"
branch =  "master"
use_manual_integration = true
  
}

/*
resource "azurerm_windows_web_app_slot" "azurerm_webslot" {
name = "staging"
app_service_id = azurerm_windows_web_app.azurerm_windonwsapp.id
site_config {
    application_stack {
        current_stack  = "dotnet"
        dotnet_version  = "v6.0"
    }
  }
depends_on = [
  azurerm_service_plan.azurerm_appservcie
]
}

resource "azurerm_web_app_active_slot" "azurerm_activeslot" {
  slot_id = azurerm_windows_web_app_slot.azurerm_webslot.id
  
}
*/  

