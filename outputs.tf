output "main_host_id" {
  description = "The ID of the database cluster."
  value       = digitalocean_database_cluster.main.id
}

output "main_host" {
  description = "Database cluster's hostname."
  value       = digitalocean_database_cluster.main.host
}

output "main_private_host" {
  description = "Same as host, but only accessible from resources within the account and in the same region."
  value       = digitalocean_database_cluster.main.private_host
}

output "redis_main_port" {
  description = "Network port that the database cluster is listening on."
  value       = digitalocean_database_cluster.main.port
}

output "redis_main_uri" {
  description = "The full URI for connecting to the database cluster."
  value       = digitalocean_database_cluster.main.uri
  sensitive   = true
}

output "redis_main_private_uri" {
  description = "Same as uri, but only accessible from resources within the account and in the same region."
  value       = digitalocean_database_cluster.main.private_uri
  sensitive   = true
}

output "main_default_database" {
  description = "Name of the cluster's default database."
  value       = digitalocean_database_cluster.main.database
}

output "main_default_user" {
  description = "Username for the cluster's default user."
  value       = digitalocean_database_cluster.main.user
}

output "main_default_user_password" {
  description = "Password for the cluster's default user."
  value       = digitalocean_database_cluster.main.password
  sensitive   = true
}

output "firewall_id" {
  description = "A unique identifier for the firewall."
  value       = digitalocean_database_firewall.main.id
}
