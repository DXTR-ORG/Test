module "base" {
  # Name of the environment
  env_name = "test-ap-south-1"

  # Name of the layer
  layer_name = "test-ap-south-1"

  # Name of the module
  module_name = "base"

  # CIDR blocks for private subnets
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # Subnet IDs for private subnets, null indicating they will be created
  private_subnet_ids = null

  # CIDR blocks for public subnets
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Subnet IDs for public subnets, null indicating they will be created
  public_subnet_ids = null

  # CIDR block for the entire VPC
  total_ipv4_cidr_block = "10.0.0.0/16"

  # ID of the VPC, empty indicating it will be created
  vpc_id = ""

  # Log retention for VPC flow logs in days
  vpc_log_retention = 90

  # Source path for the module
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