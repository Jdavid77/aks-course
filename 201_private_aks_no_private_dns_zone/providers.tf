terraform {

  required_version = ">= 1.2.8"

  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.24.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a2b28c85-1948-4263-90ca-bade2bac4df4"
  storage_use_azuread = true
  resource_provider_registrations = "none"
}