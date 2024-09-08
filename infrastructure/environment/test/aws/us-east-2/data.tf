data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

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

data "aws_eks_cluster_auth" "k8s" {
  name = data.terraform_remote_state.parent.outputs.k8s_cluster_name
}

# This Terraform code defines several data sources:
# - "aws_caller_identity": fetches information about the AWS account invoking the Terraform code.
# - "aws_region": retrieves the AWS region in use.
# - "terraform_remote_state": fetches the state from a remote S3 backend.
# - "aws_eks_cluster_auth": retrieves authentication information for an EKS cluster using data from the remote state.