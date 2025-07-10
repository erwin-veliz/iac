output "full_name" {
  description = "Combination of environment, application name and application role"
  #value       = var.resource_incremental != "" ? local.full_name_without_incremental : var.purpose_abreviation != "" ? local.full_name_with_purpose : local.full_name_without_purpose
  value       = var.resource_incremental == "" ? local.full_name_without_incremental : var.purpose_abreviation != "" ? local.full_name_with_purpose : local.full_name_without_purpose  
}