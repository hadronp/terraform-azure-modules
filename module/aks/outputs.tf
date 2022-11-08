output "client_certificate" {
  value       = azurerm_kubernetes_cluster.aks-cluster.kube_config.0.client_certificate
  description = "Client certificate"
}

output "kube_config" {
  value       = azurerm_kubernetes_cluster.aks-cluster.kube_config_raw
  sensitive   = true
  description = "Kube config (obfuscated)"
}