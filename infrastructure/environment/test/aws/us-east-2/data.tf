data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_eks_cluster_auth" "k8s" {
  name = module.k8scluster.k8s_cluster_name
}

# The aws_caller_identity data source retrieves information about the AWS account that is currently in use.
# The aws_region data source retrieves the region information from the provider's configuration.
# The aws_eks_cluster_auth data source retrieves authentication information for the specified EKS cluster using the cluster name from the 'k8scluster' module.