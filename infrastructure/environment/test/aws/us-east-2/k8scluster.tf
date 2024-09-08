module "k8scluster" {
  # Machine image type for the EKS cluster nodes
  ami_type = "AL2_x86_64"
  
  # The name of the EKS cluster
  cluster_name = "ad"

  # Security groups for the control plane
  control_plane_security_groups = []

  # Log retention configuration
  eks_log_retention = "ada"

  # Enables or disables metrics collection
  enable_metrics = true

  # Kubernetes version for the EKS cluster
  k8s_version = "1.19"

  # Maximum number of nodes in the node group
  max_nodes = 15

  # Minimum number of nodes in the node group
  min_nodes = 3

  # Name of the module
  module_name = "k8scluster"

  # Disk size for each node
  node_disk_size = 20

  # Instance type for the nodes
  node_instance_type = "asd"

  # Configuration for node launch template
  node_launch_template = {}

  # Enable spot instances or not
  spot_instances = false

  # ARN of the KMS key used for encrypting data
  kms_account_key_arn = module.base.kms_account_key_arn

  # Private subnet IDs for the EKS cluster
  private_subnet_ids = module.base.private_subnet_ids

  # VPC ID for the EKS cluster
  vpc_id = module.base.vpc_id

  # Enable GPU support or not
  gpu = false

  # Source of the module to be used for EKS setup
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"

  # Environment name for the deployment
  env_name = "test-us-east-2"

  # Layer name for the deployment
  layer_name = "test-us-east-2"
}

output "k8s_endpoint" {
  value = module.k8scluster.k8s_endpoint
}

output "k8s_ca_data" {
  value = module.k8scluster.k8s_ca_data
}

output "k8s_cluster_name" {
  value = module.k8scluster.k8s_cluster_name
}

output "k8s_openid_provider_url" {
  value = module.k8scluster.k8s_openid_provider_url
}

output "k8s_openid_provider_arn" {
  value = module.k8scluster.k8s_openid_provider_arn
}

output "k8s_node_group_security_id" {
  value = module.k8scluster.k8s_node_group_security_id
}

output "k8s_version" {
  value = module.k8scluster.k8s_version
}