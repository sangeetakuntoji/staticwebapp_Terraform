
resource "azurerm_resource_group" "rg" {
  name     = "dev-rg"
  location = "eastus2"
}


resource "azurerm_static_site" "web" {
  name                = "devxyzstaticwebapp"
  resource_group_name = "dev-rg"
  location            = "eastus2"
}


  