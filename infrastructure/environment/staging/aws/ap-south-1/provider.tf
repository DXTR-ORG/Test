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