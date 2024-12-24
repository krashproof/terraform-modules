terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">=0.1.0"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=4.14.0"
    }
  }
}


provider "azuredevops" {
  org_service_url = "https://dev.azure.com/krashproof/" # To fill with your real AZDO ORG
}

# provider "azurerm" {
#   features {}
#   #subscription_id = "$KRASHPROOF_AZURE_SUBSCRIPTION" # TO FILL
# }