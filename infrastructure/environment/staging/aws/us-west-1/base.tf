module "base" {
  env_name                  = "staging-us-west-1"                     # Environment name
  layer_name                = "staging-us-west-1"                     # Layer name
  module_name               = "base"                                  # Module name
  private_ipv4_cidr_blocks  = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]  # Private CIDR blocks
  private_subnet_ids        = []                                      # Private subnet IDs
  public_ipv4_cidr_blocks   = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]      # Public CIDR blocks
  public_subnet_ids         = []                                      # Public subnet IDs
  total_ipv4_cidr_block     = "10.0.0.0/16"                           # Total VPC CIDR block
  vpc_id                    = ""                                      # VPC ID
  vpc_log_retention         = 90                                      # VPC log retention in days
  source                    = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"  # Source module URL
}

output "kms_account_key_arn" {
  value = module.base.kms_account_key_arn                             # KMS Account Key ARN
}

output "kms_account_key_id" {
  value = module.base.kms_account_key_id                              # KMS Account Key ID
}

output "private_subnet_ids" {
  value = module.base.private_subnet_ids                              # Private Subnet IDs
}

output "public_nat_ips" {
  value = module.base.public_nat_ips                                  # Public NAT IPs
}

output "public_subnets_ids" {
  value = module.base.public_subnet_ids                               # Public Subnet IDs
}

output "s3_log_bucket_name" {
  value = module.base.s3_log_bucket_name                              # S3 Log Bucket Name
}

output "vpc_id" {
  value = module.base.vpc_id                                          # VPC ID
}