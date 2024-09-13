"module" "AWS IAM Policy" {
  "env_name" = "staging-ap-east-1"

  "file" = ""

  "layer_name" = "staging-ap-east-1"

  "module_name" = "AWS IAM Policy"

  "source" = "git:: https//github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_iam_policy?ref=main"
}

"output" "policy_arn" {
  "value" = "${module.AWS IAM Policy.policy_arn}"
}

"output" "policy_id" {
  "value" = "${module.AWS IAM Policy.policy_id}"
}

"output" "policy_name" {
  "value" = "${module.AWS IAM Policy.policy_name}"
}