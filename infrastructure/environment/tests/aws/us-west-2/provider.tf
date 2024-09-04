provider "aws" {
  region = "us-west-2"
  
  # Ensure that the allowed account IDs are specified correctly
  allowed_account_ids = ["123456789012"]

  default_tags {
    tags = {
      environment_name = "tests"
      region           = "us-west-2"
      layer_name       = "tests-us-west-2"
      cluster          = module.k8scluster.k8s_cluster_name
    }
  }
}