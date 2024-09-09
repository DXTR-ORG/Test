module "aws_base" {
  # Environment name
  env_name = "staging-ap-south-1"

  # Layer name
  layer_name = "staging-ap-south-1"

  # Module name
  module_name = "AWS Base"

  # Private IPv4 CIDR blocks
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # Private Subnet IDs. Provide valid subnet IDs here.
  private_subnet_ids = []

  # Public IPv4 CIDR blocks
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Public Subnet IDs. Provide valid subnet IDs here.
  public_subnet_ids = []

  # Total IPv4 CIDR block
  total_ipv4_cidr_block = "10.0.0.0/16"

  # VPC ID. Provide a valid VPC ID here.
  vpc_id = ""

  # VPC Log Retention in days
  vpc_log_retention = 90

  # Source of the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"
}

output "kms_account_key_arn" {
  value = module.aws_base.kms_account_key_arn
}

output "kms_account_key_id" {
  value = module.aws_base.kms_account_key_id
}

output "private_subnet_ids" {
  value = module.aws_base.private_subnet_ids
}

output "public_nat_ips" {
  value = module.aws_base.public_nat_ips
}

output "public_subnets_ids" {
  value = module.aws_base.public_subnets_ids
}

output "s3_log_bucket_name" {
  value = module.aws_base.s3_log_bucket_name
}

output "vpc_id" {
  value = module.aws_base.vpc_id
}