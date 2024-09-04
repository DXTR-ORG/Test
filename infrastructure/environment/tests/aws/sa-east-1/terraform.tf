terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "tests-sa-east-1-tfstate"
    key            = "tests-sa-east-1.tfstate"
    region         = "sa-east-1"
    dynamodb_table = "tests-sa-east-1-tfstate"
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