locals {
  full_name_with_purpose = "${var.global-abreviations.cloud}${var.global-abreviations.environment}-${var.purpose_abreviation}-${var.resource_code}-${var.resource_incremental}"
  full_name_without_purpose = "${var.global-abreviations.cloud}${var.global-abreviations.environment}-${var.resource_code}-${var.resource_incremental}"
  full_name_without_incremental = "${var.global-abreviations.cloud}${var.global-abreviations.environment}-${var.purpose_abreviation}-${var.resource_code}"  
}