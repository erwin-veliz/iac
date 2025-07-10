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

variable "location" {
  description = "Region Azure en donde se desplegará el recurso"
    type = string
}

variable "global-tags" {
  description = "Abreviaciones globales para todos los recursos"
  type = object({
    project    = string
    businessowner = string
    environment      = string
  })
}