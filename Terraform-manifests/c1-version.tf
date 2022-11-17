terraform {
    cloud {
    organization = "TerraformUniversity"
    workspaces {
      name = "cliworkspace-dev"
    }
  }
    required_version = ">=1.0.0"
    required_providers {
      azurerm = {
        source ="hashicorp/azurerm"
        version = ">=3.30.0"
      }
    }
}

provider "azurerm"{
    subscription_id = "18c11da9-b6b9-4cc4-a3af-ebc2e64ad324"
    tenant_id="e3e414d2-2550-4a48-9c98-af8e1ccc7fc3"
    client_id = "9e4871a2-343f-4e9f-8877-51f08a019830"
    client_secret = "y~q8Q~LCkvrzyXtbN0GRxS-EGPY1dq-pxQFbxc~l"
    features {
      
    }
}


/*Note 1: For running workspaces in cloud 
1. You need to register app 'terraform_app' in Azure Active directory -> Azure Ad - App Registrations 
2. From there you will get tenant_id, client_id. 
3. For getting secret you need to create secret in left blade - certificate and secret
4. Now give permission to app by going subscriptions ->IAM->Contributor->search app name ->okay
*/