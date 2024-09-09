module "aws_eks" {
  # AMI type to use for worker nodes
  ami_type = "AL2_x86_64"

  # Name of the EKS cluster
  cluster_name = "ap-south-1"

  # Security groups attached to the EKS control plane
  control_plane_security_groups = []

  # Retention time for EKS logs in CloudWatch (in days)
  eks_log_retention = 7

  # Enable metrics for the cluster
  enable_metrics = "test-ap-south-1"

  # Environment name
  env_name = "test-ap-south-1"

  # Kubernetes version to use for the EKS cluster
  k8s_version = "1.21"

  # ARN of the KMS key for cluster secrets encryption
  kms_account_key_arn = "" # Provide the KMS Key ARN

  # Layer name for the EKS cluster
  layer_name = "test-ap-south-1"

  # Maximum number of worker nodes in the cluster
  max_nodes = 5

  # Minimum number of worker nodes in the cluster
  min_nodes = 3

  # Module name
  module_name = "AWS EKS"

  # Disk size for each worker node (in GB)
  node_disk_size = 20

  # Instance type for the worker nodes
  node_instance_type = "t3.medium"

  # Custom launch template for the worker nodes
  node_launch_template = {}

  # Private subnet IDs for the EKS worker nodes
  private_subnet_ids = [] # Provide the subnet IDs

  # Enable the use of spot instances for worker nodes
  spot_instances = false

  # VPC ID of the network to launch the cluster in
  vpc_id = "" # Provide the VPC ID

  # Source location of the Terraform module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
}