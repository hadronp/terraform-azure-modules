## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.aks-cluster](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aks_cluster_name"></a> [aks\_cluster\_name](#input\_aks\_cluster\_name) | AKS cluster name | `string` | n/a | yes |
| <a name="input_aks_resource_group_location"></a> [aks\_resource\_group\_location](#input\_aks\_resource\_group\_location) | Resource Group location | `string` | `"Australia Southeast"` | no |
| <a name="input_aks_resource_group_name"></a> [aks\_resource\_group\_name](#input\_aks\_resource\_group\_name) | Resource Group name | `string` | n/a | yes |
| <a name="input_api_server_authorized_ip_ranges"></a> [api\_server\_authorized\_ip\_ranges](#input\_api\_server\_authorized\_ip\_ranges) | Whitelist ip range AVD-AZU-0041 | `string` | `"0.0.0.0/32"` | no |
| <a name="input_default_node_pool"></a> [default\_node\_pool](#input\_default\_node\_pool) | Default node pool parameters | `any` | `{}` | no |
| <a name="input_dns_prefix"></a> [dns\_prefix](#input\_dns\_prefix) | DNS prefix | `string` | n/a | yes |
| <a name="input_identity"></a> [identity](#input\_identity) | identity block | `map(string)` | <pre>{<br>  "type": "SystemAssigned"<br>}</pre> | no |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | Identity type | `string` | `"SystemAssigned"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to resources created by this module | `map(string)` | <pre>{<br>  "applicationName": "TF-managed Azure resource ",<br>  "deploymentType": "Terraform",<br>  "env": "dev",<br>  "managedBy": "hadronp"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_certificate"></a> [client\_certificate](#output\_client\_certificate) | Client certificate |
| <a name="output_kube_config"></a> [kube\_config](#output\_kube\_config) | Kube config (obfuscated) |
