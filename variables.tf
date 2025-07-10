variable "tenant_id" {
  description = "Id del tenant a usar"
  type = string
}

variable "subscription_id" {
  description = "Id de la suscripción a usar"
  type = string
}

variable "global-abreviations" {
  description = "Abreviaciones globales para todos los recursos"
  type = object({
    company    = string
    region = string
    subscription      = string
    environment = string
    cloud = string
  })
}

variable "global-tags" {
  description = "Principales tags a asociar a los recursos"
  type = map(string)
}

variable "location" {
  description = "Region Azure en donde se desplegarán los recursos"
    type = string
}

variable "integration_vnet_address" {
  description = "VNET destinada a los componentes de control de trafico, autenticacion y autorización de aplicaciones y plataforma de contenedores de PRODUCCION"
  type        = list(string)
}

variable "integration_subnet_address" {
  description = "Subnet destinada a integration de PRODUCCION"
  type        = list(string)
}

variable "integration_subnet_name" {
  description = "Subnet name a integration de PRODUCCION"
  type        = list(string)
}

variable "integration_subnet_nsg" {
  description = "Subnet name a integration de PRODUCCION"
  type        = list(string)  
}

variable "privatelink_vnet_address" {
  description = "VNET destinada a los componentes de control de trafico, autenticacion y autorización de aplicaciones y plataforma de contenedores de PRODUCCION"
  type        = list(string)
}

variable "privatelink_subnet_address" {
  description = "Subnet destinada a privatelink de PRODUCCION"
  type        = list(string)
}

variable "privatelink_subnet_name" {
  description = "Subnet name a privatelink de PRODUCCION"
  type        = list(string)
}

variable "privatelink_subnet_nsg" {
  description = "Subnet name a privatelink de PRODUCCION"
  type        = list(string)
}

variable "db_vnet_address" {
  description = "VNET destinada a los componentes de control de trafico, autenticacion y autorización de aplicaciones y plataforma de contenedores de PRODUCCION"
  type        = list(string)
}

variable "db_subnet_address" {
  description = "Subnet destinada a db de PRODUCCION"
  type        = list(string)
}

variable "db_subnet_name" {
  description = "Subnet name a db de PRODUCCION"
  type        = list(string)
}

variable "db_subnet_nsg" {
  description = "Subnet name a db de PRODUCCION"
  type        = list(string)  
}

variable "frontend_vnet_address" {
  description = "VNET destinada a los componentes de control de trafico, autenticacion y autorización de aplicaciones y plataforma de contenedores de PRODUCCION"
  type        = list(string)
}

variable "frontend_subnet_address" {
  description = "Subnet destinada a frontend de PRODUCCION"
  type        = list(string)
}

variable "frontend_subnet_name" {
  description = "Subnet name a frontend de PRODUCCION"
  type        = list(string)
}
variable "frontend_subnet_nsg" {
  description = "Subnet name a frontend de PRODUCCION"
  type        = list(string)  
}

variable "backend_vnet_address" {
  description = "VNET destinada a los componentes de control de trafico, autenticacion y autorización de aplicaciones y plataforma de contenedores de PRODUCCION"
  type        = list(string)
}

variable "backend_subnet_address" {
  description = "Subnet destinada a backend de PRODUCCION"
  type        = list(string)
}

variable "backend_subnet_name" {
  description = "Subnet name a backend de PRODUCCION"
  type        = list(string)
}

variable "backend_subnet_nsg" {
  description = "Subnet name a backend de PRODUCCION"
  type        = list(string)  
}

variable "scaleset_vnet_address" {
  description = "VNET destinada a los componentes de control de trafico, autenticacion y autorización de aplicaciones y plataforma de contenedores de PRODUCCION"
  type        = list(string)
}

variable "scaleset_subnet_address" {
  description = "Subnet destinada a scaleset de PRODUCCION"
  type        = list(string)
}

variable "scaleset_subnet_name" {
  description = "Subnet name a scaleset de PRODUCCION"
  type        = list(string)
}

variable "scaleset_subnet_nsg" {
  description = "Subnet name a scaleset de PRODUCCION"
  type        = list(string)  
}

######### api_gateway

variable "frontend_port_var" {
  description = "(Required) The port used for this Frontend Port"
  type = number  
}

variable "cookie_based_affinity_var" {
  type        = string  
  description = "(Required) Is Cookie-Based Affinity enabled? Possible values are Enabled and Disabled."
}

variable "backend_http_setting_path_var" {
  type        = string  
  description = "(Required) Is Cookie-Based Affinity enabled? Possible values are Enabled and Disabled."
}

variable "backend_http_setting_port_var" {
  description = "(Required) The port used for this Backend Port"
  type = number  
}

variable "backend_http_setting_protocol_var" {
  description = "(Required) The Protocol which should be used. Possible values are Http and Https."
  type        = string
}

variable "backend_http_setting_request_timeout_var" {
  description = "(Optional) The request timeout in seconds, which must be between 1 and 86400 seconds. Defaults to 30"
  type = number
}

variable "frontend_protocol_var" {
  description = "(Required) The Protocol to use for this HTTP Listener. Possible values are Http and Https"
  type        = string
}

variable "request_routing_rule_priority_var" {
  description = "(Optional) Rule evaluation order can be dictated by specifying an integer value from 1 to 20000 with 1 being the highest priority and 20000 being the lowest priority."
  type = number
}

variable "request_routing_rule_type_var" {
  description = "(Required) The Type of Routing that should be used for this Rule. Possible values are Basic and PathBasedRouting"
  type        = string
}

variable "waf_enabled_var" {
  description = "(Required) Is the Web Application Firewall enabled?"
  default = true
  type = bool
}

variable "waf_firewall_mode_var" {  
  description = "(Required) The Web Application Firewall Mode. Possible values are Detection and Prevention"
  type = string
}

variable "waf_rule_set_type_var" {  
  description = "(Optional) The Type of the Rule Set used for this Web Application Firewall. Possible values are OWASP and Microsoft_BotManagerRuleSet"
  type = string
}

variable "waf_rule_set_version_var" {
  description = "(Required) The Version of the Rule Set used for this Web Application Firewall. Possible values are 0.1, 1.0, 2.2.9, 3.0, 3.1 and 3.2"
  type = string
}


################################AKS VARIABLES################################

variable "aks_version" {
  description = "Versión del AKS"
    type = string
}

variable "aks_sku" {
  description = "SKU del AKS"
    type = string
}

# variable "aks_system_node_count" {
#   description = "Numero de Nodos de AKS para el nodepool System"
#   type        = number
# }

variable "aks_system_node_size" {
  description = "Tamaño del nodo de AKS para el nodepool System"
  type        = string
}

# variable "aks_app_node_count" {
#   description = "Numero de Nodos de AKS para el nodepool App"
#   type        = number
# }

# variable "aks_app_node_size" {
#   description = "Tamaño del nodo de AKS para el nodepool App"
#   type        = string
# }
