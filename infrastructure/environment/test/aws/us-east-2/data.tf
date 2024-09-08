data "google_client_openid_userinfo" "me" {}

data "google_container_cluster" "k8s" {
  name = module.k8scluster.k8s_cluster_name

  location = module.k8scluster.location
}

# The data "google_client_openid_userinfo" retrieves the OpenID Connect user information for the authenticated user.
# The data "google_container_cluster" fetches information about the specified GKE cluster.
# The 'name' parameter is set using the output variable 'k8s_cluster_name' from the 'k8scluster' module.
# The 'location' parameter is set using the output variable 'location' from the 'k8scluster' module.