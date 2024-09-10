provider "aws" {
  region = ""

  allowed_account_ids = [""]

  default_tags {
    tags = {
      environment_name = "staging"
      region = ""
      layer_name = "staging-"
    }
  }
}