provider "aws" {
  region              = "us-east-2"
  allowed_account_ids = ["992382730686"]

  default_tags {
    tags = {
      environment_name = "new"
      region           = "us-east-2"
      layer_name       = "new-us-east-2"
    }
  }
}

# The `provider` block configures the specified provider, in this case, AWS.
# - `region` specifies the AWS region, us-east-2.
# - `allowed_account_ids` is a list of allowed AWS account IDs.
# - `default_tags` assigns default tags to all AWS resources managed by this provider.
# The nested `tags` block includes:
#   - `environment_name`: Logical name of the environment.
#   - `region`: AWS region for reference.
#   - `layer_name`: Descriptive name for the layer or tier.