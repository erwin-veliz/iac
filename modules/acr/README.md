# Introduction 
TODO: Give a short introduction of your project. Let this section explain the objectives or the motivation behind this project. 

# Getting Started
```
module "acr" {
  source = "./modules/acr"
  global-abreviations = var.global-abreviations  
  resource_group_name = module.integration_resource_group.name
  location = var.location
  global-tags = var.global-tags
  purpose_description = "Container Regisrty para el AKS de Integracion"
  resource_incremental = "01"
  
}
```