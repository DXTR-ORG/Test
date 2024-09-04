provider "aws" {
  region              = "ap-northeast-3"
  allowed_account_ids = [""]

  default_tags {
    tags = {
      environment_name = "tests"
      region           = "ap-northeast-3"
      layer_name       = "tests-ap-northeast-3"
      cluster          = module.k8scluster.k8s_cluster_name
    }
  }
}