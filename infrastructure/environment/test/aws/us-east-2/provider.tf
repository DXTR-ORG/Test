provider "aws" {
  region = "us-east-2"

  allowed_account_ids = ["992382730686"]

  default_tags {
    tags = {
      environment_name = "test"
      region           = "us-east-2"
      layer_name       = "test-us-east-2"
    }
  }
}

# This block configures the AWS provider with:
# - The region us-east-2
# - Restricting to the specified account ID
# - Applying default tags to all resources created using this provider instance