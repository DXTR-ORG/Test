data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_eks_cluster_auth" "k8s" {
  name = module.k8scluster.k8s_cluster_name
}