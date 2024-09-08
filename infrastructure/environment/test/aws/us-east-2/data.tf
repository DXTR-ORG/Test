data "google_client_openid_userinfo" "me" {}

data "google_container_cluster" "k8s" {
  name     = module.k8scluster.k8s_cluster_name
  location = "us-east-2"
}

# This Terraform configuration retrieves the OpenID user information of the authenticated Google Cloud client and fetches details of a Google Kubernetes Engine (GKE) cluster in the specified location. The cluster name is sourced from the output of a separate module named `k8scluster`.