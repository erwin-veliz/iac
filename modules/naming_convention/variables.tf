variable "resource_incremental" {
  description = "Incremental para la creación de recursos"
  type = string
  default = ""
}

variable "resource_code" {
  description = "Abreviación para el recurso"
  type = string
}

variable "purpose_abreviation" {
  description = "Abreviación para el propósito"
  type = string
  default = ""
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