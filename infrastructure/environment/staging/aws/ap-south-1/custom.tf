variable "node_type" {
  type    = string
  default = "cache.m4.large"
}

resource "random_password" "redis_auth" {
  length  = 20
  special = false
}

resource "aws_elasticache_replication_group" "redis_cluster" {
  replication_group_id          = "my-redis-cluster"
  replication_group_description = "Redis replication group"
  node_type                     = var.node_type
  number_cache_clusters         = 1
  auth_token                    = random_password.redis_auth.result

  # Additional required attributes might be necessary here
}

output "cache_auth_token" {
  value     = aws_elasticache_replication_group.redis_cluster.auth_token
  sensitive = true
}