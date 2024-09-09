
data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}


data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket = "staging-ap-south-1-tfstate"
    key    = "staging-ap-south-1-tfstate"
    region = "staging"
  }
}