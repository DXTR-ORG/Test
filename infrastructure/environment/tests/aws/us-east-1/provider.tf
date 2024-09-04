provider "aws" {
  region = "us-east-1"

  allowed_account_ids = ["AWS"]

  default_tags {
    tags = {
      environment_name = "tests"
      region           = "us-east-1"
      layer_name       = "tests-us-east-1"
      cluster          = module.k8scluster.k8s_cluster_name
    }
  }
}

# The `provider` block sets the AWS provider with specific settings.
# - `region` specifies the AWS region.
# - `allowed_account_ids` restricts the accounts allowed to use this provider.
# - `default_tags` sets default tags on all resources managed by this provider.
#   - `tags` contains metadata such as `environment_name`, `region`, `layer_name`, and `cluster`.