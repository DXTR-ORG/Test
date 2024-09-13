module "aws_vpn" {
  client_cidr_block   = "dg"
  env_name            = "test-us-east-2"
  kms_account_key_arn = "sdf"
  layer_name          = "test-us-east-2"
  module_name         = "aws_vpn"
  public_subnets_ids  = []               # Needs to be populated with actual subnet ids
  vpc_id              = "sdfg"
  source              = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_vpn?ref=main"
}

output "ovpn_profile_parameter_arn" {
  value = module.aws_vpn.ovpn_profile_parameter_arn
}

output "vpn_ca_cert_parameter_arn" {
  value = module.aws_vpn.vpn_ca_cert_parameter_arn
}

output "vpn_ca_key_parameter_arn" {
  value = module.aws_vpn.vpn_ca_key_parameter_arn
}

output "vpn_dns_name" {
  value = module.aws_vpn.vpn_dns_name
}