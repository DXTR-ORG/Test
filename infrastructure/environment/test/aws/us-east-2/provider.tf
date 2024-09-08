provider "helm" {
  kubernetes {
    host                   = "https://${data.k8scluster.k8s.endpoint}"
    cluster_ca_certificate = base64decode(module.k8scluster.k8s_ca_data)
    token                  = "${data.aws_eks_cluster_auth.k8s.token}"
  }
}

provider "aws" {
  region               = "us-east-2"
  allowed_account_ids  = ["992382730686"]
  
  default_tags {
    tags = {
      environment_name = "test"
      region           = "us-east-2"
      layer_name       = "test-us-east-2"
      cluster          = "${module.k8scluster.k8s_cluster_name}"
    }
  }
}