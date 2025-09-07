terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-todoapp-infra-automation "
    storage_account_name = "todostg123"
    container_name       = "tfstate"
    key                  = "prod1.terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "470e0441-3f52-4fdf-8fc5-508cd114ccbc"
}