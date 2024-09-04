module "dns" {
  delegated    = false
  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  env_name     = "tests-us-west-1"
  layer_name   = "tests-us-west-1"
  module_name  = "dns"
  domain       = "example.com"
}

output "zone_id" {
  value = module.dns.zone_id
}

output "name_servers" {
  value = module.dns.name_servers
}

output "domain" {
  value = module.dns.domain
}

output "cert_arn" {
  value = module.dns.cert_arn
}