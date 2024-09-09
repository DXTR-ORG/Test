provider "aws" {
  region              = "us-east-2"
  allowed_account_ids = ["992382730686"]

  default_tags {
    tags = {
      environment_name = "test"
      region           = "us-east-2"
      layer_name       = "test-us-east-2"
    }
  }
}

# The provider block configures the specified cloud provider.
# region: The AWS region to deploy resources in.
# allowed_account_ids: List of allowed AWS account IDs for this provider.
# default_tags: Default tags to assign to all resources created with this provider.
# - environment_name: Specifies the environment (e.g., test).
# - region: The associated AWS region.
# - layer_name: The layer name associated with this configuration.