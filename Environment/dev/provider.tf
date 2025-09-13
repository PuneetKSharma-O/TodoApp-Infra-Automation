terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-todoapp-infra-automation"
    storage_account_name = "todostg1234"
    container_name       = "tfstate"
    key                  = "dev1.terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "ae14f047-f613-4f71-8ea9-6defaf5c695d"
}