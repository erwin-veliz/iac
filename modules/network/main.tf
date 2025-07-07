provider "azurerm" {
  features {}
  #tenant_id = "b4ed2179-1a61-42b5-a53c-57caf85b095e"
  subscription_id = "3eb4fcf9-7b07-492e-a136-85e534bc7696"
}

terraform {
  backend "azurerm" {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tags                = var.tags
}
