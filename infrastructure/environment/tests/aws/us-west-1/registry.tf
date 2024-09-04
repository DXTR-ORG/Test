terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "tests-us-west-1-tfstate" # S3 bucket name for storing the Terraform state file
    key            = "tests-us-west-1.tfstate" # Key (path) for the state file within the S3 bucket
    region         = "us-west-1"               # AWS region of the S3 bucket
    dynamodb_table = "tests-us-west-1-tfstate" # DynamoDB table for state locking and consistency
    encrypt        = true                      # Encrypt the state file at rest
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"                # Source of the AWS provider plugin
      version = "~> 5.62"                      # Version constraint for the AWS provider
    }

    helm = {
      source  = "hashicorp/helm"               # Source of the Helm provider plugin
      version = "~> 2.14"                      # Version constraint for the Helm provider
    }
  }
}

# This Terraform configuration sets up:
# - Required Terraform version
# - Backend configuration for state storage in an S3 bucket with state locking via DynamoDB
# - Required providers for AWS and Helm, specifying their versions and sources.