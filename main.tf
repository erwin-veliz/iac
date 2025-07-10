module "networking_resource_group" {
  #source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-rg?ref=feature01"
  source = "../modules/resource-group"
  purpose_abreviation = "networking"  
  global-abreviations = var.global-abreviations 
  location = var.location  
  global-tags = var.global-tags  
  purpose_description = "RG para test"  
}

# module "integration_resource_group" {
#   source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-rg?ref=feature01"
#   #source = "./modules/resource_group"
#   purpose_abreviation = "integration"
#   global-abreviations = var.global-abreviations 
#   location = var.location  
#   global-tags = var.global-tags  
#   purpose_description = "RG para integration"  
# }

# module "identity_resource_group" {
#   source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-rg?ref=feature01"
#   #source = "./modules/resource_group"
#   purpose_abreviation = "identity"
#   global-abreviations = var.global-abreviations 
#   location = var.location  
#   global-tags = var.global-tags  
#   purpose_description = "RG para identity"  
# }

# module "fet_resource_group" {
#   source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-rg?ref=feature01"
#   #source = "./modules/resource_group"
#   purpose_abreviation = "fet"
#   global-abreviations = var.global-abreviations 
#   location = var.location  
#   global-tags = var.global-tags  
#   purpose_description = "RG para fet"  
# }

# module "capacomun_resource_group" {
#   source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-rg?ref=feature01"
#   #source = "./modules/resource_group"
#   purpose_abreviation = "capacomun"
#   global-abreviations = var.global-abreviations 
#   location = var.location  
#   global-tags = var.global-tags  
#   purpose_description = "RG para capacomun"  
# }

# module "administration_resource_group" {
#   source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-rg?ref=feature01"
#   #source = "./modules/resource_group"
#   purpose_abreviation = "administration"
#   global-abreviations = var.global-abreviations 
#   location = var.location  
#   global-tags = var.global-tags  
#   purpose_description = "RG para administration"  
# }


# ########################## VNET AND SUBNETS ##########################
# module "integration_vnet" {
#  source              = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-vnet?ref=feature/addSubnetName"
#  #source              = "../terraform-iaac-vnet"
#  resource_group_name = module.networking_resource_group.name
#  location            = var.location
#  purpose_abreviation = "integration"
#  purpose_description = "vnet para integration"  
#  global-abreviations = var.global-abreviations
#  vnet_address_space  = var.integration_vnet_address
#  subnet_address = var.integration_subnet_address
#  subnet_name = var.integration_subnet_name
#  global-tags = var.global-tags
#  create_nsg = var.integration_subnet_nsg
#  depends_on          = [module.networking_resource_group]
# }

# module "privatelink_vnet" {
#  source              = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-vnet?ref=feature/addSubnetName"
#  #source              = "../terraform-iaac-vnet"
#  resource_group_name = module.networking_resource_group.name
#  location            = var.location
#  purpose_abreviation = "privatelink"
#  purpose_description = "vnet para privatelink"  
#  global-abreviations = var.global-abreviations
#  vnet_address_space  = var.privatelink_vnet_address
#  subnet_address = var.privatelink_subnet_address
#  subnet_name = var.privatelink_subnet_name
#  global-tags = var.global-tags
#  create_nsg = var.privatelink_subnet_nsg
#  depends_on          = [module.networking_resource_group, module.integration_vnet]
# }

# module "db_vnet" {
#  source              = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-vnet?ref=feature/addSubnetName"
#  #source              = "../terraform-iaac-vnet"
#  resource_group_name = module.networking_resource_group.name
#  location            = var.location
#  purpose_abreviation = "db"
#  purpose_description = "vnet para db"  
#  global-abreviations = var.global-abreviations
#  vnet_address_space  = var.db_vnet_address
#  subnet_address = var.db_subnet_address
#  subnet_name = var.db_subnet_name
#  global-tags = var.global-tags
#  create_nsg = var.db_subnet_nsg
#  depends_on          = [module.networking_resource_group, module.privatelink_vnet]
# }

# module "frontend_vnet" {
#  source              = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-vnet?ref=feature/addSubnetName"
#  #source              = "../terraform-iaac-vnet"
#  resource_group_name = module.networking_resource_group.name
#  location            = var.location
#  purpose_abreviation = "frontend"
#  purpose_description = "vnet para frontend"  
#  global-abreviations = var.global-abreviations
#  vnet_address_space  = var.frontend_vnet_address
#  subnet_address = var.frontend_subnet_address
#  subnet_name = var.frontend_subnet_name
#  global-tags = var.global-tags
#  create_nsg = var.frontend_subnet_nsg
#  depends_on          = [module.networking_resource_group, module.db_vnet]
# }

