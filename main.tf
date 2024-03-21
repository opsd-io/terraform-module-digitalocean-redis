resource "digitalocean_database_redis_config" "redis_main" {
  cluster_id             = digitalocean_database_cluster.redis_main.id
  maxmemory_policy       = "allkeys-lru"
  notify_keyspace_events = "KEA"
  timeout                = 90
}

#---------------------------------------------#
#Description : adding database firewall rules.
#---------------------------------------------#
resource "digitalocean_database_firewall" "firewall" {
  cluster_id = digitalocean_database_cluster.redis_main.id

  dynamic "rule" {
    for_each = var.firewall_rules
    content {
      type  = "ip_addr"
      value = rule.value
    }
  }
}
#---------------------------------------------#
#Description : adding users to database.
#---------------------------------------------#
resource "digitalocean_database_user" "user" {
  for_each   = var.database_users
  cluster_id = digitalocean_database_cluster.redis_main.id
  name       = each.key
}
#---------------------------------------------#
#Description : creating main database.
#---------------------------------------------#
resource "digitalocean_database_cluster" "redis_main" {
  name       = var.databasename
  engine     = var.engine
  version    = var.version_of_engine
  size       = var.redis_main_size
  region     = var.region
  node_count = var.redis_main_node_count
  tags       = var.common_tags
}
