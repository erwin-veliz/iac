module "naming_convention" {
  source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-naming_convention"
  resource_code = "vnet"
  purpose_abreviation = var.purpose_abreviation
  global-abreviations = var.global-abreviations  
}

resource "azurerm_virtual_network" "vnet" {
  name                = module.naming_convention.full_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space
  tags = var.global-tags
}

module "subnetmult" {
  source         = "./module/subnet"
  count          = length(var.subnet_address)  
  resource_group_name      = var.resource_group_name
  purpose_abreviation = var.subnet_name[count.index]
  global-abreviations = var.global-abreviations
  vnet_name      = resource.azurerm_virtual_network.vnet.name
  subnet_address = var.subnet_address[count.index]
  #subnet_name = var.subnet_name[count.index] 
  #private_link_service_network_policies_enabled = length(var.subnetmulti_private_link_service_network_policies_enabled)>0 ? var.subnetmulti_private_link_service_network_policies_enabled[count.index] : true
  depends_on     = [azurerm_virtual_network.vnet]
  location = var.location
  create_nsg = var.create_nsg[count.index]
}
