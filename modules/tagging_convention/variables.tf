variable "purpose_description" {
  description = "Descripción para el propósito"
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