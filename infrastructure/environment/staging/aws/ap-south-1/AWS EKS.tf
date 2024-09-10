module "AWS_EKS" {
  # Type of Amazon Machine Image (AMI) for the nodes
  ami_type = "AL2_x86_64"

  # Name of the EKS cluster
  cluster_name = "ap-south-1"

  # Security groups associated with the EKS control plane
  control_plane_security_groups = []

  # Number of days to retain EKS logs
  eks_log_retention = 7

  # Metrics enabled for the EKS cluster
  enable_metrics = "staging-ap-south-1"

  # Environment name
  env_name = "staging-ap-south-1"

  # Kubernetes version for the EKS cluster
  k8s_version = "1.21"

  # KMS account key ARN for EKS encryption (replace with actual ARN)
  kms_account_key_arn = ""

  # Name of the layer
  layer_name = "staging-ap-south-1"

  # Maximum number of nodes in the EKS cluster
  max_nodes = 5

  # Minimum number of nodes in the EKS cluster
  min_nodes = 3

  # Module name
  module_name = "AWS_EKS"

  # Disk size for the nodes in GB
  node_disk_size = 20

  # Instance type for the nodes
  node_instance_type = "t3.medium"

  # Launch template for the nodes
  node_launch_template = {}

  # Private subnet IDs for the VPC (replace with actual subnet IDs)
  private_subnet_ids = []

  # Enable or disable spot instances
  spot_instances = false

  # ID of the VPC (replace with actual VPC ID)
  vpc_id = ""

  # Source of the Terraform module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
}