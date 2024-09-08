data "google_client_openid_userinfo" "me" {}

data "google_container_cluster" "k8s" {
  name     = module.k8scluster.k8s_cluster_name
  location = "us-central1" # Example location, replace with the correct region
}

# Data resource to fetch the OpenID user information for the authenticated client
data "google_client_openid_userinfo" "me" {}

# Data resource to fetch details of a specific GKE (Google Kubernetes Engine) cluster
data "google_container_cluster" "k8s" {
  name     = module.k8scluster.k8s_cluster_name  # Cluster name retrieved from a module output
  location = "us-central1"   # Location of the GKE cluster, replace with the correct region
}