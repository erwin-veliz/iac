module "naming_convention" {
  source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-naming_convention"
  resource_code = "snet"
  purpose_abreviation = var.purpose_abreviation
  global-abreviations = var.global-abreviations
}

resource "azurerm_subnet" "subnet" { 
  #name                                          = replace(module.naming_convention.full_name,"${var.purpose_abreviation}-snet","${var.subnet_name}-snet")
  name                                          = module.naming_convention.full_name
  resource_group_name                           = var.resource_group_name
  address_prefixes                              = [var.subnet_address]
  virtual_network_name                          = var.vnet_name
  #private_link_service_network_policies_enabled = var.private_link_service_network_policies_enabled
}

resource "azurerm_network_security_group" "nsg" {
  count                = var.create_nsg ? 1 : 0
  name                = "${module.naming_convention.full_name}-NSG"
  location            = var.location
  resource_group_name = var.resource_group_name
  #tags = module.tagging_convention_nsg.0.tags
}

module "nsg_rules" {
  count                = var.create_nsg ? 1 : 0
  source         = "../nsg_rule"
  rsgr_name      = var.resource_group_name
  nsg_name       = azurerm_network_security_group.nsg.0.name
  inbound_rules  = var.nsg_inbound_rules
  outbound_rules = var.nsg_outbound_rules
  depends_on = [ azurerm_network_security_group.nsg ]
}

resource "azurerm_subnet_network_security_group_association" "nsg_association" {
  count                = var.create_nsg ? 1 : 0
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = resource.azurerm_network_security_group.nsg.0.id
}
