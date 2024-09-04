provider "aws" {
  region              = "eu-central-2"
  allowed_account_ids = [""]

  default_tags {
    tags = {
      environment_name = "tests"
      region           = "eu-central-2"
      layer_name       = "tests-eu-central-2"
      cluster          = module.k8scluster.k8s_cluster_name
    }
  }
}