terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket = "test-us-east-2-tfstate"
    key    = "test-us-east-2.tfstate"
    region = "us-east-2"
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

# This Terraform configuration defines the required version of Terraform,
# configures the S3 backend for storing the state file,
# and specifies the required providers with their respective sources and versions.