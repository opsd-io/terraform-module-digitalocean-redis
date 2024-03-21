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
module "terraform-module-digitalocean-redis" {
  source  = "github.com/opsd-io/terraform-module-digitalocean-redis"

  # Variables
  databasename          = "example-redis-cluster"
  engine                = "redis"
  version_of_engine     = "7"
  mysql_main_size       = "db-s-1vcpu-1gb"
  region                = "nyc1"
  mysql_main_node_count = 1
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
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | 2.34.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.34.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_database_cluster.redis_main](https://registry.terraform.io/providers/digitalocean/digitalocean/2.34.1/docs/resources/database_cluster) | resource |
| [digitalocean_database_firewall.firewall](https://registry.terraform.io/providers/digitalocean/digitalocean/2.34.1/docs/resources/database_firewall) | resource |
| [digitalocean_database_redis_config.redis_main](https://registry.terraform.io/providers/digitalocean/digitalocean/2.34.1/docs/resources/database_redis_config) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | A list of tag names to be applied to the database cluster. | `set(string)` | n/a | yes |
| <a name="input_databasename"></a> [databasename](#input\_databasename) | The name of the database cluster. | `string` | n/a | yes |
| <a name="input_engine"></a> [engine](#input\_engine) | Database engine used by the cluster. | `string` | `"redis"` | no |
| <a name="input_firewall_rules"></a> [firewall\_rules](#input\_firewall\_rules) | List of trusted sources associated with the cluster. | `set(string)` | `[]` | no |
| <a name="input_redis_main_node_count"></a> [redis\_main\_node\_count](#input\_redis\_main\_node\_count) | Number of redis nodes that will be created. | `number` | `1` | no |
| <a name="input_redis_main_size"></a> [redis\_main\_size](#input\_redis\_main\_size) | The redis node instance size. | `string` | `"db-s-1vcpu-1gb"` | no |
| <a name="input_region"></a> [region](#input\_region) | DigitalOcean region where the cluster will reside. | `string` | n/a | yes |
| <a name="input_version_of_engine"></a> [version\_of\_engine](#input\_version\_of\_engine) | Engine version used by the cluster. | `number` | `7` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_firewall_id"></a> [database\_firewall\_id](#output\_database\_firewall\_id) | A unique identifier for the firewall |
| <a name="output_redis_main_default_database"></a> [redis\_main\_default\_database](#output\_redis\_main\_default\_database) | Name of the cluster's default database. |
| <a name="output_redis_main_default_user"></a> [redis\_main\_default\_user](#output\_redis\_main\_default\_user) | Username for the cluster's default user. |
| <a name="output_redis_main_default_user_password"></a> [redis\_main\_default\_user\_password](#output\_redis\_main\_default\_user\_password) | Password for the cluster's default user. |
| <a name="output_redis_main_host"></a> [redis\_main\_host](#output\_redis\_main\_host) | Database cluster's hostname. |
| <a name="output_redis_main_host_id"></a> [redis\_main\_host\_id](#output\_redis\_main\_host\_id) | The ID of the database cluster. |
| <a name="output_redis_main_port"></a> [redis\_main\_port](#output\_redis\_main\_port) | Network port that the database cluster is listening on. |
| <a name="output_redis_main_private_host"></a> [redis\_main\_private\_host](#output\_redis\_main\_private\_host) | Same as host, but only accessible from resources within the account and in the same region. |
| <a name="output_redis_main_private_uri"></a> [redis\_main\_private\_uri](#output\_redis\_main\_private\_uri) | Same as uri, but only accessible from resources within the account and in the same region. |
| <a name="output_redis_main_uri"></a> [redis\_main\_uri](#output\_redis\_main\_uri) | The full URI for connecting to the database cluster. |
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
