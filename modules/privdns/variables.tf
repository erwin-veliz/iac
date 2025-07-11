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

# variable "resource_incremental" {
#   default = "01"
#   description = "Incremental para la creación de recursos"
#   type = string
# }

variable "dns_name" {
  description = "Nombre del DNS"
  type = string
}

variable "vnet_name_for_link" {
  description = "Nombre de la Vnet para crear virtualnetworklink"
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

variable "global-tags" {
  description = "Abreviaciones globales para todos los recursos"
  type = object({
    PROYECTO    = string
    CELULA = string
    AMBIENTE      = string
    DESPLIEGUE      = string
  })
}

variable "vnet_id" {
  description = "vnet id"
  type = string
}