module "aws_eks" {
  ami_type                       = "AL2_x86_64"
  cluster_name                   = "TSC_REGION_NAME"
  control_plane_security_groups  = []
  eks_log_retention              = 7
  enable_metrics                 = "TSC_ENVIRONMENT_NAME-TSC_REGION_NAME"
  env_name                       = "TSC_ENVIRONMENT_NAME-TSC_REGION_NAME"
  k8s_version                    = "1.21"
  kms_account_key_arn            = ""  # Add the value here
  layer_name                     = "TSC_ENVIRONMENT_NAME-TSC_REGION_NAME"
  max_nodes                      = 5
  min_nodes                      = 3
  module_name                    = "AWS EKS"
  node_disk_size                 = 20
  node_instance_type             = "t3.medium"
  node_launch_template           = {}
  private_subnet_ids             = []  # Add the values here
  spot_instances                 = false
  vpc_id                         = ""  # Add the value here
  source                         = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
}

output "k8s_ca_data" {
  value = module.aws_eks.k8s_ca_data
}

output "k8s_cluster_name" {
  value = module.aws_eks.k8s_cluster_name
}

output "k8s_endpoint" {
  value = module.aws_eks.k8s_endpoint
}

output "k8s_node_group_security_id" {
  value = module.aws_eks.k8s_node_group_security_id
}

output "k8s_openid_provider_arn" {
  value = module.aws_eks.k8s_openid_provider_arn
}

output "k8s_openid_provider_url" {
  value = module.aws_eks.k8s_openid_provider_url
}

output "k8s_version" {
  value = module.aws_eks.k8s_version
}