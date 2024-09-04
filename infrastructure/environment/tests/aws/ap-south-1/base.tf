module "base" {
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  total_ipv4_cidr_block = "10.0.0.0/16"

  vpc_log_retention = 90

  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"

  env_name = "tests-ap-south-1"

  layer_name = "tests-ap-south-1"

  module_name = "base"
}

# Output the ARN of the KMS account key
output "kms_account_key_arn" {
  value = module.base.kms_account_key_arn
}

# Output the ID of the KMS account key
output "kms_account_key_id" {
  value = module.base.kms_account_key_id
}

# Output the IDs of private subnets
output "private_subnet_ids" {
  value = module.base.private_subnet_ids
}

# Output the public NAT IPs
output "public_nat_ips" {
  value = module.base.public_nat_ips
}

# Output the IDs of public subnets
output "public_subnets_ids" {
  value = module.base.public_subnets_ids
}

# Output the name of the S3 log bucket
output "s3_log_bucket_name" {
  value = module.base.s3_log_bucket_name
}

# Output the VPC ID
output "vpc_id" {
  value = module.base.vpc_id
}