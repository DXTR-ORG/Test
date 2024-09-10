provider "aws" {
  region              = "ap-east-1"
  allowed_account_ids = ["992382730686"]

  default_tags {
    tags = {
      environment_name = "staging"
      region           = "ap-east-1"
      layer_name       = "staging-ap-east-1"
    }
  }
}