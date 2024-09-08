data "google_client_openid_userinfo" "me" {}

data "google_container_cluster" "k8s" {
  name     = module.k8scluster.k8s_cluster_name
  location = "us-east-2"
}

# Data source to retrieve information about the current Google Cloud user using OpenID Connect
data "google_client_openid_userinfo" "me" {}

# Data source to retrieve information about a specific Google Kubernetes Engine (GKE) cluster
data "google_container_cluster" "k8s" {
  # The name of the GKE cluster, obtained from a separate module
  name     = module.k8scluster.k8s_cluster_name
  
  # The location (region or zone) where the GKE cluster is hosted
  location = "us-east-2"
}