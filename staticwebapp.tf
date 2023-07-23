provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "dev-rg"
    storage_account_name = "devxyzstorageaccount"
    container_name       = "devconatiner"
    key                  = "dev.tfstate"
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.teamname}-rg"
  location = var.location
}


resource "azurerm_static_site" "web" {
  name                = "${var.teamname}yzstaticwebapp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
}


  