terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "tests-us-east-1-tfstate"
    key            = "tests-us-east-1.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tests-us-east-1-tfstate"
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