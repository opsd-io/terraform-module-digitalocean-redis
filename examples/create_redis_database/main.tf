module "Digitalocean_redis_example" {
  source               = "github.com/opsd-io/terraform-module-digitalocean-redis?ref=2-add-spare-node-for-redis"
  cluster_name         = "example-redis-cluster"
  redis_version        = "7"
  node_size            = "db-s-1vcpu-2gb"
  region               = "nyc1"
  node_count           = 1
  common_tags          = ["production"]
  firewall_rules       = ["192.168.0.1", "192.168.0.2", "192.168.0.8"]
  replica_enable       = true
  replica_node_size    = "db-s-1vcpu-2gb"
  replica_cluster_name = "example-redis--replica-cluster"
  replica_region       = "nyc1"
}
