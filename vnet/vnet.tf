resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet
  location            = var.location
  resource_group_name = var.resource_group
  address_space       = var.address_space

  tags = {
    environment = "Production"
  }
}