# module "backend_vnet" {
#  source              = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-vnet?ref=feature/addSubnetName"
#  #source              = "../terraform-iaac-vnet"
#  resource_group_name = module.networking_resource_group.name
#  location            = var.location
#  purpose_abreviation = "backend"
#  purpose_description = "vnet para backend"  
#  global-abreviations = var.global-abreviations
#  vnet_address_space  = var.backend_vnet_address
#  subnet_address = var.backend_subnet_address
#  subnet_name = var.backend_subnet_name
#  global-tags = var.global-tags
#  create_nsg = var.backend_subnet_nsg
#  depends_on          = [module.networking_resource_group, module.frontend_vnet]
# }

# module "scaleset_vnet" {
#  source              = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-vnet?ref=feature/addSubnetName"
#  #source              = "../terraform-iaac-vnet"
#  resource_group_name = module.networking_resource_group.name
#  location            = var.location
#  purpose_abreviation = "scaleset"
#  purpose_description = "vnet para scaleset"  
#  global-abreviations = var.global-abreviations
#  vnet_address_space  = var.scaleset_vnet_address
#  subnet_address = var.scaleset_subnet_address
#  subnet_name = var.scaleset_subnet_name
#  global-tags = var.global-tags
#  create_nsg = var.scaleset_subnet_nsg
#  depends_on          = [module.networking_resource_group]
# }

# module "integration_pip" {
#   source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-pip"
#   #source = "./modules/public_ip"
#   purpose_abreviation = "apw"
#   global-abreviations = var.global-abreviations
#   location = var.location
#   global-tags = var.global-tags
#   purpose_description = "pip para api gateway"
#   zones = [1] 
#   resource_group_name = module.integration_resource_group.name
# }

# module "api_gateway" {
#   source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-ag"
#   #source = "./modules/api_gateway"
#   global-abreviations = var.global-abreviations
#   #purpose_abreviation = "integration"
#   resource_group_name = module.integration_resource_group.name
#   resource_incremental = "02"
#   location = var.location
#   global-tags = var.global-tags
#   subnet_id = module.integration_vnet.subnet_ids.0
#   vnet_name = module.integration_vnet.vnet_name
#   frontend_port = var.frontend_port_var
#   public_ip_address_id = module.integration_pip.id
#   cookie_based_affinity = var.cookie_based_affinity_var
#   backend_http_setting_path = var.backend_http_setting_path_var
#   backend_http_setting_port = var.backend_http_setting_port_var
#   backend_http_setting_protocol = var.backend_http_setting_protocol_var
#   backend_http_setting_request_timeout = var.backend_http_setting_request_timeout_var
#   frontend_protocol = var.frontend_protocol_var
#   request_routing_rule_priority = var.request_routing_rule_priority_var
#   request_routing_rule_type = var.request_routing_rule_type_var
#   purpose_description = "Api Gateway para Integracion"
#   waf_enabled = var.waf_enabled_var
#   waf_firewall_mode = var.waf_firewall_mode_var
#   waf_rule_set_type = var.waf_rule_set_type_var
#   waf_rule_set_version = var.waf_rule_set_version_var
#   zones = [1]
#   depends_on          = [module.integration_vnet, module.integration_pip]
# }

# module "acr_priv_dns" {
#   source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-privdns"
#   #source = "./modules/priv_dns"
#   global-abreviations = var.global-abreviations
#   global-tags = var.global-tags
#   purpose_description = "private dns para acr"  
#   dns_name = "privatelink.azurecr.io"
#   resource_group_name = module.integration_resource_group.name  
#   vnet_id = module.integration_vnet.vnet_id # indicar vnet_id para vincular el private DNS
#   vnet_name_for_link = module.integration_vnet.vnet_name
#   #resource_incremental = var.resource_incremental
# }

# module "acr" {
#   source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-acr"
#   global-abreviations = var.global-abreviations
#   #purpose_abreviation = "integration"
#   resource_group_name = module.integration_resource_group.name
#   location = var.location
#   global-tags = var.global-tags
#   purpose_description = "Container Regisrty para el AKS de Integracion"
#   resource_incremental = "02"
#   # subnet_id = module.app_subnet.id
#   # dns = {
#   #   zone_ids  = [module.acr_priv_dns.id]
#   #   zone_name = module.acr_priv_dns.name
#   # }
#   # private_endpoint_incremental = "01"
#   # depends_on = [module.acr_priv_dns]
# }

