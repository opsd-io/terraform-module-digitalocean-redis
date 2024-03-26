variable "cluster_name" {
  description = "The name of the database cluster."
  type        = string
  nullable    = false
}
variable "replica_cluster_name" {
  description = "The name of the replica database cluster."
  type        = string
  nullable    = false
}
variable "node_count" {
  description = "Number of redis nodes that will be created."
  type        = number
  default     = 1
}
variable "node_size" {
  description = "The redis node instance size."
  type        = string
  default     = "db-s-1vcpu-1gb"
}
variable "replica_node_size" {
  description = "The redis replica node instance size."
  type        = string
  default     = "db-s-1vcpu-1gb"
}
variable "redis_version" {
  description = "Engine version used by the cluster."
  type        = number
  default     = 7
}
variable "region" {
  description = "DigitalOcean region where the cluster will reside."
  type        = string
  nullable    = false
}
variable "replica_region" {
  description = "DigitalOcean replica region where the cluster will reside."
  type        = string
  nullable    = false
}
variable "common_tags" {
  description = "A list of tag names to be applied to the database cluster."
  type        = set(string)
}

variable "firewall_rules" {
  description = "List of trusted sources associated with the cluster."
  type        = set(string)
  default     = []
}
variable "replica_enable" {
  type        = bool
  default     = false
  description = "Flag to control the replica creation."
}
