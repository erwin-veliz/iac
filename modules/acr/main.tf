module "naming_convention" {
  source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-naming_convention"
  resource_code = "acr"
  purpose_abreviation = var.purpose_abreviation
  global-abreviations = var.global-abreviations
  resource_incremental = var.resource_incremental
}

module "tagging_convention" {
  source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-tagging_convention"
  global-tags = var.global-tags
  purpose_description = var.purpose_description
}

resource "azurerm_container_registry" "acr" {
  name                = replace(module.naming_convention.full_name,"-","")
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Standard"
  #sku                 = "Premium"
  admin_enabled       = true
  tags = module.tagging_convention.tags
}

# module "privateendpoint" {
#   source                 = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-pl"
#   resource_group_name = var.resource_group_name
#   location               = var.location
#   subresource_names      = ["registry"]
#   resource_id_for_pep   = azurerm_container_registry.acr.id
#   subnet_id              = var.subnet_id
#   dns                    = var.dns
#   pep_name               = replace(module.naming_convention.full_name,"acr","acrpl")
#   purpose_description    = var.purpose_description
#   global-abreviations = var.global-abreviations
#   global-tags = var.global-tags
#   resource_incremental = var.private_endpoint_incremental
# }
