terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket  = "new-us-east-2-tfstate"
    key     = "new-us-east-2.tfstate"
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

# This configuration sets up the required version of Terraform and defines the
# S3 backend with specific parameters such as bucket name, key, region, and encryption.
# Additionally, it specifies the required providers for AWS and Helm, along with their respective versions.