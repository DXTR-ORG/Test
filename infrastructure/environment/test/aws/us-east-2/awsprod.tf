module "awsprod" {
  env_name           = "test-us-east-2"

  extra_iam_policies = []

  iam_policy         = "asd"

  layer_name         = "test-us-east-2"

  links              = "asd"

  module_name        = "awsprod"

  source             = "git::git@github.com:thesaas-company/cops-worker.git//..\check\terraform\aws_iam_user\?ref=Main"
}

output "user_arn" {
  value = module.awsprod.user_arn
}