module "naming_convention" {
  #source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/naming_convention"
  source = "../naming_convention"
  resource_code = "rg"
  purpose_abreviation = var.purpose_abreviation
  global-abreviations = var.global-abreviations
  #resource_incremental = var.resource_incremental
}

module "tagging_convention" {
  #source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/tagging_convention"
  source = "../tagging_convention"
  global-tags = var.global-tags
  purpose_description = var.purpose_description
}

resource "azurerm_resource_group" "rg" {
  name     = module.naming_convention.full_name
  location = var.location
  tags = module.tagging_convention.tags
}