# module "aks" {
#   source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-aks"
#   global-abreviations = var.global-abreviations
#   resource_group_name = module.integration_resource_group.name
#   location = var.location
#   global-tags = var.global-tags 
#   kubernetes_version = var.aks_version
#   sku_tier = var.aks_sku
#   node_count = 1 
#   system_node_size = var.aks_system_node_size
#   # app_node_count = var.aks_app_node_count
#   # app_node_size =  var.aks_app_node_size  
#   vnet_id = module.integration_vnet.vnet_id
#   subnet_id = module.integration_vnet.subnet_ids.2
#   purpose_description = "AKS para Integracion"
#   acr_id = module.acr.id
#   zones = [1]
#   resource_incremental = "02"
#   depends_on = [module.acr]
# }

# module "api_management" {
#   source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-api"
#   #source                  = "./terraform-iaac-api"
#   resource_group_name     = module.integration_resource_group.name
#   location                = var.location
#   purpose_abreviation     = "apim"
#   purpose_description     = "apim para integracion"
#   global-abreviations     = var.global-abreviations
#   global-tags             = var.global-tags
#   api_snet_id             = module.integration_vnet.subnet_ids[1]
#   nsg_name                = "${module.integration_vnet.subnet_names[1]}-NSG"
#   api_sku                 = "Developer"
#   api_deployed_units      = "1" # Esto solo tendra efecto cuando el SKU es Premium
#   resource_incremental    = "04"
#   nsg_resource_group_name = module.networking_resource_group.name
#   depends_on = [module.integration_vnet]  
# }

# module "b2c" {
# source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-b2c"  
# global-abreviations = var.global-abreviations
# global-tags = var.global-tags
# purpose_description = "b2c"
# b2c_name = "fet2prodb2c.onmicrosoft.com"
# resource_group_name = module.identity_resource_group.name
# sku_name = "PremiumP1"
# #resource_incremental = var.resource_incremental
# }

# module "evh_priv_dns" {
#   source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-privdns"
#   #source = "./modules/priv_dns"
#   global-abreviations = var.global-abreviations
#   global-tags = var.global-tags
#   purpose_description = "private dns para evh"  
#   dns_name = "privatelinkprod.servicebus.windows.net"
#   resource_group_name = module.networking_resource_group.name  
#   vnet_id = module.backend_vnet.vnet_id # indicar vnet_id para vincular el private DNS
#   vnet_name_for_link = module.backend_vnet.vnet_name  
#   #resource_incremental = var.resource_incremental
# }

# module "rc_priv_dns" {
#   source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-privdns"  
#   global-abreviations = var.global-abreviations
#   global-tags = var.global-tags
#   purpose_description = "private dns para redis"  
#   dns_name = "privatelinkprod.redis.cache.windows.net"
#   resource_group_name = module.networking_resource_group.name
#   vnet_id = module.backend_vnet.vnet_id # indicar vnet_id para vincular el private DNS
#   vnet_name_for_link = module.backend_vnet.vnet_name  
#   #resource_incremental = var.resource_incremental
# }

# module "event_hub" {
#   source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-evh"
#   #source = "./modules/event_hub"
#   resource_group_name = module.fet_resource_group.name
#   purpose_abreviation = "fet"
#   global-abreviations = var.global-abreviations
#   location = var.location
#   global-tags = var.global-tags
#   purpose_description = "EventHub para FET"
#   resource_incremental = "01"
#   subnet_id = module.backend_vnet.subnet_ids[0]
#   dns = {
#     zone_ids  = [module.evh_priv_dns.id]
#     zone_name = module.evh_priv_dns.name
#   }
#   private_endpoint_incremental = "01"
#   depends_on = [module.evh_priv_dns]
# }

# module "redis" {
#   source = "git::https://dev.azure.com/FET-Hispam-TI/Terraform-Iaac/_git/terraform-iaac-rc"
#   global-abreviations = var.global-abreviations
#   purpose_abreviation = "fet"
#   resource_group_name = module.fet_resource_group.name
#   location = var.location
#   global-tags = var.global-tags
#   purpose_description = "redis cache for fet"
#   resource_incremental = "01"
#   subnet_id = module.backend_vnet.subnet_ids[0]
#   dns = {
#     zone_ids  = [module.rc_priv_dns.id]
#     zone_name = module.rc_priv_dns.name
#   }
#   private_endpoint_incremental = "01"
#   depends_on = [module.rc_priv_dns]
# }
