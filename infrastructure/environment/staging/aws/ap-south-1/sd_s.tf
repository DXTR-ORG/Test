module "sd_s" {
  # The environment name for the deployment (e.g., staging, production)
  env_name = "staging-ap-south-1"

  # The name of the layer, typically indicating the region and environment
  layer_name = "staging-ap-south-1"

  # The name of the module being used
  module_name = "sd_s"

  # CIDR blocks for the private subnets
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # IDs for the private subnets
  private_subnet_ids = []  # This should contain the actual subnet IDs in a real configuration

  # CIDR blocks for the public subnets
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # IDs for the public subnets
  public_subnet_ids = []  # This should contain the actual subnet IDs in a real configuration

  # The total CIDR block for the VPC
  total_ipv4_cidr_block = "10.0.0.0/16"

  # The ID of the VPC
  vpc_id = ""  # This should contain the actual VPC ID in a real configuration

  # Log retention period for VPC flow logs
  vpc_log_retention = 90

  # Source for the module, including a reference to the branch or tag
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"
}

output "kms_account_key_arn" {
  # ARN of the KMS account key
  value = module.sd_s.kms_account_key_arn
}

output "kms_account_key_id" {
  # ID of the KMS account key
  value = module.sd_s.kms_account_key_id
}

output "private_subnet_ids" {
  # IDs of the private subnets
  value = module.sd_s.private_subnet_ids
}

output "public_nat_ips" {
  # NAT IPs for the public subnets
  value = module.sd_s.public_nat_ips
}

output "public_subnets_ids" {
  # IDs of the public subnets
  value = module.sd_s.public_subnets_ids
}

output "s3_log_bucket_name" {
  # Name of the S3 bucket for logs
  value = module.sd_s.s3_log_bucket_name
}

output "vpc_id" {
  # ID of the VPC
  value = module.sd_s.vpc_id
}