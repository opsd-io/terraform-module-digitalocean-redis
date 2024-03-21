module "Digitalocean_redis" {
  source                = "github.com/opsd-io/terraform-module-digitalocean-redis?ref=1-create-redis-terraform-module"
  databasename          = "example-redis-cluster"
  engine                = "redis"
  version_of_engine     = "7"
  redis_main_size       = "db-s-1vcpu-1gb"
  region                = "nyc1"
  redis_main_node_count = 1
  common_tags           = ["production"]
  database_users        = ["Admin", "Mark", "Robert"]
  firewall_rules        = ["192.168.0.1", "192.168.0.2", "192.168.0.8"]
}
