data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}

data "aws_eks_cluster_auth" "k8s" {
  name = module.k8scluster.k8s_cluster_name
}

# Data block to retrieve details about the AWS account caller identity
data "aws_caller_identity" "provider" {}

# Data block to retrieve the current AWS region
data "aws_region" "provider" {}

# Data block for EKS cluster authentication using the cluster name from the k8scluster module
data "aws_eks_cluster_auth" "k8s" {
  name = module.k8scluster.k8s_cluster_name
}