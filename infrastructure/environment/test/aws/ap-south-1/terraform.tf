terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket = "test-ap-south-1-tfstate"
    key    = "test-ap-south-1.tfstate"
    region = "ap-south-1"
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

# The above Terraform configuration does the following:
# 1. Specifies the minimum required Terraform version to be 1.3.0.
# 2. Configures the S3 backend to store the Terraform state:
#    - bucket: Name of the S3 bucket.
#    - key: Path within the bucket where the state file will be stored.
#    - region: AWS region where the bucket is located.
#    - encrypt: Defines whether the state should be encrypted at rest.
# 3. Specifies the required providers ("aws" and "helm") and their respective versions and sources.