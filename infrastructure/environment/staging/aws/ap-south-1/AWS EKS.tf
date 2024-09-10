module "aws_eks" {
  # Type of AMI to use for the EKS nodes
  ami_type = "AL2_x86_64"

  # Name of the EKS cluster
  cluster_name = "ap-south-1"

  # Security groups for the EKS control plane
  control_plane_security_groups = []

  # Log retention period for EKS logs (in days)
  eks_log_retention = 7

  # Environment name for metrics
  enable_metrics = "staging-ap-south-1"

  # Identifier for the environment
  env_name = "staging-ap-south-1"

  # Kubernetes version for the EKS cluster
  k8s_version = "1.21"

  # ARN of the KMS account key for encryption
  kms_account_key_arn = ""

  # Layer name for the EKS cluster
  layer_name = "staging-ap-south-1"

  # Maximum number of nodes in the EKS cluster
  max_nodes = 5

  # Minimum number of nodes in the EKS cluster
  min_nodes = 3

  # Name of the module
  module_name = "AWS EKS"

  # Disk size for each EKS node (in GB)
  node_disk_size = 20

  # Instance type for the EKS nodes
  node_instance_type = "t3.medium"

  # Launch template for the EKS nodes
  node_launch_template = {}

  # IDs of the private subnets
  private_subnet_ids = []

  # Use spot instances or not
  spot_instances = false

  # VPC ID for the EKS cluster
  vpc_id = ""

  # Source of the EKS module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
}