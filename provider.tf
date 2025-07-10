# Azure Provider source and version being used
terraform {
  backend "azurerm" {
    resource_group_name   = "tfstate-rg" ###### crear previamente
    storage_account_name  = "tfstatestorage0101" ###### crear previamente
    container_name        = "tfstate"
    key                   = "aprod-iaac-ibk.tfstate"
  }  
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "3eb4fcf9-7b07-492e-a136-85e534bc7696"
}