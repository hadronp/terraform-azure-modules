resource "azurerm_kubernetes_cluster" "aks-cluster" {
  name                            = var.aks_cluster_name
  location                        = var.aks_resource_group_location
  resource_group_name             = var.aks_resource_group_name
  dns_prefix                      = var.dns_prefix
  api_server_authorized_ip_ranges = var.api_server_authorized_ip_ranges


  dynamic "default_node_pool" {
    for_each = [var.default_node_pool]

    content {
      name       = lookup(default_node_pool.value, "name", "default")
      node_count = lookup(default_node_pool.value, "node_count", 1)
      vm_size    = lookup(default_node_pool.value, "vm_size", "Standard_D2_v2")

    }
  }

  identity {
    type = var.identity_type
  }
}