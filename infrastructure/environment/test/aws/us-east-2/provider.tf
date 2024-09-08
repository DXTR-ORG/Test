provider "helm" {
  kubernetes {
    host = "https://${data.google_container_cluster.k8s.endpoint}"
    cluster_ca_certificate = "${base64decode(module.k8scluster.k8s_ca_data)}"
    token = "${data.google_client_openid_userinfo.me.token}"
  }
}

provider "google" {
  region  = "us-east-2"
  project = "test-us-east-2"
}