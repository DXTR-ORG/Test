provider "aws" {
  region               = "ap-south-1"
  allowed_account_ids  = []

  default_tags {
    tags = {
      environment_name = "tests"
      region           = "ap-south-1"
      layer_name       = "tests-ap-south-1"
      cluster          = module.k8scluster.k8s_cluster_name
    }
  }
}