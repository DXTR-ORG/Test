terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "test-us-east-2-tfstate"
    key            = "Serviceasd"
    region         = "us-east-2"
    dynamodb_table = "test-us-east-2-tfstate"
    encrypt        = true
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

# This Terraform configuration specifies a required Terraform version of 1.3.0 or greater.
# It also sets up the backend to use Amazon S3 for the Terraform state storage,
# and locks the state file with a DynamoDB table. Encryption for the S3 bucket is enabled.
# Additionally, it specifies required providers and their versions for AWS and Helm.