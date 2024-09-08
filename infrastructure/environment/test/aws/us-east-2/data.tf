data "google_client_openid_userinfo" "me" {
}

data "google_container_cluster" "k8s" {
  name     = module.k8scluster.k8s_cluster_name
  location = "us-east-2"
}