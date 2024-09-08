data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}

data "aws_eks_cluster_auth" "k8s" {
  name = data.terraform_remote_state.parent.outputs.k8s_cluster_name
}

data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket         = "test-us-east-2-tfstate"
    key            = "test-us-east-2.tfstate"
    region         = "us-east-2"
    dynamodb_table = "test-us-east-2-tfstate"
    encrypt        = true
  }
}