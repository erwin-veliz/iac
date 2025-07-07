include {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../modules/network"
}

inputs = {
  resource_group_name = "rg-dev-network"
  location            = "East US"
  vnet_name           = "vnet-dev"
  address_space       = ["10.0.0.0/16"]
  tags = {
    environment = "dev"
    owner       = "network-team"
  }
}
