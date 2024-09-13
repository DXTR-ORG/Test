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