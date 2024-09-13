module "Policy" {
  env_name     = "test-us-east-2"
  file         = "asd"
  layer_name   = "test-us-east-2"
  module_name  = "Policy"
  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_iam_policy?ref=main"
}

output "policy_arn" {
  value = module.Policy.policy_arn
}

output "policy_id" {
  value = module.Policy.policy_id
}

output "policy_name" {
  value = module.Policy.policy_name
}