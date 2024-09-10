module "AWS_EKS" {
  # Specify the AMI type
  ami_type = "AL2_x86_64"

  # Name of the EKS cluster
  cluster_name = "ap-south-1"

  # Security groups for the control plane
  control_plane_security_groups = []

  # Log retention period in days
  eks_log_retention = 7

  # Enable metrics
  enable_metrics = "staging-ap-south-1"

  # Environment name
  env_name = "staging-ap-south-1"

  # Kubernetes version
  k8s_version = "1.21"

  # KMS Key ARN for encrypting secrets (replace with actual ARN or remove if not used)
  kms_account_key_arn = ""

  # Name of the layer
  layer_name = "staging-ap-south-1"

  # Maximum number of nodes
  max_nodes = 5

  # Minimum number of nodes
  min_nodes = 3

  # Module name
  module_name = "AWS EKS"

  # Disk size for the nodes
  node_disk_size = 20

  # Instance type for the nodes
  node_instance_type = "t3.medium"

  # Launch template for the nodes (replace with actual template ID or remove if not used)
  node_launch_template = {}

  # List of private subnet IDs (replace with actual subnet IDs or remove if not used)
  private_subnet_ids = []

  # Use spot instances or not
  spot_instances = false

  # VPC ID (replace with actual VPC ID or remove if not used)
  vpc_id = ""

  # Source of the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
}