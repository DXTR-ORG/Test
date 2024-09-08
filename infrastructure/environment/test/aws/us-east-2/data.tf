data "google_client_openid_userinfo" "me" {}

data "google_container_cluster" "k8s" {
  name     = module.k8scluster.k8s_cluster_name
  location = "us-east1"
}

# Data source to retrieve user information from Google OpenID Connect
# This resource fetches the OpenID Connect information for the authenticated user

# Data source to retrieve GCP Kubernetes Cluster information
# This fetches information about a GKE cluster specified by the name and location