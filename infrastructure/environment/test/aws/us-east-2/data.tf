data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_eks_cluster_auth" "k8s" {
  name = module.k8scluster.k8s_cluster_name
}

# Documentation:
# This data block fetches information about the AWS account caller identity.
# data "aws_caller_identity" "current" {}

# This data block fetches information about the current AWS region.
# data "aws_region" "current" {}

# This data block fetches authentication credentials for the specified EKS cluster.
# The cluster name is sourced from a module output.
# data "aws_eks_cluster_auth" "k8s" {
#   name = module.k8scluster.k8s_cluster_name
# }