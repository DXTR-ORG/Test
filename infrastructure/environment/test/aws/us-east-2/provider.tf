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

# Providers Configuration
# This section specifies the provider details for AWS.
# - region: Specifies the AWS region to use.
# - allowed_account_ids: The list of allowed AWS account IDs.

# Default Tags
# This block sets default tags for every resource created by this provider.
# - environment_name: Tag to identify the environment.
# - region: Tag to specify the region.
# - layer_name: Custom tag to identify the specific layer.