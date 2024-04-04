terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
  backend "azurerm" {
  }
}

provider "azurerm" {
  tenant_id       = "9b687b3c-b724-4761-86f3-672271d8ed0d"
  subscription_id = "10c93541-a379-49d2-a612-8d3e1669dc02"
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

# resource "azurerm_resource_group" "deployment_rg" {
#   name     = "rg-jenkins"
#   location = "westeurope"
#   tags     = {
#     environment = "dev"
#     projectCode = "jenkins"
#     invoiceCode = "jenkins"
#   }
# }