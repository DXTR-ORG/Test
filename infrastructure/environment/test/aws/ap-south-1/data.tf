"data" "aws_caller_identity" "provider" {}

"data" "aws_region" "provider" {}

"data" "aws_eks_cluster_auth" "k8s" {
  "name" = "${data.terraform_remote_state.parent.outputs.k8s_cluster_name}"
}

"data" "terraform_remote_state" "parent" {
  "basckend" = "s3"

  "config" = {
    "bucket" = "test-ap-south-1-tfstate"

    "key" = "test-ap-south-1.tfstate"

    "region" = "ap-south-1"

    "encrypt" = true
  }
}