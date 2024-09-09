data "aws_caller_identity" "provider" {
}

data "aws_region" "provider" {
}

data "aws_eks_cluster_auth" "k8s" {
  name = data.terraform_remote_state.parent.outputs.k8s_cluster_name
}

data "terraform_remote_state" "parent" {
  backend = "s3"
  
  config = {
    bucket = "staging-ap-south-1-tfstate"
    key    = "staging-ap-south-1.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}

# Documentation:

# data "aws_caller_identity" "provider":
# This data source retrieves information about the AWS account
# currently connected to the provider. It's often used to obtain
# the AWS account ID.

# data "aws_region" "provider":
# This data source retrieves information about the AWS region
# currently connected to the provider.

# data "aws_eks_cluster_auth" "k8s":
# This data source retrieves authentication information for
# the specified EKS cluster. It uses the cluster name output
# from the parent remote state.

# data "terraform_remote_state" "parent":
# This data source retrieves information from the remote state
# file stored in an S3 bucket. The 'config' block specifies the
# bucket name, key for the state file, region where the bucket
# is located, and whether the state file is encrypted.