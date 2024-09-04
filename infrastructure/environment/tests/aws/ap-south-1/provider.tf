provider "helm" {
  kubernetes {
    host                   = "https://${data.google_container_cluster.k8s.endpoint}"
    cluster_ca_certificate = base64decode(module.k8scluster.k8s_ca_data)
    token                  = data.google_client_openid_userinfo.me.token
  }
}

provider "google" {
  region  = "ap-south-1"
  project = "<YOUR_PROJECT_ID>"
}

# Documentation:
# Provider "helm" is configured to interact with a Kubernetes cluster.
# host - The Kubernetes cluster endpoint.
# cluster_ca_certificate - The Kubernetes cluster CA certificate decoded from base64.
# token - The token for authentication with the Kubernetes cluster.

# Provider "google" is configured to interact with Google Cloud services.
# region - The region for the Google Cloud services.
# project - The identifier of the Google Cloud project.