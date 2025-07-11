# Variable propias del recurso



################################################################
# Variables globales

variable "purpose_description" {
  description = "Descripción para el propósito"
  type = string
}

variable "purpose_abreviation" {
  description = "Abreviación para el propósito"
  type = string
  default = ""
}

variable "resource_incremental" {
  default = "01"
  description = "Incremental para la creación de recursos"
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

variable "resource_group_name" {
  description = "Nombre del resource group en donde se creará el recurso"
    type = string
}

variable "location" {
  description = "Region Azure en donde se desplegará el recurso"
    type = string
}

variable "global-tags" {
  description = "Abreviaciones globales para todos los recursos"
  type = object({
    PROYECTO    = string
    CELULA = string
    AMBIENTE      = string
    DESPLIEGUE      = string
  })
}

# Variable propias del recurso
# variable "subnet_id" {
#   description = "Subnet para el private endpoint"
#   type        = string
# }

# variable "dns" {
#   description = "Datos de la Zona DNS privada donde se registrará el Private Endpoint"
#   type = object({
#     zone_ids  = list(string)
#     zone_name = string
#   })
#   default     = {zone_ids=[],zone_name=""}
# }

# variable "private_endpoint_incremental" {
#   description = "Incremental para la creación del private endpoint"
#   type = string
# }
