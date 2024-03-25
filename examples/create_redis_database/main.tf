module "Digitalocean_redis_example" {
  source         = "github.com/opsd-io/terraform-module-digitalocean-redis?ref=1-create-redis-terraform-module"
  cluster_name   = "example-redis-cluster"
  redis_version  = "7"
  node_size      = "db-s-1vcpu-1gb"
  region         = "nyc1"
  node_count     = 1
  common_tags    = ["production"]
  firewall_rules = ["192.168.0.1", "192.168.0.2", "192.168.0.8"]
}
