module "tagging_convention" {
  source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-tagging_convention"
  global-tags = var.global-tags  
  purpose_description = var.purpose_description
}

resource "azurerm_private_dns_zone" "priv_dns" {
  name     = var.dns_name
  tags = module.tagging_convention.tags
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_zone_virtual_network_link" "priv_dns_vnetlink" {
  name                  = "vnl-${var.vnet_name_for_link}"
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.priv_dns.name
  virtual_network_id    = var.vnet_id
  tags = module.tagging_convention.tags
}