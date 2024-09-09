provider "aws" {
  region              = "us-west-1"
  allowed_account_ids = ["992382730686"]

  default_tags {
    tags = {
      environment_name = "staging"
      region           = "us-west-1"
      layer_name       = "staging-us-west-1"
    }
  }
}

# The provider block configures the specified provider, in this case, AWS.
# region specifies the AWS region to deploy resources, here it is us-west-1.
# allowed_account_ids restricts the account IDs that this Terraform configuration can work with.
# default_tags adds default tags to all resources created by Terraform under this configuration.