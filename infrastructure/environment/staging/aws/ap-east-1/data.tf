data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket = "staging-ap-east-1-tfstate"
    key    = "staging-ap-east-1.tfstate"
    region = "ap-east-1"
    encrypt = true
  }
}

data "aws_eks_cluster_auth" "k8s" {
  name = data.terraform_remote_state.parent.outputs.k8s_cluster_name
}

# Terraform Data Sources
# This file defines the data sources and configurations used to interact with AWS.

# 1. `aws_caller_identity`: Retrieves information about the IAM identity that is invoking the Terraform resources.
# 2. `aws_region`: Gets the region configuration of the AWS provider.
# 3. `terraform_remote_state`: Retrieves the remote state stored in the S3 bucket to access outputs from another Terraform configuration.
# 4. `aws_eks_cluster_auth`: Provides authentication information for connecting to an EKS cluster.