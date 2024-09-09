terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket  = "sdsd-us-west-1-tfstate"
    key     = "sdsd-us-west-1.tfstate"
    region  = "us-west-1"
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

# The Terraform block sets the required version of Terraform,
# configures the backend to use Amazon S3 for state storage,
# and specifies the required providers with their versions.