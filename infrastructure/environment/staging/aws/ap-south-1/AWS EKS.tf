module "AWS_EKS" {
  # Amazon Machine Image
  ami_type = "AL2_x86_64"

  # EKS Cluster name
  cluster_name = "ap-south-1"

  # Control Plane Security Groups
  control_plane_security_groups = []

  # EKS Log Retention (in days)
  eks_log_retention = 7

  # Enable Metrics (Environment name)
  enable_metrics = "staging-ap-south-1"

  # Environment name
  env_name = "staging-ap-south-1"

  # Kubernetes Version
  k8s_version = "1.21"

  # KMS Account Key ARN (Specify the ARN here)
  kms_account_key_arn = ""

  # Layer name
  layer_name = "staging-ap-south-1"

  # Maximum number of nodes
  max_nodes = 5

  # Minimum number of nodes
  min_nodes = 3

  # Module name
  module_name = "AWS EKS"

  # Node Disk Size (in GB)
  node_disk_size = 20

  # Node Instance Type
  node_instance_type = "t3.medium"

  # Node Launch Template (Specify the launch template here)
  node_launch_template = {}

  # Private Subnet IDs (Specify the subnet IDs here)
  private_subnet_ids = []

  # Use Spot Instances
  spot_instances = false

  # VPC ID (Specify the VPC ID here)
  vpc_id = ""

  # Source of the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
}