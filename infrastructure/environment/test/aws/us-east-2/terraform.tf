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

# This configuration sets the required Terraform version and S3 backend for remote state storage.
# It also specifies the required providers (aws and helm) along with their versions.