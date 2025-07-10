# Introduction 
TODO: Give a short introduction of your project. Let this section explain the objectives or the motivation behind this project. 

# Getting Started
```
module "integration_resource_group" {
  source = "./modules/resource_group"
  purpose_abreviation = "integration"
  global-abreviations = var.global-abreviations
  location = var.location  
  global-tags = var.global-tags  
  purpose_description = "RG para Integracion"
  #resource_incremental = var.resource_incremental
}

module "networking_resource_group" {
  source = "./modules/resource_group"
  purpose_abreviation = "networking"
  global-abreviations = var.global-abreviations
  location = var.location  
  global-tags = var.global-tags  
  purpose_description = "RG para Networking"
  #resource_incremental = var.resource_incremental
}
```