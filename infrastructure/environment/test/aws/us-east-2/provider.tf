provider "helm" {
  kubernetes {
    host                   = "https://${data.k8scluster.k8s.endpoint}"
    cluster_ca_certificate = base64decode(module.k8scluster.k8s_ca_data)
    token                  = data.aws_eks_cluster_auth.k8s.token
  }
}

provider "aws" {
  region             = "us-east-2"
  allowed_account_ids = ["992382730686"]

  default_tags {
    tags = {
      environment_name = "test"
      region           = "us-east-2"
      layer_name       = "test-us-east-2"
      cluster          = module.k8scluster.k8s_cluster_name
    }
  }
}

# Documentation:
# - The Helm provider uses the Kubernetes provider to obtain connection details for the k8s cluster.
# - The AWS provider is configured for the us-east-2 region with allowed account IDs and default tags.
# - Replace placeholder values with actual required configurations.
# - Ensure that data sources and modules referenced exist in the Terraform configuration.