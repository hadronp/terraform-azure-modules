output "resource_group" {
  value       = azurerm_resource_group.rg.name
  description = "Resource Group"
}

output "location" {
  value       = azurerm_resource_group.rg.location
  description = "Resource Group location"
}

output "name" {
  value       = azurerm_resource_group.rg.name
  description = "Resource Group name"
}