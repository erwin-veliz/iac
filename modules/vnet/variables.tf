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

variable "global-abreviations" {
  description = "Abreviaciones globales para todos los recursos"
  type = object({
    environment = string
    cloud = string
  })
}

variable "global-tags" {
  description = "Abreviaciones globales para todos los recursos"
  type = map(string)
}

###########################################################

variable "resource_group_name" {
  description = "Nombre del resource group previamente creado en donde se aprovisionará la vnet. Ej. rg-hbk-dev-001"
  type        = string
}

variable "location" {
  description = "Locacion donde se va aprovisionar. Ej. eastus"
  type        = string
}

variable "vnet_address_space" {
  description = "El address space que va a tener la vnet. Ej. [\"10.200.0.0/21\"]"
  type        = list(string)
}

variable "subnet_address" {
  description = "Arreglo de address space que va a tener las subnets. Ej. [\"10.200.4.128/26\", \"10.200.1.128/24\"]"
  type        = list(string)
  default     = []
}

variable "subnet_name" {
  description = "Arreglo de address space que va a tener las subnets. Ej. [\"10.200.4.128/26\", \"10.200.1.128/24\"]"
  type        = list(string)
  default     = []
}

variable "create_nsg" {
  description = "Flag para crear NSG asociado a la subnet"
  type = list(bool)
  default     = []
}
