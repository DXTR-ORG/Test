module "base" {
  # Name of the environment
  env_name = "staging-ap-south-1"

  # Name of the layer
  layer_name = "staging-ap-south-1"

  # Name of the module
  module_name = "base"

  # Private IPv4 CIDR blocks
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # Private subnet IDs
  private_subnet_ids = []  # Specify private subnet IDs or leave as an empty list

  # Public IPv4 CIDR blocks
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Public subnet IDs
  public_subnet_ids = []  # Specify public subnet IDs or leave as an empty list

  # Total IPv4 CIDR block
  total_ipv4_cidr_block = "10.0.0.0/16"

  # VPC ID
  vpc_id = ""  # Specify VPC ID or leave as an empty string

  # VPC log retention period in days
  vpc_log_retention = 90

  # Source of the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"
}

output "kms_account_key_arn" {
  value = module.base.kms_account_key_arn
}

output "kms_account_key_id" {
  value = module.base.kms_account_key_id
}

output "private_subnet_ids" {
  value = module.base.private_subnet_ids
}

output "public_nat_ips" {
  value = module.base.public_nat_ips
}

output "public_subnets_ids" {
  value = module.base.public_subnets_ids
}

output "s3_log_bucket_name" {
  value = module.base.s3_log_bucket_name
}

output "vpc_id" {
  value = module.base.vpc_id
}