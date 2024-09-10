module "aws_eks" {
  ami_type                      = "AL2_x86_64"         # The AMI type for EKS nodes
  cluster_name                  = "ap-south-1"         # The name of the EKS cluster
  control_plane_security_groups = []                   # Security groups for Control Plane
  eks_log_retention             = 7                    # Log retention period for EKS logs
  enable_metrics                = "staging-ap-south-1" # Enable metrics for the specified environment
  env_name                      = "staging-ap-south-1" # Environment name
  k8s_version                   = "1.21"               # Kubernetes version
  kms_account_key_arn           = ""                   # ARN for KMS account key
  layer_name                    = "staging-ap-south-1" # Layer name
  max_nodes                     = 5                    # Maximum number of nodes
  min_nodes                     = 3                    # Minimum number of nodes
  module_name                   = "AWS EKS"            # Module name
  node_disk_size                = 20                   # Disk size for EKS nodes
  node_instance_type            = "t3.medium"          # Instance type for EKS nodes
  node_launch_template          = {}                   # Launch template for EKS nodes
  private_subnet_ids            = []                   # Private subnet IDs
  spot_instances                = false                # Use spot instances
  vpc_id                        = ""                   # VPC ID
  source                        = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main" # Source of the module
}