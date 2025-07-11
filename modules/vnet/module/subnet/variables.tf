################################################################
# Variables globales

variable "purpose_abreviation" {
  description = "Abreviación para el propósito"
  type = string
  default = ""
}

variable "global-abreviations" {
  description = "Abreviaciones globales para todos los recursos"
  type = object({
    environment = string
    cloud = string
  })
}

##########################################################################

variable "subnet_address" {
  description = "El address space que va a tener la subnet. Ej. 10.200.4.128/26"
  type        = string
}

/* variable "subnet_name" {
  description = "El address space que va a tener la subnet. Ej. 10.200.4.128/26"
  type        = string
} */

variable "vnet_name" {
  description = "Nombre de la vnet previamente creada en donde se aprovisionará la subnet. Ej. vnet-hbk-dev-001"
  type        = string
}

variable "resource_group_name" {
  description = "Nombre del resource group previamente creado en donde se aprovisionará la subnet. Ej. rg-hbk-dev-001"
  type        = string
}

# variable "private_link_service_network_policies_enabled" {
#   description = "Habilite o deshabilite las políticas de red para el servicio private link en la subred"
#   type        = bool
#   default     = true
# }

######################nsg##############################################

variable "create_nsg" {
  description = "Flag para crear NSG asociado a la subnet"
  type = bool
}

variable "location" {
  description = "Region Azure en donde se desplegará el recurso"
    type = string
}

variable "nsg_inbound_rules" {
  type        = list(map(string))
  default     = []
  description = "List of objects that represent the configuration of each inbound rule."
}


variable "nsg_outbound_rules" {
  type        = list(map(string))
  default     = []
  description = "List of objects that represent the configuration of each outbound rule."
}