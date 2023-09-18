# this script will be used to create new resource group

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group
  location = var.location

  tags = {
    environment = "Production"
    owner       = "sunny"
    costcenter  = "12345"
  }
}