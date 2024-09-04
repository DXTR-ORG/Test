terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "tests-eu-central-2-tfstate"
    key            = "tests-eu-central-2.tfstate"
    region         = "eu-central-2"
    dynamodb_table = "tests-eu-central-2-tfstate"
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