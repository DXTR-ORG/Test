terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "tests-us-west-1-tfstate"
    key            = "tests-us-west-1.tfstate"
    region         = "us-west-1"
    dynamodb_table = "tests-us-west-1-tfstate"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.62"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.14"
    }
  }
}

# Terraform configuration that sets up the required version, backend configuration for state storage in S3, and required providers for AWS and Helm.
# The backend configuration stores the state file in an S3 bucket with DynamoDB for state locking and state consistency.
# The AWS provider is sourced from HashiCorp and the Helm provider is used to manage Kubernetes packages.