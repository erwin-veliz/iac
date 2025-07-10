locals {
  tags = {
    Project = var.global-tags.project
    BusinessOwner = var.global-tags.businessowner
    Environment     = var.global-tags.environment
    Purpose = var.purpose_description
  }
}