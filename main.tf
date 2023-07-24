provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "dev-rg"
    storage_account_name = "devxyzstorageaccount"
    container_name       = "devconatiner"
    key          = "dev.tfstate"
  }
}