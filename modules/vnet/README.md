# Introduction 
TODO: Give a short introduction of your project. Let this section explain the objectives or the motivation behind this project. 

# Getting Started
```
module "networking_vnet" {
  source = "./modules/virtualnetwork"
  purpose_abreviation = "integration"
  global-abreviations = var.global-abreviations
  location = var.location  
  global-tags = var.global-tags
  purpose_description = "vnet para integracion"
  resource_group_name = module.networking_resource_group.name
  address_space       = ["10.169.208.0/20"]
  
}
```