data "google_client_openid_userinfo" "me" {}

data "google_container_cluster" "k8s" {
  name     = module.k8scluster.k8s_cluster_name
  location = "us-east1"
}

# This data source retrieves the OpenID Connect user info for the active Google Cloud credentials.
# data "google_client_openid_userinfo" "me" {}

# This data source retrieves information about a Google Kubernetes Engine (GKE) cluster.
# Inputs:
# - `name`: The name of the GKE cluster, fetched from the output of the `k8scluster` module.
# - `location`: The location/region of the GKE cluster.
# data "google_container_cluster" "k8s" {
#   name     = module.k8scluster.k8s_cluster_name
#   location = "us-east1"
# }