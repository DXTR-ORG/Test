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
# - The `aws_caller_identity` data source is used to get details about the IAM user or role whose credentials are used to execute the Terraform configuration.
# - The `aws_region` data source retrieves the AWS region configured in the provider.
# - The `terraform_remote_state` data source fetches the remote state file from an S3 bucket.
# - The `aws_eks_cluster_auth` data source provides authentication information for connecting to an EKS cluster.
# - Replace "test-us-east-2-tfstate" with your actual bucket name, key, and region as appropriate for your setup.