module "defaultRole_copy" {
  allowed_iams = []

  allowed_k8s_services = {
    namespace     = "*"
    service_name  = "*"
  }

  env_name = "staging-ap-south-1"

  extra_iam_policies = ["arn:aws:iam::aws:policy/CloudWatchEventsFullAccess"]

  iam_policy = "sd"

  kubernetes_trusts = {
    namespace     = "*"
    service_name  = "*"
    open_id_url   = ""
    open_id_arn   = ""
  }

  layer_name = "staging-ap-south-1"

  links = []

  module_name = "defaultRole_copy"

  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_iam_role?ref=main"
}

output "role_arn" {
  value = module.defaultRole_copy.role_arn
}