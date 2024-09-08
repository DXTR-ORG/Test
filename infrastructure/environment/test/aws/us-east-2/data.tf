data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}

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

# Documentation:
# The aws_caller_identity data source retrieves information about the AWS account and user executing the Terraform code.
# The aws_region data source retrieves the current AWS region.
# The terraform_remote_state data source retrieves the state file from an S3 bucket.
# The aws_eks_cluster_auth data source retrieves the authentication token for the EKS cluster specified.