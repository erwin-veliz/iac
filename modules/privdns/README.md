# Introduction 
TODO: Give a short introduction of your project. Let this section explain the objectives or the motivation behind this project. 

# Getting Started
```hcl
module "fet_priv_dns" {
  source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-privdns"
  #source = "./modules/priv_dns"
  global-abreviations = var.global-abreviations
  global-tags = var.global-tags
  purpose_description = "private dns para Fet"  
  dns_name = "privatelink.blob.core.windows.net"
  resource_group_name = module.networking_resource_group.name  
  vnet_id = module.networking_vnet.id # indicar vnet_id para vincular el private DNS
  vnet_name_for_link = module.networking_vnet.name
  #resource_incremental = var.resource_incremental
}
```