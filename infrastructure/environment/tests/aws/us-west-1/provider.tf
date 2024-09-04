provider "aws" {
  region = "us-west-1"

  allowed_account_ids = ["992382730686"]

  default_tags {
    tags = {
      environment_name = "tests"
      region           = "us-west-1"
      layer_name       = "tests-us-west-1"
      cluster          = "${module.k8scluster.k8s_cluster_name}"
    }
  }
}