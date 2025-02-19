<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/opsd-io/terraform-module-template/main/.github/img/opsd-github-repo-dark-mode.svg">
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/opsd-io/terraform-module-template/main/.github/img/opsd-github-repo-light-mode.svg">
  <img alt="OPSd - the unique and effortless way of managing cloud infrastructure." src="https://raw.githubusercontent.com/opsd-io/terraform-module-template/update-tools/.github/img/opsd-github-repo-light-mode.svg" width="400">
</picture>

Meet **OPSd**. The unique and effortless way of managing cloud infrastructure.

# terraform-module-template

## Introduction

What does the module provide?

## Usage

```hcl
module "example" {
  source = "github.com/opsd-io/terraform-module-digitalocean-redis?ref=main"

  databasename          = "example-redis-cluster"
  redis_version         = "7"
  node_size             = "db-s-1vcpu-1gb"
  region                = "nyc1"
  node_count            = 1
  common_tags           = ["production"]
  firewall_rules        = ["192.168.0.1", "192.168.0.2", "192.168.0.8"]
}
```

**IMPORTANT**: Make sure not to pin to master because there may be breaking changes between releases.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.5 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 2.34.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 2.34.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_database_cluster.main](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/database_cluster) | resource |
| [digitalocean_database_firewall.main](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/database_firewall) | resource |
| [digitalocean_database_redis_config.main](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/database_redis_config) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the database cluster. | `string` | n/a | yes |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | A list of tag names to be applied to the database cluster. | `set(string)` | `[]` | no |
| <a name="input_firewall_rules"></a> [firewall\_rules](#input\_firewall\_rules) | List of trusted sources associated with the cluster. | `set(string)` | `[]` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | Number of redis nodes that will be created. | `number` | `1` | no |
| <a name="input_node_size"></a> [node\_size](#input\_node\_size) | The redis node instance size. | `string` | `"db-s-1vcpu-1gb"` | no |
| <a name="input_redis_version"></a> [redis\_version](#input\_redis\_version) | Engine version used by the cluster. | `number` | `7` | no |
| <a name="input_region"></a> [region](#input\_region) | DigitalOcean region where the cluster will reside. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_default_database"></a> [cluster\_default\_database](#output\_cluster\_default\_database) | Name of the cluster's default database. |
| <a name="output_cluster_default_user"></a> [cluster\_default\_user](#output\_cluster\_default\_user) | Username for the cluster's default user. |
| <a name="output_cluster_default_user_password"></a> [cluster\_default\_user\_password](#output\_cluster\_default\_user\_password) | Password for the cluster's default user. |
| <a name="output_cluster_host"></a> [cluster\_host](#output\_cluster\_host) | Database cluster's hostname. |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | The ID of the database cluster. |
| <a name="output_cluster_main_uri"></a> [cluster\_main\_uri](#output\_cluster\_main\_uri) | The full URI for connecting to the database cluster. |
| <a name="output_cluster_port"></a> [cluster\_port](#output\_cluster\_port) | Network port that the database cluster is listening on. |
| <a name="output_cluster_private_host"></a> [cluster\_private\_host](#output\_cluster\_private\_host) | Same as host, but only accessible from resources within the account and in the same region. |
| <a name="output_cluster_private_uri"></a> [cluster\_private\_uri](#output\_cluster\_private\_uri) | Same as uri, but only accessible from resources within the account and in the same region. |
| <a name="output_firewall_id"></a> [firewall\_id](#output\_firewall\_id) | A unique identifier for the firewall. |
<!-- END_TF_DOCS -->

## Examples of usage

Do you want to see how the module works? See all the [usage examples](examples).

## Related modules

The list of related modules (if present).

## Contributing

If you are interested in contributing to the project, see see our [guide](https://github.com/opsd-io/contribution).

## Support

If you have a problem with the module or want to propose a new feature, you can report it via the project's (Github) issue tracker.

If you want to discuss something in person, you can join our community on [Slack](https://join.slack.com/t/opsd-community/signup).

## License

[Apache License 2.0](LICENSE)
