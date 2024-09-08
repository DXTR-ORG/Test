terraform {
  backend "local" {
    path = "./tfstate/cops.tfstate"
  }

  required_providers {
    gcp = {
      source  = "hashicorp/gcp"
      version = "4.27.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.6.0"
    }
  }
}