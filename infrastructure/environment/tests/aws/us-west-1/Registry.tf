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

# Terraform configuration to:
# - Set the required Terraform version
# - Configure the S3 backend for state file storage with state locking via DynamoDB
# - Specify required providers:
#   - AWS provider from HashiCorp at version ~> 5.62
#   - Helm provider from HashiCorp at version ~> 2.14