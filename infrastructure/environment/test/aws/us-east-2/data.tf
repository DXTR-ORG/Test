data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}

data "aws_eks_cluster_auth" "k8s" {
  name = data.terraform_remote_state.parent.outputs.k8s_cluster_name
}

data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket = "test-us-east-2-tfstate"
    key    = "test-us-east-2.tfstate"
    region = "us-east-2"
    encrypt = true
  }
}

# Documentation:
# This Terraform configuration defines several data sources:
# 1. `aws_caller_identity.provider`: Retrieves information about the AWS account associated with the credentials used by Terraform.
# 2. `aws_region.provider`: Retrieves the AWS region configured for the provider.
# 3. `aws_eks_cluster_auth.k8s`: Retrieves authentication configuration for an EKS cluster using the name specified by a remote state data source.
# 4. `terraform_remote_state.parent`: Refers to a remote Terraform state stored in an S3 bucket. Configuration includes the bucket name, key, region, and encryption setting.