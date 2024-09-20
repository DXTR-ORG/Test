module "Staging" {
  # The Amazon Machine Image (AMI) type to use for nodes
  ami_type = "AL2_x86_64"

  # The name of the EKS cluster
  cluster_name = "test-ap-south-1"

  # Security groups for the EKS control plane
  control_plane_security_groups = []

  # Number of days to retain EKS logs
  eks_log_retention = 7

  # Enable or disable metrics collection
  enable_metrics = true

  # Environment name tag
  env_name = "test-ap-south-1"

  # Kubernetes version for the EKS cluster
  k8s_version = "1.29"

  # ARN of the KMS key for encryption
  kms_account_key_arn = module.aws_base.kms_account_key_arn

  # Layer name tag
  layer_name = "test-ap-south-1"

  # Maximum number of nodes in the node group
  max_nodes = 5

  # Minimum number of nodes in the node group
  min_nodes = 3

  # Module name for identification
  module_name = "Staging"

  # Disk size in GiB for the nodes
  node_disk_size = 20

  # Instance type for the nodes
  node_instance_type = "t3.medium"

  # Node launch template settings (empty here)
  node_launch_template = {}

  # IDs of private subnets
  private_subnet_ids = ["sd"]

  # Use spot instances or not
  spot_instances = false

  # VPC ID in which to create the resources
  vpc_id = "jkj"

  # Source path of the module to use
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
}

output "k8s_ca_data" {
  value = module.Staging.k8s_ca_data
}

output "k8s_cluster_name" {
  value = module.Staging.k8s_cluster_name
}

output "k8s_endpoint" {
  value = module.Staging.k8s_endpoint
}

output "k8s_node_group_security_id" {
  value = module.Staging.k8s_node_group_security_id
}

output "k8s_openid_provider_arn" {
  value = module.Staging.k8s_openid_provider_arn
}

output "k8s_openid_provider_url" {
  value = module.Staging.k8s_openid_provider_url
}

output "k8s_version" {
  value = module.Staging.k8s_version
}