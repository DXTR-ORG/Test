module "aws_eks" {
  # The AMI type for the instances in the EKS cluster
  ami_type = "AL2_x86_64"

  # Name of the EKS cluster
  cluster_name = "ap-south-1"

  # Security groups for the control plane
  control_plane_security_groups = []

  # Log retention period for EKS logs, in days
  eks_log_retention = 7

  # Enable metrics for monitoring (set to the environment name)
  enable_metrics = "staging-ap-south-1"

  # Environment name
  env_name = "staging-ap-south-1"

  # Kubernetes version for the EKS cluster
  k8s_version = "1.21"

  # (Optional) KMS account key ARN for encrypting EKS data
  kms_account_key_arn = ""

  # Name of the layer (typically the environment name)
  layer_name = "staging-ap-south-1"

  # Maximum number of nodes in the node group
  max_nodes = 5

  # Minimum number of nodes in the node group
  min_nodes = 3

  # Name of the Terraform module
  module_name = "AWS EKS"

  # Size of the disk for each node, in GB
  node_disk_size = 20

  # Instance type for the worker nodes
  node_instance_type = "t3.medium"

  # Launch template for the nodes (can be an empty map if not used)
  node_launch_template = {}

  # List of private subnet IDs where worker nodes will be launched
  private_subnet_ids = []

  # Boolean indicating whether to use spot instances
  spot_instances = false

  # VPC ID where the EKS cluster and nodes will be deployed
  vpc_id = ""

  # Source URL for the Terraform module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
}