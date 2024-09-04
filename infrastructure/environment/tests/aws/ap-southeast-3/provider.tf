provider "helm" {
  kubernetes {
    host = "https://${data.google_container_cluster.k8s.endpoint}"
    cluster_ca_certificate = "${base64decode(module.k8scluster.k8s_ca_data)}"
    token = "${data.google_client_openid_userinfo.me.token}"
  }
}

provider "google" {
  region  = "ap-southeast-3"
  project = "AWS"
}

# Documentation:
# This Terraform configuration sets up two providers: Helm and Google.
# The Helm provider is configured to use a Kubernetes cluster endpoint, CA certificate data, 
# and token retrieved from Google services. 
# The Google provider is configured to operate in the ap-southeast-3 region with the project named "AWS".