terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket  = "test-us-east-2-tfstate"
    key     = "test-us-east-2.tfstate"
    region  = "us-east-2"
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

# Terraform Configuration for S3 Backend and Providers
# 
# Ensures Terraform version is 1.3.0 or higher.
# Configures S3 backend for storing Terraform state with encryption.
# Specifies required providers (AWS and Helm) with their versions.