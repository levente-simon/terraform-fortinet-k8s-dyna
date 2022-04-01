## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_fortios"></a> [fortios](#requirement\_fortios) | >= 1.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_fortios"></a> [fortios](#provider\_fortios) | >= 1.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [fortios_firewall_address.dyna_address](https://registry.terraform.io/providers/fortinetdev/fortios/latest/docs/resources/firewall_address) | resource |
| [fortios_firewall_policy.kube_cluster](https://registry.terraform.io/providers/fortinetdev/fortios/latest/docs/resources/firewall_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_name"></a> [address\_name](#input\_address\_name) | n/a | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | n/a | `string` | n/a | yes |
| <a name="input_dstintf"></a> [dstintf](#input\_dstintf) | n/a | `string` | n/a | yes |
| <a name="input_forti_hostname"></a> [forti\_hostname](#input\_forti\_hostname) | n/a | `string` | n/a | yes |
| <a name="input_forti_token"></a> [forti\_token](#input\_forti\_token) | n/a | `string` | n/a | yes |
| <a name="input_insecure"></a> [insecure](#input\_insecure) | n/a | `bool` | n/a | yes |
| <a name="input_k8s_label"></a> [k8s\_label](#input\_k8s\_label) | n/a | `string` | n/a | yes |
| <a name="input_sdn"></a> [sdn](#input\_sdn) | n/a | `string` | n/a | yes |
| <a name="input_module_depends_on"></a> [module\_depends\_on](#input\_module\_depends\_on) | n/a | `any` | `[]` | no |
| <a name="input_service"></a> [service](#input\_service) | n/a | `list(string)` | <pre>[<br>  "HTTPS",<br>  "HTTP"<br>]</pre> | no |
| <a name="input_srcaddr"></a> [srcaddr](#input\_srcaddr) | n/a | `list(string)` | <pre>[<br>  "all"<br>]</pre> | no |
| <a name="input_srcintf"></a> [srcintf](#input\_srcintf) | n/a | `list(string)` | <pre>[<br>  "any"<br>]</pre> | no |

## Outputs

No outputs.
