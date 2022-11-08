variable "resource_group_name" {
  type        = string
  description = "Resource Group name"
}

variable "location" {
  type        = string
  default     = "Australia East"
  description = "Location of Resource Group"
}

variable "tags" {
  description = "Tags to apply to resources created by this module"
  type        = map(string)
  default = {
    applicationName = "TF-managed Azure resource "
    managedBy       = "hadronp"
    deploymentType  = "Terraform"
    env             = "dev"
  }
}