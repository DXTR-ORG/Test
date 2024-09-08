data "aws_caller_identity" "provider" {}

data "aws_region" "current" {}

data "aws_eks_cluster_auth" "k8s" {
  name = module.k8scluster.k8s_cluster_name
}

# Data source to get the AWS account information of the provider
data "aws_caller_identity" "provider" {}

# Data source to fetch the current AWS region
data "aws_region" "current" {}

# Data source to get the authentication details for the EKS cluster
data "aws_eks_cluster_auth" "k8s" {
  name = module.k8scluster.k8s_cluster_name
}