data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}

data "aws_eks_cluster_auth" "k8s" {
  name = module.k8scluster.k8s_cluster_name
}

# Fetches details about the IAM identity that is making the AWS request.
# This data source is useful to identify the AWS account details such as Account ID, ARN, and User ID.

# Fetches the region information in which the infrastructure is being provisioned.
# Useful for obtaining the region name dynamically.

# Fetches authentication information for an EKS cluster.
# `name` is the name of the EKS cluster for which we need the authentication info.
# This data source is necessary for authenticating with the cluster using kubectl and other Kubernetes tools.