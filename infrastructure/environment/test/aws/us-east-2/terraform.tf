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

# The above Terraform configuration does the following:
# 1. Ensures the Terraform version used is 1.3.0 or higher.
# 2. Configures the backend to use an S3 bucket for storing the Terraform state.
#    - The S3 bucket is named "test-us-east-2-tfstate".
#    - The state file will be stored with the key "test-us-east-2.tfstate".
#    - The S3 bucket is located in the "us-east-2" region.
#    - State file encryption is enabled.
# 3. Specifies the required providers:
#    - The AWS provider sourced from HashiCorp with version 5.62.0.
#    - The Helm provider sourced from HashiCorp with version 2.14.1.