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

# Documentation:
# - `data "aws_caller_identity"`: Fetches information about the AWS account and caller identity.
# - `data "aws_region"`: Retrieves the AWS region from the current provider configuration.
# - `data "aws_eks_cluster_auth"`: Obtains authentication token for an EKS cluster. It uses the cluster name provided by the parent remote state.
# - `data "terraform_remote_state"`: Fetches Terraform remote state data from an S3 bucket. Configuration includes bucket name, key, region, DynamoDB table, and encryption settings.