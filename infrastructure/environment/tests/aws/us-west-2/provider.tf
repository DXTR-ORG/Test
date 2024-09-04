provider "aws" {
  region               = "us-west-2"
  allowed_account_ids  = [""]
  
  default_tags {
    tags = {
      environment_name = "tests"
      region           = "us-west-2"
      layer_name       = "tests-us-west-2"
      cluster          = module.k8scluster.k8s_cluster_name
    }
  }
}

# The provider block configures the specified provider (aws in this case).
# - region: The AWS region to operate in.
# - allowed_account_ids: List of allowed AWS account IDs.
# - default_tags: Tags to apply to all resources managed by this provider.
#     - environment_name: Name of the environment.
#     - region: AWS region.
#     - layer_name: Name identifier for the deployment layer.
#     - cluster: Cluster name fetched from the k8scluster module.