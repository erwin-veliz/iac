resource "azurerm_network_security_rule" "inbound" {
  for_each                    = { for rule in var.inbound_rules : rule.name => rule }
  resource_group_name         = var.rsgr_name
  network_security_group_name = var.nsg_name
  direction                   = "Inbound"
  name                        = each.value.name
  priority                    = each.value.priority
  access                      = each.value.access
  protocol                    = each.value.protocol
  source_address_prefix       = lookup(each.value, "source_address_prefix", "*")
  source_port_range           = lookup(each.value, "source_port_range", "*")
  destination_address_prefix  = lookup(each.value, "destination_address_prefix", "*")
  destination_port_range      = lookup(each.value, "destination_port_range", "*")
  description                 = lookup(each.value, "description", null)
}

resource "azurerm_network_security_rule" "outbound" {
  for_each                    = { for rule in var.outbound_rules : rule.name => rule }
  resource_group_name         = var.rsgr_name
  network_security_group_name = var.nsg_name
  direction                   = "Outbound"
  name                        = each.value.name
  priority                    = each.value.priority
  access                      = each.value.access
  protocol                    = each.value.protocol
  source_address_prefix       = lookup(each.value, "source_address_prefix", "*")
  source_port_range           = lookup(each.value, "source_port_range", "*")
  destination_address_prefix  = lookup(each.value, "destination_address_prefix", "*")
  destination_port_range      = lookup(each.value, "destination_port_range", "*")
  description                 = lookup(each.value, "description", null)
}