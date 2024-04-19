terraform {
  required_version = ">= 1.5.5"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2.34.1"
    }
  }
}

resource "digitalocean_database_redis_config" "main" {

  cluster_id             = digitalocean_database_cluster.main.id
  maxmemory_policy       = "allkeys-lru"
  notify_keyspace_events = "KEA"
  timeout                = 90
}

resource "digitalocean_database_firewall" "main" {

  cluster_id = digitalocean_database_cluster.main.id

  dynamic "rule" {
    for_each = var.firewall_rules
    content {
      type  = "ip_addr"
      value = rule.value
    }
  }
}

resource "digitalocean_database_cluster" "main" {

  name       = var.cluster_name
  engine     = "redis"
  version    = var.redis_version
  size       = var.node_size
  region     = var.region
  node_count = var.node_count
  tags       = var.common_tags
}
