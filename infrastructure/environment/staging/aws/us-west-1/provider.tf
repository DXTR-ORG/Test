provider "helm" {
  kubernetes {
    host                   = "https://${data.kubernetes_cluster.k8s.endpoint}"
    cluster_ca_certificate = base64decode(module.k8scluster.k8s_ca_data)
    token                  = data.aws_eks_cluster_auth.k8s.token
  }
}

provider "aws" {
  region               = "us-west-1"
  allowed_account_ids  = ["992382730686"]

  default_tags {
    tags = {
      environment_name = "staging"
      region           = "us-west-1"
      layer_name       = "staging-us-west-1"
      cluster          = module.k8scluster.k8s_cluster_name
    }
  }
}

# Documentation
# Terraform Providers Configuration
#
# Helm Provider:
# - Configures the Helm provider with Kubernetes authentication using EKS.
# - host: Kubernetes API server endpoint.
# - cluster_ca_certificate: Base64 decoded CA certificate data from the EKS module.
# - token: Authentication token retrieved from AWS EKS cluster auth data source.
#
# AWS Provider:
# - Configures the AWS provider for the region 'us-west-1'.
# - allowed_account_ids: List of allowed AWS account IDs.
# - default_tags: Common tags applied to all AWS resources created by this provider:
#   - environment_name: "staging"
#   - region: "us-west-1"
#   - layer_name: "staging-us-west-1"
#   - cluster: Name of the Kubernetes cluster from the EKS module.