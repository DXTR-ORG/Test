provider "aws" {
  region              = "ap-east-1"
  allowed_account_ids = ["AWS"]
  
  default_tags {
    tags = {
      environment_name = "tests"
      region           = "ap-east-1"
      layer_name       = "tests-ap-east-1"
      cluster          = "${module.k8scluster.k8s_cluster_name}"
    }
  }
}

# Documentation:
# This Terraform configuration sets up the AWS provider for the "ap-east-1" region
# with specific allowed account IDs and default tags including environment name,
# region, layer name, and cluster name fetched from another module.