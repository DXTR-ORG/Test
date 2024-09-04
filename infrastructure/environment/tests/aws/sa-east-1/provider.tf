provider "aws" {
  region              = "sa-east-1"

  allowed_account_ids = [""]

  default_tags = {
    tags = {
      environment_name = "tests"
      region           = "sa-east-1"
      layer_name       = "tests-sa-east-1"
      cluster          = module.k8scluster.k8s_cluster_name
    }
  }
}