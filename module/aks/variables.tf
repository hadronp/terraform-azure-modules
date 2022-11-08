variable "aks_cluster_name" {
  description = "AKS cluster name"
  type        = string
}

variable "aks_resource_group_location" {
  description = "Resource Group location"
  default     = "Australia Southeast"
}

variable "aks_resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix"
  type        = string
}

variable "api_server_authorized_ip_ranges" {
  description = "Whitelist ip range AVD-AZU-0041"
  default     = "0.0.0.0/32"
}


variable "identity_type" {
  description = "Identity type"
  default     = "SystemAssigned"
}

variable "identity" {
  description = "identity block"
  type        = map(string)

  default = {
    type = "SystemAssigned"
  }
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

variable "default_node_pool" {
  description = "Default node pool parameters"
  type        = any
  default     = {}
}