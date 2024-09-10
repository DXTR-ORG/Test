module "AWS_EKS" {
  ami_type                      = "AL2_x86_64"
  cluster_name                  = "check"
  control_plane_security_groups = []
  eks_log_retention             = 7
  enable_metrics                = "sdfsd"
  env_name                      = "staging-us-west-1"
  k8s_version                   = "1.21"
  kms_account_key_arn           = "gfhd"
  layer_name                    = "staging-us-west-1"
  max_nodes                     = 5
  min_nodes                     = 3
  module_name                   = "AWS EKS"
  node_disk_size                = 20
  node_instance_type            = "t3.medium"
  node_launch_template          = {}
  private_subnet_ids            = "dfgdf"
  spot_instances                = false
  vpc_id                        = "sdfg"
  source                        = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"
}

output "example_output" {
  value = module.AWS_EKS.example_output
}

# Module Configuration:
# module "AWS_EKS":
# - ami_type: The AMI type for the EKS nodes. Default is "AL2_x86_64".
# - cluster_name: The name of the EKS cluster.
# - control_plane_security_groups: A list of security groups to attach to the EKS control plane.
# - eks_log_retention: Number of days to retain EKS logs. Default is 7.
# - enable_metrics: Enable or disable metrics. Value seems incorrect, ensure it is a boolean or valid option.
# - env_name: The environment name, used for tagging.
# - k8s_version: Kubernetes version to use for the cluster. Example "1.21".
# - kms_account_key_arn: The ARN of the AWS KMS key to use with EKS.
# - layer_name: The name for the layer, used for tagging.
# - max_nodes: Maximum number of nodes in the node group.
# - min_nodes: Minimum number of nodes in the node group.
# - module_name: The name of the module instance.
# - node_disk_size: Disk size for the EKS worker nodes.
# - node_instance_type: The instance type for nodes in the EKS cluster.
# - node_launch_template: The launch template for nodes.
# - private_subnet_ids: Subnet IDs for EKS nodes.
# - spot_instances: Use spot instances if true.
# - vpc_id: The VPC ID where EKS cluster will be deployed.
# - source: Source URL of the module.

# Output Configuration:
# output "example_output":
# - value: Replace with the actual output from the module.