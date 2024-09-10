module "aws_redis" {
  # Environment name
  env_name = "staging-ap-south-1"

  # Layer name
  layer_name = "staging-ap-south-1"

  # Module name
  module_name = "AWS Redis"

  # Redis node type
  node_type = "cache.m4.large"

  # Redis version
  redis_version = "6.x"

  # Snapshot retention limit
  snapshot_retention_limit = 0

  # Snapshot window
  snapshot_window = "04:00-05:00"

  # Source of the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_redis?ref=main"
}

output "cache_auth_token" {
  # Redis cache authentication token
  value = module.aws_redis.cache_auth_token
}

output "cache_host" {
  # Redis cache host
  value = module.aws_redis.cache_host
}