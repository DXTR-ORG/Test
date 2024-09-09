module "aws_iam_policy" {
  # Environment name for the IAM policy
  env_name   = "staging-us-west-1"

  # File name (if applicable, currently left blank)
  file       = ""

  # Layer name for the IAM policy
  layer_name = "staging-us-west-1"

  # Module name for tracking
  module_name = "AWS IAM Policy"

  # Source of the IAM policy module
  source     = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_iam_policy?ref=main"
}

output "policy_arn" {
  # ARN of the created IAM policy
  value = module.aws_iam_policy.policy_arn
}

output "policy_id" {
  # ID of the created IAM policy
  value = module.aws_iam_policy.policy_id
}

output "policy_name" {
  # Name of the created IAM policy
  value = module.aws_iam_policy.policy_name
}