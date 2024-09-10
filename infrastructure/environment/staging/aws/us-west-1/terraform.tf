terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket = "staging--tfstate"
    key    = "staging-.tfstate"
    region = "us-west-2" # Specify the AWS region
    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.62.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.14.1"
    }
  }
}

# Configuration:
# 1. The required Terraform version is 1.3.0 or greater.
# 2. Backend state is stored in an S3 bucket named "staging--tfstate" with the state file "staging-.tfstate".
# 3. The S3 bucket is in the "us-west-2" region and state encryption is enabled.
# 4. The AWS provider version 5.62.0 and Helm provider version 2.14.1 are required from the HashiCorp registry.