output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

# output "subnet_address_prefixes" {
#   value = length(module.subnet[*]) > 0 ? module.subnet[*].subnet_address_prefixes : module.subnetmult[*].subnet_address_prefixes
# }

# output "subnet_id" {
#   value = length(module.subnet) > 0 ? module.subnet[0].subnet_id : null
# }

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "rsgr_name" {
  value = azurerm_virtual_network.vnet.resource_group_name
}

output "subnet_ids" {
  value = module.subnetmult[*].subnet_id
}

# output "nsg_ids" {
#   value = module.nsg[*].nsg_id
# }

# output "nsg_names" {
#   value = module.nsg[*].nsg_name
# }
